--[[

---------------------------------------------------------
--++++++++++++++++++ Join V: 1.0.0.0 ++++++++++++++++++--
---------------------------------------------------------

]]

function Binesh.Join(sSplit)
	WordsToSplit = AMS.DelimitedStringToTable(sSplit, " ");
	if WordsToSplit ~= nil then
		CountWordsToSplit = Table.Count(WordsToSplit);
		if CountWordsToSplit ~= 0 then
			indexFirstWord = ListBox.FindItem("Words", -1, LB_BYTEXT, WordsToSplit[1]);
			if indexFirstWord ~= -1 then
				if CountWordsToSplit == 2 then
				
					if ListBox.GetItemText("Words", indexFirstWord+1) == WordsToSplit[2] then
						ListBox.DeleteItem("Words", indexFirstWord+1);
						ListBox.SetItemText("Words", indexFirstWord, WordsToSplit[1].." "..WordsToSplit[2]);
					end
				elseif CountWordsToSplit == 3 then
					if ListBox.GetItemText("Words", indexFirstWord+1) == WordsToSplit[2] and ListBox.GetItemText("Words", indexFirstWord+2) == WordsToSplit[3] then
						ListBox.DeleteItem("Words", indexFirstWord+1);
						ListBox.DeleteItem("Words", indexFirstWord+1);
						ListBox.SetItemText("Words", indexFirstWord, WordsToSplit[1].." "..WordsToSplit[2].." "..WordsToSplit[3]);
					end
				elseif CountWordsToSplit == 4 then
					if ListBox.GetItemText("Words", indexFirstWord+1) == WordsToSplit[2] and ListBox.GetItemText("Words", indexFirstWord+2) == WordsToSplit[3] and ListBox.GetItemText("Words", indexFirstWord+3) == WordsToSplit[4] then
						ListBox.DeleteItem("Words", indexFirstWord+1);
						ListBox.DeleteItem("Words", indexFirstWord+1);
						ListBox.DeleteItem("Words", indexFirstWord+1);
						ListBox.SetItemText("Words", indexFirstWord, WordsToSplit[1].." "..WordsToSplit[2].." "..WordsToSplit[3].." "..WordsToSplit[4]);
					end
				elseif CountWordsToSplit == 5 then
					if ListBox.GetItemText("Words", indexFirstWord+1) == WordsToSplit[2] and ListBox.GetItemText("Words", indexFirstWord+2) == WordsToSplit[3] and ListBox.GetItemText("Words", indexFirstWord+3) == WordsToSplit[4] and ListBox.GetItemText("Words", indexFirstWord+4) == WordsToSplit[5] then
						ListBox.DeleteItem("Words", indexFirstWord+1);
						ListBox.DeleteItem("Words", indexFirstWord+1);
						ListBox.DeleteItem("Words", indexFirstWord+1);
						ListBox.DeleteItem("Words", indexFirstWord+1);
						ListBox.SetItemText("Words", indexFirstWord, WordsToSplit[1].." "..WordsToSplit[2].." "..WordsToSplit[3].." "..WordsToSplit[4].." "..WordsToSplit[5]);
					end
				end
			end
		end
	end
end