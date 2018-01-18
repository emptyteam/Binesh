function Binesh.F96()
	if C_Condenser == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ÿ—›Ì ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "C") ~= -1 then
		if Kapa ~= nil and A ~= nil and d ~= nil then
			C_Condenser = Kapa*Zarib.ec*(A/d)
			
			Binesh.CreateHTMLFile("C = KapaEpsilon<sub>0</sub> <span>A/d</span>")
			Binesh.AddToHTML("C = "..Kapa.."*"..Zarib.ec.." <span>"..A.."/"..d.."</span> &#8658; C = "..C_Condenser.." F")
			
			Binesh.AddToHTML("Kapa: "..Kapa, "V")
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("d: "..d.." m", "V")
			Binesh.AddToHTML("C: ?", "V")
		end
	end
	
	if Kapa == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» œÌ «·ò —Ìò") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Kapa") ~= -1 then
		if C_Condenser ~= nil and A ~= nil and d ~= nil then
			Kapa = d*C_Condenser/(A*Zarib.ec)
			
			Binesh.CreateHTMLFile("C = KapaEpsilon<sub>0</sub> <span>A/d</span>", "Kapa = <span>Cd/Epsilon<sub>0</sub>A</span>")
			Binesh.AddToHTML("Kapa = <span>"..C_Condenser.."*"..d.."/"..Zarib.ec.."*"..A.."</span> &#8658; Kapa = "..Kapa)
			
			Binesh.AddToHTML("C: "..C_Condenser.." F", "V")
			Binesh.AddToHTML("d: "..d.." m", "V")
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("Kapa: ?", "V")
		end
	end
	
	if A == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã”„ ”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "A") ~= -1 then
		if Kapa ~= nil and C_Condenser ~= nil and d ~= nil then
			A = d*C_Condenser/(Kapa*Zarib.ec)
			
			Binesh.CreateHTMLFile("C = KapaEpsilon<sub>0</sub> <span>A/d</span>", "A = <span>Cd/Epsilon<sub>0</sub>Kapa</span>")
			Binesh.AddToHTML("A = <span>"..C_Condenser.."*"..d.."/"..Zarib.ec.."*"..Kapa.."</span> &#8658; A = "..A.." m<sup>2</sup>")
			
			Binesh.AddToHTML("C: "..C_Condenser.." F", "V")
			Binesh.AddToHTML("d: "..d.." m", "V")
			Binesh.AddToHTML("Kapa: "..Kapa, "V")
			Binesh.AddToHTML("A: ?", "V")
		end
	end
	
	if d == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "d") ~= -1 then
		if Kapa ~= nil and C_Condenser ~= nil and A ~= nil then
			d = Kapa*Zarib.ec*(A/C_Condenser)
			
			Binesh.CreateHTMLFile("C = KapaEpsilon<sub>0</sub> <span>A/d</span>", "d = KapaEpsilon<sub>0</sub> <span>A/C</span>")
			Binesh.AddToHTML("d = "..Kapa.."*"..Zarib.ec.." <span>"..A.."/"..C_Condenser.."</span> &#8658; d = "..d.." m")
			
			Binesh.AddToHTML("Kapa: "..Kapa, "V")
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("C: "..C_Condenser.." F", "V")
			Binesh.AddToHTML("d: ?", "V")
		end
	end
end