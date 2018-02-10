function Binesh.Genesis3(NamePersian, Symbol, PrePersian, Pre, PreValue, Unit, UnitPersian, isUnit)
	UnitPersian = String.Replace(UnitPersian, "»Â", "»—");
	Binesh.Join(UnitPersian);
	
	function FindNumber(Find)
		TextNumber = ListBox.GetItemText("Words", Find-1);
		Number = tonumber(TextNumber)
		if Number ~= nil then -- this is number
			
			Number = Number/PreValue
			
			ListBox.DeleteItem("Words", Find); -- Delete NamePersian or Symbol
			ListBox.DeleteItem("Words", index); -- Delete Number
			return Number
		else -- this is pre
			Number = tonumber(ListBox.GetItemText("Words", Find-2))
			if Number ~= nil then
				textPre = ListBox.GetItemText("Words", Find-1);
				for indexPre = 1, Table.Count(Pres.Value) do
					if textPre == Pres.NameFA[indexPre] or textPre == Pres.Symbol[indexPre] then
						Number = (Number*Pres.Value[indexPre])/PreValue
						
						ListBox.DeleteItem("Words", Find); -- Delete NamePersian or Symbol
						ListBox.DeleteItem("Words", index); -- Delete Number
						return Number
					end -- Check Pre
				end -- for Pre
			end
		end
	end -- function
	
	FindNameFA = ListBox.FindItem("Words", -1, LB_BYTEXT, UnitPersian);
	FindSymbol = ListBox.FindItem("Words", -1, LB_BYTEXT, Unit);
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
	
	-- For work with Symbol Unit
	TextNumber = nil
	Number = nil
	
	Count = ListBox.GetCount("Words");
	for index = 1, Count do
		Text = ListBox.GetItemText("Words", index);
		if String.Find(Text, Unit, 1, true) ~= -1 then
			TextNumber = ListBox.GetItemText("Words", index-1);
			Number = tonumber(TextNumber)
			if Number ~= nil then -- this is number
				for indexPre = 1, Table.Count(Pres.Value) do
					
					if String.Mid(Text, 1, #Pres.Symbol[indexPre]) == Pres.Symbol[indexPre] and String.Mid(Text, #Pres.Symbol[indexPre]+1, #Text) == Unit then
						Number = (Number*Pres.Value[indexPre])/PreValue
						
						ListBox.DeleteItem("Words", index); -- Delete Unit Symbol
						ListBox.DeleteItem("Words", index-1); -- Delete Number
						
						return Number
					end
					
					if indexPre == Table.Count(Pres.Value) then
						if String.Mid(Text, #Pres.Symbol[indexPre]+1, #Text) == Unit then
							Number = Number/PreValue
							
							ListBox.DeleteItem("Words", index); -- Delete Unit Symbol
							ListBox.DeleteItem("Words", index-1); -- Delete Number
							
							return Number
						end -- if: Check Length of Unit
					end -- if: Check for end of pre index
				end -- for: Get Pres
			end -- if: This is Number
		end -- if: This is unit
	end -- for: Words
end -- function: Genesis3