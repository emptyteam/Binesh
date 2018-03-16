Binesh.ConvertSpecificPreFA = {}

function Binesh.ConvertSpecificPreFA.Type1(Variable, Factor, UnitResult) -- This type is for fraction units like: m/s, N/m, g/mol, ...
	-- Reset Variables
	Find		= nil
	indexPre1	= nil
	NumberPre1	= 1
	indexPre2	= nil
	NumberPre2	= 1
	Number		= nil
	if Factor == nil then
		Factor = 1
	end
	if UnitResult == nil then
		UnitResult = Variable
	end
	
	Variable = AMS.DelimitedStringToTable(Variable, " ");
	Find = ListBox.FindItem("Words", -1, LB_BYTEXT, Variable[1]);
	if Find ~= -1 then
		if ListBox.GetItemText("Words", Find+1) == "ÈÑ" and (ListBox.GetItemText("Words", Find+2) == Variable[3] or ListBox.GetItemText("Words", Find+3) == Variable[3]) then
			for indexPre1 = 1, Table.Count(Pres.Value) do
				if ListBox.GetItemText("Words", Find-1) == Pres.NameFA[indexPre1] then
					NumberPre1	= Pres.Value[indexPre1]
					break;
				end
			end
			
			if ListBox.GetItemText("Words", Find+2) ~= Variable[3] then
				for indexPre2 = 1, Table.Count(Pres.Value) do
					if ListBox.GetItemText("Words", Find+2) == Pres.NameFA[indexPre2] then
						NumberPre2 = Pres.Value[indexPre2]
						break;
					end
				end
			end
			
			if NumberPre1 ~= 1 then
				Find = Find-1
			end
			
			Number = tonumber(ListBox.GetItemText("Words", Find-1));
			if Number ~= nil then
				Number = Number*(NumberPre1/NumberPre2)*Factor
				
				ListBox.SetItemText("Words", Find-1, Number);
				if NumberPre1 ~= 1 then
					if NumberPre2 ~= 1 then
						ListBox.DeleteItem("Words", Find+4);
						ListBox.DeleteItem("Words", Find+3);
						ListBox.DeleteItem("Words", Find+2);
						ListBox.DeleteItem("Words", Find+1);
						ListBox.SetItemText("Words", Find, UnitResult);
					end
				else
					ListBox.DeleteItem("Words", Find+3);
					ListBox.DeleteItem("Words", Find+2);
					ListBox.DeleteItem("Words", Find+1);
					ListBox.SetItemText("Words", Find, UnitResult);
				end
				return true;
			end
		end
	end
end -- function

function Binesh.ConvertSpecificPreFA.Type2(Variable, Factor, UnitResult) -- This type is for power units like: m^2, m^3
	-- Reset Variables
	Find		= nil
	indexPre	= nil
	NumberPre	= 1
	Number		= nil
	if Factor == nil then
		Factor = 1
	end
	if UnitResult == nil then
		UnitResult = Variable
	end
	
	Variable = AMS.DelimitedStringToTable(Variable, " ");
	Find = ListBox.FindItem("Words", -1, LB_BYTEXT, Variable[1]);
	if Find ~= -1 then
		if ListBox.GetItemText("Words", Find+1) == Variable[2] then
			for indexPre = 1, Table.Count(Pres.Value) do
				if ListBox.GetItemText("Words", Find-1) == Pres.NameFA[indexPre] then
					Find = Find-1
					NumberPre = Pres.Value[indexPre]
					
					Number = tonumber(ListBox.GetItemText("Words", Find-1));
					if Number ~= nil then
						ListBox.DeleteItem("Words", Find+2); -- Delete Variable[2]
						ListBox.DeleteItem("Words", Find+1); -- Delete Variable[1]
						ListBox.SetItemText("Words", Find, UnitResult);
						
						if Variable[2] == "ãÑÈÚ" then
							Number = Number*(NumberPre^2)*Factor
						elseif Variable[2] == "ã˜ÚÈ" then
							Number = Number*(NumberPre^3)*Factor
						end
						ListBox.SetItemText("Words", Find-1, Number);
						return true;
					end
				end
			end
		end
	end
end -- function