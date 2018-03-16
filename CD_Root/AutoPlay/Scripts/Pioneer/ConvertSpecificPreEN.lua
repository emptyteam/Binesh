Binesh.ConvertSpecificPreEN = {}

function Binesh.ConvertSpecificPreEN.Type1(Variable, Factor, UnitResult) -- This type is for fraction units like: m/s, N/m, g/mol, ...
	-- Reset Variables
	indexText	= nil
	indexPre1	= nil
	indexPre2	= nil
	SymbolPre1	= nil
	NumberPre1	= nil
	SymbolPre2	= nil
	NumberPre2	= nil
	Text		= nil
	Number		= nil
	if Factor == nil then
		Factor = 1
	end
	if UnitResult == nil then
		UnitResult = Variable
	end
	
	if String.Find(Variable, "/", 1, false) ~= -1 then
		Variable = AMS.DelimitedStringToTable(Variable, "/");
		for indexText = 1, ListBox.GetCount("Words") do
			Text = ListBox.GetItemText("Words", indexText);
			if String.Find(Text, Variable[1].."/", 1, false) ~= -1 then
				for indexPre1 = 0, Table.Count(Pres.Value) do
					if indexPre1 == 0 then
						SymbolPre1 = ""
						NumberPre1 = 1
					else
						SymbolPre1 = Pres.Symbol[indexPre1]
						NumberPre1 = Pres.Value[indexPre1]
					end
					for indexPre2 = 0, Table.Count(Pres.Value) do
						if indexPre2 == 0 then
							SymbolPre2 = ""
							NumberPre2 = 1
						else
							SymbolPre2 = Pres.Symbol[indexPre2]
							NumberPre2 = Pres.Value[indexPre2]
						end
						if Text == SymbolPre1..Variable[1].."/"..SymbolPre2..Variable[2] then
							Number = tonumber(ListBox.GetItemText("Words", indexText-1));
							if Number ~= nil then
								Number = Number*(NumberPre1/NumberPre2)*Factor
								ListBox.SetItemText("Words", indexText, UnitResult);
								ListBox.SetItemText("Words", indexText-1, Number);
								return true;
							end -- if: its Number
						end -- if: Text
					end -- for: indexPre2
				end -- for: indexPre1
			end -- if: This item have /
		end -- for: Get items from ListBox
	end -- if: Input have /
end -- function

function Binesh.ConvertSpecificPreEN.Type2(Variable, Factor, UnitResult) -- This type is for power units like: m^2, m^3
	-- Reset Variables
	indexText	= nil
	indexPre	= nil
	SymbolPre	= nil
	NumberPre	= nil
	Power		= nil
	Text		= nil
	Number		= nil
	if Factor == nil then
		Factor = 1
	end
	if UnitResult == nil then
		UnitResult = Variable
	end
	
	if String.Find(Variable, "^", 1, false) ~= -1 then
		Variable = AMS.DelimitedStringToTable(Variable, "^");
		Power = Variable[2]
		for indexText = 1, ListBox.GetCount("Words") do
			Text = ListBox.GetItemText("Words", indexText);
			if String.Find(Text, Variable[1].."^", 1, false) ~= -1 then
				for indexPre = 0, Table.Count(Pres.Value) do
					if indexPre == 0 then
						SymbolPre = ""
						NumberPre = 1
					else
						SymbolPre = Pres.Symbol[indexPre]
						NumberPre = Pres.Value[indexPre]
					end
					if Text == SymbolPre..Variable[1].."^"..Variable[2] then
						Number = tonumber(ListBox.GetItemText("Words", indexText-1));
						if Number ~= nil then
							Number = Number*(NumberPre^tonumber(Power))*Factor
							ListBox.SetItemText("Words", indexText, UnitResult);
							ListBox.SetItemText("Words", indexText-1, Number);
							return true;
						end -- if: its Number
					end -- if: Text
				end -- for: indexPre
			end -- if: This item have ^
		end -- for: Get items from ListBox
	end -- if: Input have ^
end -- function

function Binesh.ConvertSpecificPreEN.Type3(Variable, Factor, UnitResult) -- This type is for factor units like: Ohm.m
	-- Reset Variables
	indexText	= nil
	indexPre1	= nil
	indexPre2	= nil
	SymbolPre1	= nil
	NumberPre1	= nil
	SymbolPre2	= nil
	NumberPre2	= nil
	Text		= nil
	Number		= nil
	if Factor == nil then
		Factor = 1
	end
	if UnitResult == nil then
		UnitResult = Variable
	end
	
	if String.Find(Variable, ".", 1, false) ~= -1 then
		Variable = AMS.DelimitedStringToTable(Variable, ".");
		for indexText = 1, ListBox.GetCount("Words") do
			Text = ListBox.GetItemText("Words", indexText);
			if String.Find(Text, Variable[1]..".", 1, false) ~= -1 then
				for indexPre1 = 0, Table.Count(Pres.Value) do
					if indexPre1 == 0 then
						SymbolPre1 = ""
						NumberPre1 = 1
					else
						SymbolPre1 = Pres.Symbol[indexPre1]
						NumberPre1 = Pres.Value[indexPre1]
					end
					for indexPre2 = 0, Table.Count(Pres.Value) do
						if indexPre2 == 0 then
							SymbolPre2 = ""
							NumberPre2 = 1
						else
							SymbolPre2 = Pres.Symbol[indexPre2]
							NumberPre2 = Pres.Value[indexPre2]
						end
						if Text == SymbolPre1..Variable[1].."."..SymbolPre2..Variable[2] then
							Number = tonumber(ListBox.GetItemText("Words", indexText-1));
							if Number ~= nil then
								Number = Number*(NumberPre1*NumberPre2)*Factor
								ListBox.SetItemText("Words", indexText, UnitResult);
								ListBox.SetItemText("Words", indexText-1, Number);
								return true;
							end -- if: its Number
						end -- if: Text
					end -- for: indexPre2
				end -- for: indexPre1
			end -- if: This item have .
		end -- for: Get items from ListBox
	end -- if: Input have .
