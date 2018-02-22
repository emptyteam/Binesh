function Binesh.F111()
	if R == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1) then
		if Ru_Resistor ~= nil and A ~= nil and L ~= nil then
			R = Ru_Resistor * L / A
			
			Binesh.CreateHTMLFile("R = Ru<span>L/A</span>")
			Binesh.AddToHTML("R = "..Binesh.ProgressNumber(Ru_Resistor).."*<span>"..Binesh.ProgressNumber(L).."/"..Binesh.ProgressNumber(A).."</span> &#8658; R = "..Binesh.ProgressNumber(R).." Ohm")
			
			Binesh.AddToHTML("Ru = "..Binesh.ProgressNumber(Ru_Resistor).." Ohm.m", "V")
			Binesh.AddToHTML("L = "..Binesh.ProgressNumber(L).." m", "V")
			Binesh.AddToHTML("A = "..Binesh.ProgressNumber(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("R = ?", "V")
		end
	end
	
	if Ru_Resistor == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„  ÊÌéÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ru") ~= -1) then
		if R ~= nil and L ~= nil and A ~= nil then
			Ru_Resistor = R*A/L
			
			Binesh.CreateHTMLFile("R = Ru<span>L/A</span>", "Ru = <span>RA/L</span>")
			Binesh.AddToHTML("Ru = <span>"..Binesh.ProgressNumber(R).."*"..Binesh.ProgressNumber(A).."/"..Binesh.ProgressNumber(L).."</span> &#8658; Ru = "..Binesh.ProgressNumber(Ru_Resistor).." Ohm.m")
			
			Binesh.AddToHTML("R = "..Binesh.ProgressNumber(R).." Ohm", "V")
			Binesh.AddToHTML("L = "..Binesh.ProgressNumber(L).." m", "V")
			Binesh.AddToHTML("A = "..Binesh.ProgressNumber(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("Ru = ?", "V")
		end
	end
	
	if A == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã”„ ”ÿÕ") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "A") ~= -1)) then
		if R ~= nil and L ~= nil and Ru_Resistor ~= nil then
			A = Ru_Resistor*L/R
			
			Binesh.CreateHTMLFile("R = Ru<span>L/A</span>", "A = <span>RuL/R</span>")
			Binesh.AddToHTML("A = <span>"..Binesh.ProgressNumber(Ru_Resistor).."*"..Binesh.ProgressNumber(L).."/"..Binesh.ProgressNumber(R).."</span> &#8658; A = "..Binesh.ProgressNumber(A).." m<sup>2</sup>")
			
			Binesh.AddToHTML("R = "..Binesh.ProgressNumber(R).." Ohm", "V")
			Binesh.AddToHTML("Ru = "..Binesh.ProgressNumber(Ru_Resistor).." Ohm.m", "V")
			Binesh.AddToHTML("L = "..Binesh.ProgressNumber(L).." m", "V")
			Binesh.AddToHTML("A = ?", "V")
		end
	end
	
	if L == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L") ~= -1) then
		if Ru_Resistor ~= nil and A ~= nil and R ~= nil then
			L = R*A/Ru_Resistor
			
			Binesh.CreateHTMLFile("R = Ru<span>L/A</span>", "L = <span>RA/Ru</span>")
			Binesh.AddToHTML("L = <span>"..Binesh.ProgressNumber(R).."*"..Binesh.ProgressNumber(A).."/"..Binesh.ProgressNumber(Ru_Resistor).."</span> &#8658; L = "..Binesh.ProgressNumber(L).." m")
			
			Binesh.AddToHTML("R = "..Binesh.ProgressNumber(R).." Ohm", "V")
			Binesh.AddToHTML("Ru = "..Binesh.ProgressNumber(Ru_Resistor).." Ohm.m", "V")
			Binesh.AddToHTML("A = "..Binesh.ProgressNumber(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("L = ?", "V")
		end
	end
end