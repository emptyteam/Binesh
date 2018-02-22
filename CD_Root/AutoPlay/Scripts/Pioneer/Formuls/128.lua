function Binesh.F128()
	if F == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1) then
		if B ~= nil and I ~= nil and l ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("F = BIlsinTeta")
			F = B*I*l*Math.Sin(Math.Rad(Teta))
			
			Binesh.AddToHTML("B = "..Binesh.ProgressNumber(B).." T", "V")
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("l = "..Binesh.ProgressNumber(l).." m", "V")
			Binesh.AddToHTML("Teta = "..Binesh.ProgressNumber(Teta), "V")
			Binesh.AddToHTML("F = ?", "V")
			
			Binesh.AddToHTML("F = "..Binesh.ProgressNumber(B).."*"..Binesh.ProgressNumber(I).."*"..Binesh.ProgressNumber(l).."*sin"..Binesh.ProgressNumber(Teta).."<sup>o</sup> &#8658; F = "..Binesh.ProgressNumber(F).." N")
		end
	end
	
	if B == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1) then
		if F ~= nil and I ~= nil and l ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("F = BIlsinTeta", "B = <span>F/IlSinTeta</span>")
			B = F/(I*l*Math.Sin(Math.Rad(Teta)))
			
			Binesh.AddToHTML("F = "..Binesh.ProgressNumber(F).." N", "V")
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("l = "..Binesh.ProgressNumber(l).." m", "V")
			Binesh.AddToHTML("Teta = "..Binesh.ProgressNumber(Teta), "V")
			Binesh.AddToHTML("B = ?", "V")
			
			Binesh.AddToHTML("B = <span>"..Binesh.ProgressNumber(F).."/"..Binesh.ProgressNumber(I).."*"..Binesh.ProgressNumber(l).."*sin"..Binesh.ProgressNumber(Teta).."</span> &#8658; B = "..Binesh.ProgressNumber(B).." T")
		end
	end
	
	if I == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1) then
		if F ~= nil and B ~= nil and l ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("F = BIlsinTeta", "I = <span>F/BlSinTeta</span>")
			I = F/(B*l*Math.Sin(Math.Rad(Teta)))
			
			Binesh.AddToHTML("F = "..Binesh.ProgressNumber(F).." N", "V")
			Binesh.AddToHTML("B = "..Binesh.ProgressNumber(B).." T", "V")
			Binesh.AddToHTML("l = "..Binesh.ProgressNumber(l).." m", "V")
			Binesh.AddToHTML("Teta = "..Binesh.ProgressNumber(Teta), "V")
			Binesh.AddToHTML("I = ?", "V")
			
			Binesh.AddToHTML("I = <span>"..Binesh.ProgressNumber(F).."/"..Binesh.ProgressNumber(B).."*"..Binesh.ProgressNumber(l).."*sin"..Binesh.ProgressNumber(Teta).."</span> &#8658; I = "..Binesh.ProgressNumber(I).." A")
		end
	end
	
	if l == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "l") ~= -1) then
		if F ~= nil and B ~= nil and I ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("F = BIlsinTeta", "l = <span>F/IBSinTeta</span>")
			l = F/(I*B*Math.Sin(Math.Rad(Teta)))
			
			Binesh.AddToHTML("F = "..Binesh.ProgressNumber(F).." N", "V")
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("B = "..Binesh.ProgressNumber(B).." T", "V")
			Binesh.AddToHTML("Teta = "..Binesh.ProgressNumber(Teta), "V")
			Binesh.AddToHTML("l = ?", "V")
			
			Binesh.AddToHTML("l = <span>"..Binesh.ProgressNumber(F).."/"..Binesh.ProgressNumber(I).."*"..Binesh.ProgressNumber(B).."*sin"..Binesh.ProgressNumber(Teta).."</span> &#8658; l = "..Binesh.ProgressNumber(l).." m")
		end
	end
	
	if Teta == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Alpha") ~= -1)) then
		if F ~= nil and I ~= nil and l ~= nil and B ~= nil then
			Binesh.CreateHTMLFile("F = BIlsinTeta", "sinTeta = <span>F/IlB</span>")
			SinTeta = F/(I*l*B)
			Teta_Radian = Math.Asin(Math.Asin(Math.Sin(SinTeta)))
			Teta = Math.RadToDeg(Teta_Radian)
			
			Binesh.AddToHTML("F = "..Binesh.ProgressNumber(F).." N", "V")
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("l = "..Binesh.ProgressNumber(l).." m", "V")
			Binesh.AddToHTML("B = "..Binesh.ProgressNumber(B).." T", "V")
			Binesh.AddToHTML("Teta = ?", "V")
			
			Binesh.AddToHTML("sinTeta = <span>"..Binesh.ProgressNumber(F).."/"..Binesh.ProgressNumber(I).."*"..Binesh.ProgressNumber(l).."*"..Binesh.ProgressNumber(B).." </span> &#8658; sinTeta = "..Binesh.ProgressNumber(SinTeta).." &#8658; Teta<sub>Radian</sub> = "..Binesh.ProgressNumber(Teta_Radian).." &#8658; Teta = "..Binesh.ProgressNumber(Teta).."<sup>o</sup>")
		end
	end
end