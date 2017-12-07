function Binesh.PreparationSearchFirsts(NamePersian, Symbol, SearchFirst1, SearchFirst2)
	FindNamePersian = ListBox.FindItem("Words", -1, LB_BYTEXT, NamePersian);
	FindSymbol = ListBox.FindItem("Words", -1, LB_BYTEXT, Symbol);
	if FindNamePersian ~= -1 or FindSymbol ~= -1 then
		if FindNamePersian ~= -1 then
			Find = FindNamePersian
			FindText = NamePersian
		else
			Find = FindSymbol
			FindText = Symbol
		end
		FindSearchFirst1 = ListBox.FindItem("Words", -1, LB_BYTEXT, SearchFirst1);
		if SearchFirst2 ~= "" then
			FindSearchFirst2 = ListBox.FindItem("Words", -1, LB_BYTEXT, SearchFirst2);
		end
		
		if FindSearchFirst1 ~= -1 then
			if SearchFirst2 == "" then
				ListBox.SetItemText("Words", Find, SearchFirst1.." "..FindText);
				return SearchFirst1.." "..FindText
			end
			
			if FindSearchFirst2 ~= -1 and SearchFirst2 ~= "" then
				if FindSearchFirst2 > Find then
					ListBox.DeleteItem("Words", FindSearchFirst2);
					ListBox.SetItemText("Words", Find, SearchFirst1.." "..FindText.." "..SearchFirst2);
					return SearchFirst1.." "..FindText.." "..SearchFirst2
				elseif FindSearchFirst2 < Find then
					ListBox.DeleteItem("Words", Find);
					ListBox.SetItemText("Words", SearchFirst2, SearchFirst1.." "..FindText.." "..SearchFirst2);
					return SearchFirst1.." "..FindText.." "..SearchFirst2
				end
			end
		end
	end -- FindNamePersian or Symbol
end