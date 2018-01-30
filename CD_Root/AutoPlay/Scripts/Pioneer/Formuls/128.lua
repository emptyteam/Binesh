function Binesh.F128()
	if F == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1) then
		if B ~= nil and I ~= nil and l ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("F = BIlsinTeta")
			F = B*I*l*Math.Sin(Math.Rad(Teta))
			
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("l: "..l.." m", "V")
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("F: ?", "V")
			
			Binesh.AddToHTML("F = "..B.."*"..I.."*"..l.."*sin"..Teta.."<sup>o</sup> &#8658; F = "..F.." N")
		end
	end
	
	if B == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1) then
		if F ~= nil and I ~= nil and l ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("F = BIlsinTeta", "B = <span>F/IlSinTeta</span>")
			B = F/(I*l*Math.Sin(Math.Rad(Teta)))
			
			Binesh.AddToHTML("F: "..F.." N", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("l: "..l.." m", "V")
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("B: ?", "V")
			
			Binesh.AddToHTML("B = <span>"..F.."/"..I.."*"..l.."*sin"..Teta.."</span> &#8658; B = "..B.." T")
		end
	end
	
	if I == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1) then
		if F ~= nil and B ~= nil and l ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("F = BIlsinTeta", "I = <span>F/BlSinTeta</span>")
			I = F/(B*l*Math.Sin(Math.Rad(Teta)))
			
			Binesh.AddToHTML("F: "..F.." N", "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("l: "..l.." m", "V")
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("I: ?", "V")
			
			Binesh.AddToHTML("I = <span>"..F.."/"..B.."*"..l.."*sin"..Teta.."</span> &#8658; I = "..I.." A")
		end
	end
	
	if l == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "l") ~= -1) then
		if F ~= nil and B ~= nil and I ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("F = BIlsinTeta", "l = <span>F/IBSinTeta</span>")
			l = F/(I*B*Math.Sin(Math.Rad(Teta)))
			
			Binesh.AddToHTML("F: "..F.." N", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("l: ?", "V")
			
			Binesh.AddToHTML("l = <span>"..F.."/"..I.."*"..B.."*sin"..Teta.."</span> &#8658; l = "..l.." m")
		end
	end
	
	if Teta == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Alpha") ~= -1)) then
		if F ~= nil and I ~= nil and l ~= nil and B ~= nil then
			Binesh.CreateHTMLFile("F = BIlsinTeta", "sinTeta = <span>F/IlB</span>")
			SinTeta = F/(I*l*B)
			Teta_Radian = Math.Asin(Math.Asin(Math.Sin(SinTeta)))
			Teta = Math.RadToDeg(Teta_Radian)
			
			Binesh.AddToHTML("F: "..F.." N", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("l: "..l.." m", "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("Teta: ?", "V")
			
			Binesh.AddToHTML("sinTeta = <span>"..F.."/"..I.."*"..l.."*"..B.." </span> &#8658; sinTeta = "..SinTeta.." &#8658; Teta<sub>Radian</sub> = "..Teta_Radian.." &#8658; Teta = "..Teta.."<sup>o</sup>")
		end
	end
end