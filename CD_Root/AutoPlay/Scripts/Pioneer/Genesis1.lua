function Binesh.Genesis1(NamePersian, Symbol, PrePersian, Pre, PreValue, Unit, UnitPersian, isUnit)
	UnitPersian = String.Replace(UnitPersian, "��", "��");
	Binesh.Join(UnitPersian);
	
	if isUnit == nil then
		isUnit = true
	end
	
	Count = ListBox.GetCount("Words");
	
	function FindNumber(Find)
		Count = ListBox.GetCount("Words");
		if Find ~= nil or Find ~= "" then
			for index = Find, Count do
				textNumber = ListBox.GetItemText("Words", index);
				Number = tonumber(textNumber);
				if Number ~= nil then
					if isUnit == true then
						text = ListBox.GetItemText("Words", index+1);
						for indexPre = 1, Table.Count(Pres.Value) do
							if String.Find(text, Pres.Symbol[indexPre], 1, true) ~= -1 or String.Find(text, Pres.NameFA[indexPre], 1, false) ~= -1 then
								textUnit = ListBox.GetItemText("Words", index+2);
								if (String.Length(textUnit) == String.Length(Unit) and String.Find(textUnit, Unit, 1, true) ~= -1) or (String.Find(textUnit, UnitPersian, 1, false) ~= -1 and String.Length(textUnit) == String.Length(UnitPersian)) then
									Number = (Number*Pres.Value[indexPre])/PreValue
									
									ListBox.DeleteItem("Words", index+2); -- Delete Unit
									ListBox.DeleteItem("Words", index+1); -- Delete Pre
									ListBox.DeleteItem("Words", index); -- Delete Number
									ListBox.DeleteItem("Words", Find); -- Delete NamePersian or Symbol
									
									return Number
								end -- Find Unit
							end -- Find Pre
						end -- for Pre
						
						text = ListBox.GetItemText("Words", index+1);
						for indexPre = 1, Table.Count(Pres.Value) do
							if String.Find(text, Unit, 1, true) ~= -1 and String.Mid(text, 1, #Pres.Symbol[indexPre]) == Pres.Symbol[indexPre] then
								if String.Mid(text, 1, #Pres.Symbol[indexPre]) == Pres.Symbol[indexPre] and String.Mid(text, #Pres.Symbol[indexPre]+1, #text) == Unit then
									Number = (Number*Pres.Value[indexPre])/PreValue
									
									ListBox.DeleteItem("Words", index+1); -- Delete Pre
									ListBox.DeleteItem("Words", index); -- Delete Number
									ListBox.DeleteItem("Words", Find); -- Delete NamePersian or Symbol
									
									return Number
								end
							end
						end
						
						if String.Find(text, Unit, 1, true) ~= -1 or String.Find(text, UnitPersian, 1, false) ~= -1 then
							if String.Length(text) == String.Length(Unit) or String.Length(text) == String.Length(UnitPersian) then
								Number = Number/PreValue
		
								ListBox.DeleteItem("Words", index+1); -- Delete Unit
								ListBox.DeleteItem("Words", index); -- Delete Number
								ListBox.DeleteItem("Words", Find); -- Delete NamePersian or Symbol
								return Number
							end
						end -- Find Unit
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
	
	FindNamePersian = ListBox.FindItem("Words", -1, LB_BYtext, NamePersian);
	FindSymbol = ListBox.FindItem("Words", -1, LB_BYtext, Symbol);
	if FindNamePersian ~= -1 then
		Find = FindNamePersian
		Number = FindNumber(Find)
		return Number
	elseif FindSymbol ~= -1 and ListBox.GetItemText("Words", FindSymbol) == Symbol then
		Find = FindSymbol
		Number = FindNumber(Find)
		return Number
	end
end