end -- function

function Binesh.ConvertSpecificPreEN.Type4(Variable, Factor, UnitResult) -- This type is for fraction and factor units like: m/s^2, g/m^3, c/m^2, ...
	-- Reset Variables
	Power1		= nil
	Power2		= nil
	indexText	= nil
	indexPre1	= nil
	indexPre2	= nil
	SymbolPre1	= nil
	NumberPre1	= nil
	SymbolPre2	= nil
	NumberPre2	= nil
	Text		= nil
	Number		= nil
	if Factor == nil then
		Factor = 1
	end
	if UnitResult == nil then
		UnitResult = Variable
	end
	
	if String.Find(Variable, "/", 1, false) ~= -1 then
		Variable = AMS.DelimitedStringToTable(Variable, "/");
		-- Power 1
		if String.Find(Variable[1], "^", 1, false) ~= -1 then
			Power1 = tonumber(AMS.DelimitedStringToTable(Variable[1], "^")[2]);
		else
			Power1 = 1
		end
		-- Power 2
		if String.Find(Variable[2], "^", 1, false) ~= -1 then
			Power2 = tonumber(AMS.DelimitedStringToTable(Variable[2], "^")[2]);
		else
			Power2 = 1
		end
		for indexText = 1, ListBox.GetCount("Words") do
			Text = ListBox.GetItemText("Words", indexText);
			if String.Find(Text, Variable[1].."/", 1, false) ~= -1 and String.Find(Text, "^", 1, false) ~= -1 then
				for indexPre1 = 0, Table.Count(Pres.Value) do
					if indexPre1 == 0 then
						SymbolPre1 = ""
						NumberPre1 = 1
					else
						SymbolPre1 = Pres.Symbol[indexPre1]
						NumberPre1 = Pres.Value[indexPre1]
					end
					for indexPre2 = 0, Table.Count(Pres.Value) do
						if indexPre2 == 0 then
							SymbolPre2 = ""
							NumberPre2 = 1
						else
							SymbolPre2 = Pres.Symbol[indexPre2]
							NumberPre2 = Pres.Value[indexPre2]
						end
						if Text == SymbolPre1..Variable[1].."/"..SymbolPre2..Variable[2] then
							Number = tonumber(ListBox.GetItemText("Words", indexText-1));
							if Number ~= nil then
								Number = Number*((NumberPre1^Power1)/(NumberPre2^Power2))*Factor
								ListBox.SetItemText("Words", indexText, UnitResult);
								ListBox.SetItemText("Words", indexText-1, Number);
								return true;
							end -- if: its Number
						end -- if: Text
					end -- for: indexPre2
				end -- for: indexPre1
			end -- if: This item have / and ^
		end -- for: Get items from ListBox
	end -- if: Input have .
end -- function

function Binesh.ConvertSpecificPreEN.Type5(Variable, Factor, UnitResult) -- This type is for reverse units like: 1/C, 1/K, ...
	-- Reset Variables
	indexText	= nil
	indexPre	= nil
	SymbolPre	= nil
	NumberPre	= nil
	Power		= nil
	Text		= nil
	Number		= nil
	if Factor == nil then
		Factor = 1
	end
	if UnitResult == nil then
		UnitResult = Variable
	end
	
	if String.Find(Variable, "/", 1, false) ~= -1 then
		Variable = AMS.DelimitedStringToTable(Variable, "/");
		for indexText = 1, ListBox.GetCount("Words") do
			Text = ListBox.GetItemText("Words", indexText);
			if String.Find(Text, "1/", 1, false) ~= -1 then
				for indexPre = 0, Table.Count(Pres.Value) do
					if indexPre == 0 then
						SymbolPre = ""
						NumberPre = 1
					else
						SymbolPre = Pres.Symbol[indexPre]
						NumberPre = Pres.Value[indexPre]
					end
					if Text == Variable[1].."/"..SymbolPre..Variable[2] then
						Number = tonumber(ListBox.GetItemText("Words", indexText-1));
						if Number ~= nil then
							Number = (Number/NumberPre)*Factor
							ListBox.SetItemText("Words", indexText, UnitResult);
							ListBox.SetItemText("Words", indexText-1, Number);
							return true;
						end -- if: its Number
					end -- if: Text
				end -- for: indexPre
			end -- if: This item have 1/
		end -- for: Get items from ListBox
	end -- if: Input have /
end -- function