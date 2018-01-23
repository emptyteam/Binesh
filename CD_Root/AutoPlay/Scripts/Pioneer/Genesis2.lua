function Binesh.Genesis2(NamePersian, Symbol, Pre, PrePersian, PreValue, Unit, UnitPersian, isUnit)
	UnitPersian = String.Replace(UnitPersian, "»Â", "»—");
	Binesh.Join(UnitPersian);
	
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
								end -- Check Lenght Unit
							end -- Check Unit
						end -- Check Pre
					end -- for Pre
				else
					Number = Number/PreValue
					
					ListBox.DeleteItem("Words", Find); -- Delete NamePersian or Symbol
					ListBox.DeleteItem("Words", index); -- Delete Number
					return Number
				end -- isUnit
			end -- to number
		end -- for: number
	end -- function
	
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
end -- function: Genesis2