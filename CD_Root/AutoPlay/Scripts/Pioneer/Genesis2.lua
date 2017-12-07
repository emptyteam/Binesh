function Binesh.Genesis2(NamePersian, Symbol, Pre, PrePersian, PreValue, Unit, UnitPersian, isDelta, SearchFirst1, SearchFirst2, isUnit)
	Binesh.Join(NamePersian);
	UnitPersian = String.Replace(UnitPersian, "»Â", "»—");
	Binesh.Join(UnitPersian);
	if SearchFirst1 ~= nil then
		Binesh.Join(SearchFirst1);
	else
		SearchFirst1 = ""
	end
	
	if SearchFirst2 ~= nil then
		Binesh.Join(SearchFirst2);
	else
		SearchFirst2 = ""
	end
	
	if isUnit == nil then
		isUnit = true
	end
	
	function FindNumber(Find)
		CountWords = ListBox.GetCount("Words");
		for index = 1, Find do
			TextNumber = ListBox.GetItemText("Words", index);
			Number = tonumber(TextNumber)
			if Number ~= nil then
				if isUnit == true then
					text = ListBox.GetItemText("Words", index+1);
					if String.Find(text, Unit, 1, true) ~= -1 or String.Find(text, UnitPersian, 1, false) ~= -1 then
						if String.Length(text) == String.Length(Unit) or String.Length(text) == String.Length(UnitPersian) then
							Number = Number/PreValue
							
							ListBox.DeleteItem("Words", Find); -- Delete NamePersian or Symbol
							ListBox.DeleteItem("Words", index+1); -- Delete Unit
							ListBox.DeleteItem("Words", index); -- Delete Number
							return Number
						end
					end
					
					for indexPre = 1, Table.Count(Pres.Value) do
						if text == Pres.NameFA[indexPre] or text == Pres.Symbol[indexPre] then
							textUnit = ListBox.GetItemText("Words", index+2);
							if String.Find(textUnit, Unit, 1, true) ~= -1 or String.Find(textUnit, UnitPersian, 1, false) ~= -1 then
								if String.Length(textUnit) == String.Length(Unit) or String.Length(textUnit) == String.Length(UnitPersian) then
									Number = (Number*Pres.Value[indexPre])/PreValue
									
									ListBox.DeleteItem("Words", Find); -- Delete NamePersian or Symbol
									ListBox.DeleteItem("Words", index+2); -- Delete Pre
									ListBox.DeleteItem("Words", index+1); -- Delete Unit
									ListBox.DeleteItem("Words", index); -- Delete Number
									return Number
								end
							end
						end
					end
				else
					Number = Number/PreValue
					
					ListBox.DeleteItem("Words", Find); -- Delete NamePersian or Symbol
					ListBox.DeleteItem("Words", index); -- Delete Number
					return Number
				end -- isUnit
			end -- to number
		end -- for: number
	end -- function
	
	if SearchFirst1 == "" then
		if isDelta == false then
			FindNameFA = ListBox.FindItem("Words", -1, LB_BYTEXT, NamePersian);
			FindSymbol = ListBox.FindItem("Words", -1, LB_BYTEXT, Symbol);
			if FindNameFA ~= -1 or FindSymbol ~= -1 then
				if FindNameFA ~= -1 then
					Find = FindNameFA
					Number = FindNumber(Find)
					return Number
				elseif FindSymbol ~= -1 then
					Find = FindSymbol
					Number = FindNumber(Find)
					return Number
				end
			end -- find
		elseif isDelta == true then
			Binesh.Join(' €ÌÌ— '..NamePersian);
			Binesh.Join('«Ê·Ì‰ '..NamePersian);
			Binesh.Join('œÊ„Ì‰ '..NamePersian);
			
			Binesh.Join(NamePersian..'  €ÌÌ—');
			Binesh.Join(NamePersian..' «Ê·Ì‰');
			Binesh.Join(NamePersian..' œÊ„Ì‰');
			
			FindDelta = ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— "..NamePersian);
			FindFirst = ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ "..NamePersian);
			FindSecond = ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ "..NamePersian);
			
			if FindDelta == -1 then
				FindDelta = ListBox.FindItem("Words", -1, LB_BYTEXT, NamePersian.."  €ÌÌ—");
				if FindDelta ~= -1 then
					ListBox.SetItemText("Words", FindDelta, " €ÌÌ— "..NamePersian);
				end
			end
			
			if FindFirst == -1 then
				FindFirst = ListBox.FindItem("Words", -1, LB_BYTEXT, NamePersian.." «Ê·Ì‰");
				if FindFirst ~= -1 then
					ListBox.SetItemText("Words", FindFirst, "«Ê·Ì‰ "..NamePersian);
				end
			end
			
			if FindSecond == -1 then
				FindSecond = ListBox.FindItem("Words", -1, LB_BYTEXT, NamePersian.." œÊ„Ì‰");
				if FindSecond ~= -1 then
					ListBox.SetItemText("Words", FindSecond, "œÊ„Ì‰ "..NamePersian);
				end
			end
			
			Binesh.Join(UnitPersian);
			Binesh.Join(UnitPersian);
			Binesh.Join(UnitPersian);
			
			if FindDelta ~= -1 then
				Delta = FindNumber(FindDelta)
			else
				Delta = nil
			end
			
			if FindFirst ~= -1 then
				FindFirst = ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ "..NamePersian);
				First = FindNumber(FindFirst)
			else
				First = nil
			end
			
			if FindSecond ~= -1 then
				FindSecond = ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ "..NamePersian);
				Second = FindNumber(FindSecond)
			else
				Second = nil
			end
			
			FindNumber = nil
			return Delta, First, Second
		end
	elseif SearchFirst1 ~= "" then
		resultName = Binesh.PreparationSearchFirsts(NamePersian, Symbol, SearchFirst1, SearchFirst2)
		if resultName ~= nil then
			FindNamePersian = ListBox.FindItem("Words", -1, LB_BYTEXT, resultName);
			
			if FindNamePersian ~= -1 then
				Find = FindNamePersian
				Number = FindNumber(Find)
				return Number
			end
		end
	end -- SearchFirst1
end -- function: Genesis2