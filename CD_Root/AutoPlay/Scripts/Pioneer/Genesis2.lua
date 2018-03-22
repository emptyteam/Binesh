function Binesh.Genesis2(NamePersian, Symbol, PrePersian, Pre, PreValue, Unit, UnitPersian, isUnit)
	UnitPersian = String.Replace(UnitPersian, "»Â", "»—");
	Binesh.Join(UnitPersian);
	
	if isUnit == nil then
		isUnit = true
	end
	
	function FindNumber(Find)
		CountWords = ListBox.GetCount("Words");
		for index = 1, Find do
			textNumber = ListBox.GetItemText("Words", index);
			Number = tonumber(textNumber)
			if Number ~= nil then
				if isUnit == true then
					text = ListBox.GetItemText("Words", index+1);
					for indexPre = 1, Table.Count(Pres.Value) do
						if text == Pres.NameFA[indexPre] or text == Pres.Symbol[indexPre] then
							textUnit = ListBox.GetItemText("Words", index+2);
							if String.Find(textUnit, Unit, 1, true) ~= -1 or String.Find(textUnit, UnitPersian, 1, false) ~= -1 then
								if #textUnit == #Unit or (#textUnit == #UnitPersian and String.Find(textUnit, UnitPersian, 1, false) ~= -1) then
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
					
					text = ListBox.GetItemText("Words", index+1);
					for indexPre = 1, Table.Count(Pres.Value) do
						if String.Find(text, Unit, 1, true) ~= -1 and String.Mid(text, 1, #Pres.Symbol[indexPre]) == Pres.Symbol[indexPre] then
							if String.Mid(text, 1, #Pres.Symbol[indexPre]) == Pres.Symbol[indexPre] and String.Mid(text, #Pres.Symbol[indexPre]+1, #text) == Unit then
								Number = (Number*Pres.Value[indexPre])/PreValue
								
								ListBox.DeleteItem("Words", Find); -- Delete NamePersian or Symbol
								ListBox.DeleteItem("Words", index+1); -- Delete Unit
								ListBox.DeleteItem("Words", index); -- Delete Number
								
								return Number
							end
						end
					end
					
					if String.Find(text, Unit, 1, true) ~= -1 or String.Find(text, UnitPersian, 1, false) ~= -1 then
						if #text == #Unit or (#text == #UnitPersian and String.Find(text, UnitPersian, 1, false) ~= -1) then
							Number = Number/PreValue
							
							ListBox.DeleteItem("Words", Find); -- Delete NamePersian or Symbol
							ListBox.DeleteItem("Words", index+1); -- Delete Unit
							ListBox.DeleteItem("Words", index); -- Delete Number
							
							return Number
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
	
	FindNameFA = ListBox.FindItem("Words", -1, LB_BYtext, NamePersian);
	FindSymbol = ListBox.FindItem("Words", -1, LB_BYtext, Symbol);
	if FindNameFA ~= -1 or FindSymbol ~= -1 then
		if FindNameFA ~= -1 then
			Find = FindNameFA
			Number = FindNumber(Find)
			return Number
		elseif FindSymbol ~= -1 and ListBox.GetItemText("Words", FindSymbol) == Symbol then
			Find = FindSymbol
			Number = FindNumber(Find)
			
			return Number
		end
	end -- find
end -- function: Genesis2