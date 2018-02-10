function Binesh.F111()
	if R == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1) then
		if Ru_Resistor ~= nil and A ~= nil and L ~= nil then
			R =  Ru_Resistor * L / A
			
			Binesh.CreateHTMLFile("R =  Ru*<span>L/A</span>")
			Binesh.AddToHTML("R = "..Binesh.Convert_e(Ru_Resistor).."*<span>"..Binesh.Convert_e(L).."/"..Binesh.Convert_e(A).."</span> &#8658; R = "..Binesh.Convert_e(R).." Ohm")
			
			Binesh.AddToHTML("Ru: "..Binesh.Convert_e(Ru_Resistor).." Ohm.m", "V")
			Binesh.AddToHTML("L: "..Binesh.Convert_e(L).." m", "V")
			Binesh.AddToHTML("A: "..Binesh.Convert_e(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("R: ?", "V")
		end
	end
	
	if Ru_Resistor == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„  ÊÌéÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ru") ~= -1) then
		if R ~= nil and L ~= nil and A ~= nil then
			Ru_Resistor = R*A/L
			
			Binesh.CreateHTMLFile("R =  Ru<span>L/A</span>", "Ru = <span>RA/L</span>")
			Binesh.AddToHTML("Ru = <span>"..Binesh.Convert_e(R).."*"..Binesh.Convert_e(A).."/"..Binesh.Convert_e(L).."</span> &#8658; Ru = "..Binesh.Convert_e(Ru_Resistor).." Ohm.m")
			
			Binesh.AddToHTML("R: "..Binesh.Convert_e(R).." Ohm", "V")
			Binesh.AddToHTML("L: "..Binesh.Convert_e(L).." m", "V")
			Binesh.AddToHTML("A: "..Binesh.Convert_e(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("Ru: ?", "V")
		end
	end
	
	if A == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã”„ ”ÿÕ") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "A") ~= -1)) then
		if R ~= nil and L ~= nil and Ru_Resistor ~= nil then
			A = Ru_Resistor*L/R
			
			Binesh.CreateHTMLFile("R =  Ru<span>L/A</span>", "A = <span>RuL/R</span>")
			Binesh.AddToHTML("A = <span>"..Binesh.Convert_e(Ru_Resistor).."*"..Binesh.Convert_e(L).."/"..Binesh.Convert_e(R).."</span> &#8658; A = "..Binesh.Convert_e(A).." m<sup>2</sup>")
			
			Binesh.AddToHTML("R: "..Binesh.Convert_e(R).." Ohm", "V")
			Binesh.AddToHTML("Ru: "..Binesh.Convert_e(Ru_Resistor).." Ohm.m", "V")
			Binesh.AddToHTML("L: "..Binesh.Convert_e(L).." m", "V")
			Binesh.AddToHTML("A: ?", "V")
		end
	end
	
	if L == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L") ~= -1) then
		if Ru_Resistor ~= nil and A ~= nil and R ~= nil then
			L = R*A/Ru_Resistor
			
			Binesh.CreateHTMLFile("R =  Ru<span>L/A</span>", "L = <span>RA/Ru</span>")
			Binesh.AddToHTML("L = <span>"..Binesh.Convert_e(R).."*"..Binesh.Convert_e(A).."/"..Binesh.Convert_e(Ru_Resistor).."</span> &#8658; L = "..Binesh.Convert_e(L).." m")
			
			Binesh.AddToHTML("R: "..Binesh.Convert_e(R).." Ohm", "V")
			Binesh.AddToHTML("Ru: "..Binesh.Convert_e(Ru_Resistor).." Ohm.m", "V")
			Binesh.AddToHTML("A: "..Binesh.Convert_e(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("L: ?", "V")
		end
	end
end