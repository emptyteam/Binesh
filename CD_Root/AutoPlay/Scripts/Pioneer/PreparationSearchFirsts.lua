function Binesh.PreparationSearchFirsts(NamePersian, SearchFirst1, SearchFirst2)
	if SearchFirst1 == nil then
		SearchFirst1 = ""
	end
	if SearchFirst2 == nil then
		SearchFirst2 = ""
	end
	FindNamePersian = ListBox.FindItem("Words", -1, LB_BYTEXT, NamePersian);
	if FindNamePersian ~= -1 then
		if FindNamePersian ~= -1 then
			Find = FindNamePersian
			FindText = NamePersian
		end
		FindSearchFirst1 = ListBox.FindItem("Words", -1, LB_BYTEXT, SearchFirst1);
		if SearchFirst2 ~= "" then
			FindSearchFirst2 = ListBox.FindItem("Words", -1, LB_BYTEXT, SearchFirst2);
		end
		
		if FindSearchFirst1 ~= -1 then
			if SearchFirst2 == "" then
				if FindSearchFirst1 > Find then
					ListBox.SetItemText("Words", Find, tostring(SearchFirst1).." "..tostring(FindText));
					ListBox.DeleteItem("Words", FindSearchFirst1);
				elseif FindSearchFirst1 < Find then
					ListBox.SetItemText("Words", FindSearchFirst1, tostring(SearchFirst1).." "..tostring(FindText));
					ListBox.DeleteItem("Words", Find);
				end
			end
			
			if FindSearchFirst2 ~= -1 and SearchFirst2 ~= "" then
				if FindSearchFirst2 > Find then
					ListBox.SetItemText("Words", Find, tostring(SearchFirst1).." "..tostring(FindText).." "..tostring(SearchFirst2));
					ListBox.DeleteItem("Words", FindSearchFirst2);
				elseif FindSearchFirst2 < Find then
					ListBox.SetItemText("Words", FindSearchFirst2, tostring(SearchFirst1).." "..tostring(FindText).." "..tostring(SearchFirst2));
					ListBox.DeleteItem("Words", Find);
				end
			end
		end
	end -- FindNamePersian
end