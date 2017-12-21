function Binesh.Genesis1(NamePersian, Symbol, Pre, PrePersian, PreValue, Unit, UnitPersian, isDelta, isUnit)
	Binesh.Join(NamePersian);
	UnitPersian = String.Replace(UnitPersian, "»Â", "»—");
	Binesh.Join(UnitPersian);
	
	if isUnit == nil then
		isUnit = true
	end
	
	Count = ListBox.GetCount("Words");
	
	function FindNumber(Find)
		Count = ListBox.GetCount("Words");
		if Find ~= nil or Find ~= "" then
			for index = Find, Count do
				TextNumber = ListBox.GetItemText("Words", index);
				Number = tonumber(TextNumber);
				if Number ~= nil then
					if isUnit == true then
						text = ListBox.GetItemText("Words", index+1);
						if String.Find(text, Unit, 1, true) ~= -1 or String.Find(text, UnitPersian, 1, false) ~= -1 then
							if String.Length(text) == String.Length(Unit) or String.Length(text) == String.Length(UnitPersian) then
								Number = Number/PreValue
	
								ListBox.DeleteItem("Words", index+1); -- Delete Unit
								ListBox.DeleteItem("Words", index); -- Delete Number
								ListBox.DeleteItem("Words", Find); -- Delete NamePersian or Symbol
								
								return Number
							end
						end -- Find Unit
						
						for indexPre = 1, Table.Count(Pres.Value) do
							if String.Find(text, Pres.Symbol[indexPre], 1, true) ~= -1 or String.Find(text, Pres.NameFA[indexPre], 1, false) ~= -1 then
								textUnit = ListBox.GetItemText("Words", index+2);
								if (String.Length(textUnit) == String.Length(Unit) and String.Find(textUnit, Unit, 1, true) ~= -1) or (String.Find(textUnit, UnitPersian, 1, false) ~= -1 and String.Length(textUnit) == String.Length(UnitPersian)) then
									if String.Length(textUnit) == String.Length(Unit) or String.Length(textUnit) == String.Length(UnitPersian) then
										Number = (Number*Pres.Value[indexPre])/PreValue
										
										ListBox.DeleteItem("Words", index+2); -- Delete Unit
										ListBox.DeleteItem("Words", index+1); -- Delete Pre
										ListBox.DeleteItem("Words", index); -- Delete Number
										ListBox.DeleteItem("Words", Find); -- Delete NamePersian or Symbol
										
										return Number
									end
								end -- Find Unit
							end -- Find Pre
						end -- for Pre
					else -- isUnit
						Number = Number/PreValue
						
						ListBox.DeleteItem("Words", index); -- Delete Number
						ListBox.DeleteItem("Words", Find); -- Delete NamePersian or Symbol
						
						return Number
					end -- isUnit
				end -- to Number
			end -- for: number
		end -- Find not empty
	end -- function
	
	if isDelta == false then
		FindNamePersian = ListBox.FindItem("Words", -1, LB_BYTEXT, NamePersian);
		FindSymbol = ListBox.FindItem("Words", -1, LB_BYTEXT, Symbol);
		if FindNamePersian ~= -1 then
			Find = FindNamePersian
			Number = FindNumber(Find)
			return Number
		elseif FindSymbol ~= -1 then
			Find = FindSymbol
			Number = FindNumber(Find)
			return Number
		end
	else -- isDelta
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
end