function Binesh.PreparationDelta(NamePersian)
	Count = ListBox.GetCount("Words");
	
	_1 = ListBox.FindItem("Words", -1, LB_BYTEXT, NamePersian);
	if _1 ~= -1 then
		--{{ _1 }}--
		
		First = false
		
		-----------{{ Before }}-----------
		for indexWord = 1, _1 do
			text = ListBox.GetItemText("Words", indexWord);
			for indexInTable =  1, Table.Count(tbl.Delta.Words) do
				if text == tbl.Delta.Words[indexInTable] then
					ListBox.SetItemText("Words", indexWord, " €ÌÌ— "..NamePersian);
					First = true
					break
				end
			end
			
			if First == false then
				text = ListBox.GetItemText("Words", indexWord);
				for indexInTable =  1, Table.Count(tbl.Delta.First) do
					if text == tbl.Delta.First[indexInTable] then
						ListBox.SetItemText("Words", indexWord, "«Ê·Ì‰ "..NamePersian);
						First = true
						break
					end
				end
			end
			
			if First == false then
				text = ListBox.GetItemText("Words", indexWord);
				for indexInTable =  1, Table.Count(tbl.Delta.Second) do
					if text == tbl.Delta.Second[indexInTable] then
						ListBox.SetItemText("Words", indexWord, "œÊ„Ì‰ "..NamePersian);
						First = true
						break
					end
				end
			end
			if First == true then
				ListBox.DeleteItem("Words", _1);
				break
			end
		end
		-----------END {{ Before }}-----------
		
		-----------{{ After }}-----------
		if First == false then
			for indexWord = _1, Count do
				text = ListBox.GetItemText("Words", indexWord);
				for indexInTable = 1, Table.Count(tbl.Delta.Words) do
					if text == tbl.Delta.Words[indexInTable] then
						ListBox.SetItemText("Words", _1, " €ÌÌ— "..NamePersian);
						First = true
						break
					end
				end
				
				if First == false then
					for indexInTable = 1, Table.Count(tbl.Delta.First) do
						if text == tbl.Delta.First[indexInTable] then
							ListBox.SetItemText("Words", _1, "«Ê·Ì‰ "..NamePersian);
							First = true
							break
						end
					end
				end
				
				if First == false then
					for indexInTable = 1, Table.Count(tbl.Delta.Second) do
						if text == tbl.Delta.Second[indexInTable] then
							ListBox.SetItemText("Words", _1, "œÊ„Ì‰ "..NamePersian);
							First = true
							break
						end
					end
				end
				
				if First == true then
					ListBox.DeleteItem("Words", indexWord);
					break
				end
			end
		end
		-----------END {{ After }}-----------]]
		
		--{{ _1 }}--
		
		Count = ListBox.GetCount("Words");
		
		--{{ _2 }}--
		_2 = ListBox.FindItem("Words", -1, LB_BYTEXT, NamePersian);
		if _2 ~= -1 then
			Second = false
			
			-----------{{ Before }}-----------
			for indexWord = 1, _2 do
				text = ListBox.GetItemText("Words", indexWord);
				for indexInTable =  1, Table.Count(tbl.Delta.Words) do
					if text == tbl.Delta.Words[indexInTable] then
						ListBox.SetItemText("Words", indexWord, " €ÌÌ— "..NamePersian);
						Second = true
						break
					end
				end
				
				if Second == false then
					text = ListBox.GetItemText("Words", indexWord);
					for indexInTable =  1, Table.Count(tbl.Delta.First) do
						if text == tbl.Delta.First[indexInTable] then
							ListBox.SetItemText("Words", indexWord, "«Ê·Ì‰ "..NamePersian);
							Second = true
							break
						end
					end
				end
				
				if Second == false then
					text = ListBox.GetItemText("Words", indexWord);
					for indexInTable =  1, Table.Count(tbl.Delta.Second) do
						if text == tbl.Delta.Second[indexInTable] then
							ListBox.SetItemText("Words", indexWord, "œÊ„Ì‰ "..NamePersian);
							Second = true
							break
						end
					end
				end
				if Second == true then
					ListBox.DeleteItem("Words", _2);
					break
				end
			end
			-----------END {{ Before }}-----------
			
			-----------{{ After }}-----------
			if Second == false then
				for indexWord = _2, Count do
					text = ListBox.GetItemText("Words", indexWord);
					for indexInTable = 1, Table.Count(tbl.Delta.Words) do
						if text == tbl.Delta.Words[indexInTable] then
							ListBox.SetItemText("Words", _2, " €ÌÌ— "..NamePersian);
							Second = true
							break
						end
					end
					
					if Second == false then
						for indexInTable = 1, Table.Count(tbl.Delta.First) do
							if text == tbl.Delta.First[indexInTable] then
								ListBox.SetItemText("Words", _2, "«Ê·Ì‰ "..NamePersian);
								Second = true
								break
							end
						end
					end
					
					if Second == false then
						for indexInTable = 1, Table.Count(tbl.Delta.Second) do
							if text == tbl.Delta.Second[indexInTable] then
								ListBox.SetItemText("Words", _2, "œÊ„Ì‰ "..NamePersian);
								Second = true
								break
							end
						end
					end
					
					if Second == true then
						ListBox.DeleteItem("Words", indexWord);
						break
					end
				end
			end
			-----------END {{ After }}-----------
		end
		--END {{ _2 }}--
		
		Count = ListBox.GetCount("Words");
		
		--{{ _3 }}--
		if _2 ~= -1 then
			_3 = ListBox.FindItem("Words", -1, LB_BYTEXT, NamePersian);
			if _3 ~= -1 then
				Third = false
				
				-----------{{ Before }}-----------
				for indexWord = 1, _3 do
					text = ListBox.GetItemText("Words", indexWord);
					for indexInTable =  1, Table.Count(tbl.Delta.Words) do
						if text == tbl.Delta.Words[indexInTable] then
							ListBox.SetItemText("Words", indexWord, " €ÌÌ— "..NamePersian);
							Third = true
							break
						end
					end
					
					if Third == false then
						text = ListBox.GetItemText("Words", indexWord);
						for indexInTable =  1, Table.Count(tbl.Delta.First) do
							if text == tbl.Delta.First[indexInTable] then
								ListBox.SetItemText("Words", indexWord, "«Ê·Ì‰ "..NamePersian);
								Third = true
								break
							end
						end
					end
					
					if Third == false then
						text = ListBox.GetItemText("Words", indexWord);
						for indexInTable =  1, Table.Count(tbl.Delta.Second) do
							if text == tbl.Delta.Second[indexInTable] then
								ListBox.SetItemText("Words", indexWord, "œÊ„Ì‰ "..NamePersian);
								Third = true
								break
							end
						end
					end
					if Third == true then
						ListBox.DeleteItem("Words", _3);
						break
					end
				end
				-----------END {{ Before }}-----------
				
				-----------{{ After }}-----------
				if Third == false then
					for indexWord = _3, Count do
						text = ListBox.GetItemText("Words", indexWord);
						for indexInTable = 1, Table.Count(tbl.Delta.Words) do
							if text == tbl.Delta.Words[indexInTable] then
								ListBox.SetItemText("Words", _3, " €ÌÌ— "..NamePersian);
								Third = true
								break
							end
						end
						
						if Third == false then
							for indexInTable = 1, Table.Count(tbl.Delta.Second) do
								if text == tbl.Delta.Second[indexInTable] then
									ListBox.SetItemText("Words", _3, "«Ê·Ì‰ "..NamePersian);
									Third = true
									break
								end
							end
						end
						
						if Third == false then
							for indexInTable = 1, Table.Count(tbl.Delta.Second) do
								if text == tbl.Delta.Second[indexInTable] then
									ListBox.SetItemText("Words", _3, "œÊ„Ì‰ "..NamePersian);
									Third = true
									break
								end
							end
						end
						
						if Third == true then
							ListBox.DeleteItem("Words", indexWord);
							break
						end
					end
				end
				-----------END {{ After }}-----------
			end
		end
		--END {{ _3 }}--
	end
end