function Binesh.F126()
	if V_Electric == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "���ǎ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then
		if Epsilon ~= nil and r_Resistor ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("V = Epsilon-Ir")
			V_Electric = Epsilon-(I*r_Resistor)
			
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(Epsilon).."-"..Binesh.ProgressNumber(I).."*"..Binesh.ProgressNumber(r_Resistor).." &#8658; V = "..Binesh.ProgressNumber(V_Electric).." V")
			
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("r = "..Binesh.ProgressNumber(r_Resistor).." Ohm", "V")
			Binesh.AddToHTML("Epsilon = "..Binesh.ProgressNumber(Epsilon).." V", "V")
			Binesh.AddToHTML("V = ?", "V")
		end
	end
	
	if Epsilon == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "���� ��ј�") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Epsilon") ~= -1) then
		if V_Electric ~= nil and r_Resistor ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("V = Epsilon-Ir", "Epsilon = V+Ir")
			Epsilon = V_Electric + (I*r_Resistor)
			
			Binesh.AddToHTML("Epsilon = "..Binesh.ProgressNumber(V_Electric).."+"..Binesh.ProgressNumber(I).."*"..Binesh.ProgressNumber(r_Resistor).." &#8658; Epsilon = "..Binesh.ProgressNumber(Epsilon).." V")
			
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("r = "..Binesh.ProgressNumber(r_Resistor).." Ohm", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Electric).." V", "V")
			Binesh.AddToHTML("Epsilon = ?", "V")
		end
	end
	
	if I == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1) then
		if V_Electric ~= nil and r_Resistor ~= nil and Epsilon ~= nil then
			Binesh.CreateHTMLFile("V = Epsilon-Ir", "I = <span>Epsilon-V/r</span>")
			I = (Epsilon-V_Electric)/r_Resistor
			
			Binesh.AddToHTML("I = <span>"..Binesh.ProgressNumber(Epsilon).."-"..Binesh.ProgressNumber(V_Electric).."/"..Binesh.ProgressNumber(r_Resistor).."</span> &#8658; I = "..Binesh.ProgressNumber(math.abs(I)).." A")
			
			Binesh.AddToHTML("r = "..Binesh.ProgressNumber(r_Resistor).." Ohm", "V")
			Binesh.AddToHTML("Epsilon = "..Binesh.ProgressNumber(Epsilon).." V", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Electric).." V", "V")
			Binesh.AddToHTML("I = ?", "V")
		end
	end
	
	if r_Resistor == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "������") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "r") ~= -1)) then
		if V_Electric ~= nil and Epsilon ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("V = Epsilon-Ir", "r = <span>Epsilon-V/I</span>")
			r_Resistor = (Epsilon-V_Electric)/I
			
			Binesh.AddToHTML("r = <span>"..Binesh.ProgressNumber(Epsilon).."-"..Binesh.ProgressNumber(V_Electric).."/"..Binesh.ProgressNumber(I).."</span>&#8658; r = "..Binesh.ProgressNumber(r_Resistor).." Ohm")
			
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("Epsilon = "..Binesh.ProgressNumber(Epsilon).." V", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Electric).." V", "V")
			Binesh.AddToHTML("r = ?", "V")
			
		end
	end
end