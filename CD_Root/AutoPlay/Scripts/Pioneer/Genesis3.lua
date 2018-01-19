function Binesh.Genesis3(NamePersian, Symbol, Pre, PrePersian, PreValue, Unit, UnitPersian, isUnit)
	Binesh.Join(NamePersian);
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
			text = ListBox.GetItemText("Words", Find-2);
			for indexPre = 1, Table.Count(Pres.Value) do
				if text == Pres.NameFA[indexPre] or text == Pres.Symbol[indexPre] then
					Number = (Number*Pres.Value[indexPre])/PreValue
					
					ListBox.DeleteItem("Words", Find); -- Delete NamePersian or Symbol
					ListBox.DeleteItem("Words", index); -- Delete Number
					return Number
				end -- Check Pre
			end -- for Pre
		end
	end -- function
	
	FindNameFA = ListBox.FindItem("Words", -1, LB_BYTEXT, UnitPersian);
	FindSymbol = ListBox.FindItem("Words", -1, LB_BYTEXT, Unit);
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
end -- function: Genesis3