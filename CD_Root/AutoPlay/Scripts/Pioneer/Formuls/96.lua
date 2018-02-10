function Binesh.F96()
	if C_Condenser == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ÿ—›Ì ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "C") ~= -1) then
		if Kapa ~= nil and A ~= nil and d ~= nil then
			C_Condenser = Kapa*Zarib.ec*(A/d)
			
			Binesh.CreateHTMLFile("C = KapaEpsilon<sub>0</sub> <span>A/d</span>")
			Binesh.AddToHTML("C = "..Binesh.Convert_e(Kapa).."*"..Binesh.Convert_e(Zarib.ec).." <span>"..Binesh.Convert_e(A).."/"..Binesh.Convert_e(d).."</span> &#8658; C = "..Binesh.Convert_e(C_Condenser).." F")
			
			Binesh.AddToHTML("Kapa: "..Binesh.Convert_e(Kapa), "V")
			Binesh.AddToHTML("A: "..Binesh.Convert_e(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("d: "..Binesh.Convert_e(d).." m", "V")
			Binesh.AddToHTML("C: ?", "V")
		end
	end
	
	if Kapa == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» œÌ «·ò —Ìò") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Kapa") ~= -1) then
		if C_Condenser ~= nil and A ~= nil and d ~= nil then
			Kapa = d*C_Condenser/(A*Zarib.ec)
			
			Binesh.CreateHTMLFile("C = KapaEpsilon<sub>0</sub> <span>A/d</span>", "Kapa = <span>Cd/Epsilon<sub>0</sub>A</span>")
			Binesh.AddToHTML("Kapa = <span>"..Binesh.Convert_e(C_Condenser).."*"..Binesh.Convert_e(d).."/"..Binesh.Convert_e(Zarib.ec).."*"..Binesh.Convert_e(A).."</span> &#8658; Kapa = "..Binesh.Convert_e(Kapa))
			
			Binesh.AddToHTML("C: "..Binesh.Convert_e(C_Condenser).." F", "V")
			Binesh.AddToHTML("d: "..Binesh.Convert_e(d).." m", "V")
			Binesh.AddToHTML("A: "..Binesh.Convert_e(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("Kapa: ?", "V")
		end
	end
	
	if A == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã”„ ”ÿÕ") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "A") ~= -1)) then
		if Kapa ~= nil and C_Condenser ~= nil and d ~= nil then
			A = d*C_Condenser/(Kapa*Zarib.ec)
			
			Binesh.CreateHTMLFile("C = KapaEpsilon<sub>0</sub> <span>A/d</span>", "A = <span>Cd/Epsilon<sub>0</sub>Kapa</span>")
			Binesh.AddToHTML("A = <span>"..Binesh.Convert_e(C_Condenser).."*"..Binesh.Convert_e(d).."/"..Binesh.Convert_e(Zarib.ec).."*"..Binesh.Convert_e(Kapa).."</span> &#8658; A = "..Binesh.Convert_e(A).." m<sup>2</sup>")
			
			Binesh.AddToHTML("C: "..Binesh.Convert_e(C_Condenser).." F", "V")
			Binesh.AddToHTML("d: "..Binesh.Convert_e(d).." m", "V")
			Binesh.AddToHTML("Kapa: "..Binesh.Convert_e(Kapa), "V")
			Binesh.AddToHTML("A: ?", "V")
		end
	end
	
	if d == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "d") ~= -1) then
		if Kapa ~= nil and C_Condenser ~= nil and A ~= nil then
			d = Kapa*Zarib.ec*(A/C_Condenser)
			
			Binesh.CreateHTMLFile("C = KapaEpsilon<sub>0</sub> <span>A/d</span>", "d = KapaEpsilon<sub>0</sub> <span>A/C</span>")
			Binesh.AddToHTML("d = "..Binesh.Convert_e(Kapa).."*"..Binesh.Convert_e(Zarib.ec).." <span>"..Binesh.Convert_e(A).."/"..Binesh.Convert_e(C_Condenser).."</span> &#8658; d = "..Binesh.Convert_e(d).." m")
			
			Binesh.AddToHTML("Kapa: "..Binesh.Convert_e(Kapa), "V")
			Binesh.AddToHTML("A: "..Binesh.Convert_e(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("C: "..Binesh.Convert_e(C_Condenser).." F", "V")
			Binesh.AddToHTML("d: ?", "V")
		end
	end
end