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
		end
		SET		= false
		if FindSearchFirst1 ~= -1 then
			for indexText = 1, 4 do
				Text = ListBox.GetItemText("Words", Find+indexText);
				if Text == SearchFirst1 then
					ListBox.DeleteItem("Words", Find+indexText);
					if SearchFirst2 == "" then
						ListBox.SetItemText("Words", Find+indexText, SearchFirst1.." "..NamePersian);
						SET = true
						break;
					else
						ListBox.SetItemText("Words", Find+indexText, SearchFirst1.." "..NamePersian.." "..SearchFirst1);
						SET = true
						break;
					end
				end
			end -- for
			if SET == false then
				for indexText = 1, 4 do
					Text = ListBox.GetItemText("Words", Find-indexText);
					if Text == SearchFirst1 then
						ListBox.DeleteItem("Words", Find);
						if SearchFirst2 == "" then
							ListBox.SetItemText("Words", Find-indexText, SearchFirst1.." "..NamePersian);
							break;
						else
							ListBox.SetItemText("Words", Find-indexText, SearchFirst1.." "..NamePersian.." "..SearchFirst2);
							break;
						end
					elseif Text == SearchFirst2 then
						ListBox.DeleteItem("Words", Find);
						for i = 1, 4 then
							Text = ListBox.GetItemText("Words", Find-indexText-i);
							if Text == SearchFirst1 then
								ListBox.DeleteItem("Words", Find-indexText);
								ListBox.SetItemText("Words", Find-indexText, SearchFirst1.." "..NamePersian.." "..SearchFirst2);
								break;
							end
						end -- for
					end
				end -- for
			end
		end
	end -- FindNamePersian
end