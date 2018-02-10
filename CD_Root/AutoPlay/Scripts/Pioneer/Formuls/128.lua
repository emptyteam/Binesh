function Binesh.F128()
	if F == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1) then
		if B ~= nil and I ~= nil and l ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("F = BIlsinTeta")
			F = B*I*l*Math.Sin(Math.Rad(Teta))
			
			Binesh.AddToHTML("B: "..Binesh.Convert_e(B).." T", "V")
			Binesh.AddToHTML("I: "..Binesh.Convert_e(I).." A", "V")
			Binesh.AddToHTML("l: "..Binesh.Convert_e(l).." m", "V")
			Binesh.AddToHTML("Teta: "..Binesh.Convert_e(Teta), "V")
			Binesh.AddToHTML("F: ?", "V")
			
			Binesh.AddToHTML("F = "..Binesh.Convert_e(B).."*"..Binesh.Convert_e(I).."*"..Binesh.Convert_e(l).."*sin"..Binesh.Convert_e(Teta).."<sup>o</sup> &#8658; F = "..Binesh.Convert_e(F).." N")
		end
	end
	
	if B == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1) then
		if F ~= nil and I ~= nil and l ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("F = BIlsinTeta", "B = <span>F/IlSinTeta</span>")
			B = F/(I*l*Math.Sin(Math.Rad(Teta)))
			
			Binesh.AddToHTML("F: "..Binesh.Convert_e(F).." N", "V")
			Binesh.AddToHTML("I: "..Binesh.Convert_e(I).." A", "V")
			Binesh.AddToHTML("l: "..Binesh.Convert_e(l).." m", "V")
			Binesh.AddToHTML("Teta: "..Binesh.Convert_e(Teta), "V")
			Binesh.AddToHTML("B: ?", "V")
			
			Binesh.AddToHTML("B = <span>"..Binesh.Convert_e(F).."/"..Binesh.Convert_e(I).."*"..Binesh.Convert_e(l).."*sin"..Binesh.Convert_e(Teta).."</span> &#8658; B = "..Binesh.Convert_e(B).." T")
		end
	end
	
	if I == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1) then
		if F ~= nil and B ~= nil and l ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("F = BIlsinTeta", "I = <span>F/BlSinTeta</span>")
			I = F/(B*l*Math.Sin(Math.Rad(Teta)))
			
			Binesh.AddToHTML("F: "..Binesh.Convert_e(F).." N", "V")
			Binesh.AddToHTML("B: "..Binesh.Convert_e(B).." T", "V")
			Binesh.AddToHTML("l: "..Binesh.Convert_e(l).." m", "V")
			Binesh.AddToHTML("Teta: "..Binesh.Convert_e(Teta), "V")
			Binesh.AddToHTML("I: ?", "V")
			
			Binesh.AddToHTML("I = <span>"..Binesh.Convert_e(F).."/"..Binesh.Convert_e(B).."*"..Binesh.Convert_e(l).."*sin"..Binesh.Convert_e(Teta).."</span> &#8658; I = "..Binesh.Convert_e(I).." A")
		end
	end
	
	if l == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "l") ~= -1) then
		if F ~= nil and B ~= nil and I ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("F = BIlsinTeta", "l = <span>F/IBSinTeta</span>")
			l = F/(I*B*Math.Sin(Math.Rad(Teta)))
			
			Binesh.AddToHTML("F: "..Binesh.Convert_e(F).." N", "V")
			Binesh.AddToHTML("I: "..Binesh.Convert_e(I).." A", "V")
			Binesh.AddToHTML("B: "..Binesh.Convert_e(B).." T", "V")
			Binesh.AddToHTML("Teta: "..Binesh.Convert_e(Teta), "V")
			Binesh.AddToHTML("l: ?", "V")
			
			Binesh.AddToHTML("l = <span>"..Binesh.Convert_e(F).."/"..Binesh.Convert_e(I).."*"..Binesh.Convert_e(B).."*sin"..Binesh.Convert_e(Teta).."</span> &#8658; l = "..Binesh.Convert_e(l).." m")
		end
	end
	
	if Teta == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Alpha") ~= -1)) then
		if F ~= nil and I ~= nil and l ~= nil and B ~= nil then
			Binesh.CreateHTMLFile("F = BIlsinTeta", "sinTeta = <span>F/IlB</span>")
			SinTeta = F/(I*l*B)
			Teta_Radian = Math.Asin(Math.Asin(Math.Sin(SinTeta)))
			Teta = Math.RadToDeg(Teta_Radian)
			
			Binesh.AddToHTML("F: "..Binesh.Convert_e(F).." N", "V")
			Binesh.AddToHTML("I: "..Binesh.Convert_e(I).." A", "V")
			Binesh.AddToHTML("l: "..Binesh.Convert_e(l).." m", "V")
			Binesh.AddToHTML("B: "..Binesh.Convert_e(B).." T", "V")
			Binesh.AddToHTML("Teta: ?", "V")
			
			Binesh.AddToHTML("sinTeta = <span>"..Binesh.Convert_e(F).."/"..Binesh.Convert_e(I).."*"..Binesh.Convert_e(l).."*"..Binesh.Convert_e(B).." </span> &#8658; sinTeta = "..Binesh.Convert_e(SinTeta).." &#8658; Teta<sub>Radian</sub> = "..Binesh.Convert_e(Teta_Radian).." &#8658; Teta = "..Binesh.Convert_e(Teta).."<sup>o</sup>")
		end
	end
end