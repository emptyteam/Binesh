function Binesh.F126()
	if V_Electric == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
		if Epsilon ~= nil and r_Resistor ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("V = Epsilon-Ir")
			V_Electric = Epsilon-(I*r_Resistor)
			
			Binesh.AddToHTML("V = "..Epsilon.."-"..I.."*"..r_Resistor.." &#8658; V = "..V_Electric.." V")
			
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("r: "..r_Resistor.." Ohm", "V")
			Binesh.AddToHTML("Epsilon: "..Epsilon.." V", "V")
			Binesh.AddToHTML("V: ?", "V")
		end
	end
	
	if Epsilon == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê „Õ—òÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Epsilon") ~= -1 then
		if V_Electric ~= nil and r_Resistor ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("V = Epsilon-Ir", "Epsilon = V+Ir")
			Epsilon = V_Electric + I*r_Resistor
			
			Binesh.AddToHTML("Epsilon = "..V_Electric.."+"..I.."*"..r_Resistor.." &#8658; Epsilon = "..Epsilon.." V")
			
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("r: "..r_Resistor.." Ohm", "V")
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("Epsilon: ?", "V")
		end
	end
	
	if I == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
		if V_Electric ~= nil and r_Resistor ~= nil and Epsilon ~= nil  then
			Binesh.CreateHTMLFile("V = Epsilon-Ir", "I = <span>Epsilon-V/r</span>")
			I = (Epsilon-V_Electric)/r_Resistor
			
			Binesh.AddToHTML("I =<span>"..Epsilon.."-"..V_Electric.."/"..r_Resistor.."</span> &#8658; I = "..I.." A")
			
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("Epsilon: "..Epsilon.." Ohm", "V")
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("r: ?", "V")
		end
	end
	
	if r_Resistor == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "r") ~= -1 then
		if V_Electric ~= nil and Epsilon ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("V = Epsilon-Ir", "r = <span>Epsilon-V/I<span>")
			r_Resistor = Epsilon-V_Electric/I
			
			Binesh.AddToHTML("r = <span>"..Epsilon.."/"..V_Electric.."/"..I.."</span>&#8658; r = "..r_Resistor.." Ohm")
			
			Binesh.AddToHTML("r: "..r_Resistor.." m", "V")
			Binesh.AddToHTML("Epsilon: "..Epsilon.." Ohm", "V")
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("I: ?", "V")
		end
	end
end