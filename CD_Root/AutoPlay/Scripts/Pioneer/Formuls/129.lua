function Binesh.F129()
	FindPoroton = ListBox.FindItem("Words", -1, LB_BYTEXT, "Å—Ê Ê‰");
	FindElectron = ListBox.FindItem("Words", -1, LB_BYTEXT, "«·ò —Ê‰");
	if FindElectron ~= -1 and q ~= nil then
		q = -q
	end
	
	if F == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1 then
		if q ~= nil and V_Speed ~= nil and B ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("F = qVBsinTeta")
			F = q*V_Speed*B*Math.Sin(Math.Rad(Teta))
			
			Binesh.AddToHTML("q: "..q.." C", "V")
			Binesh.AddToHTML("V: "..V_Speed.." m/s", "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("F: ?", "V")
			
			Binesh.AddToHTML("F = "..q.."*"..V_Speed.."*"..B.."*sin"..Teta.." &#8658; F = "..F.." N")
		end
	end
	
	if q == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
		if F ~= nil and V_Speed ~= nil and B ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("F = qVBsinTeta", "q = <span>F/VBsinTeta</span>")
			q = F/(V_Speed*B*Math.Sin(Math.Rad(Teta)))
			
			Binesh.AddToHTML("F: "..F.." N", "V")
			Binesh.AddToHTML("V: "..V_Speed.." m/s", "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("q: ?", "V")
			
			Binesh.AddToHTML("q = <span>"..F.."/"..V_Speed.."*"..B.."*sin"..Teta.."</span> &#8658; q = "..q.." C")
		end
	end
	
	if V_Speed == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
		if F ~= nil and q ~= nil and B ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("F = qVBsinTeta", "V = <span>F/qBsinTeta</span>")
			V_Speed = F/(q*B*Math.Sin(Math.Rad(Teta)))
			
			Binesh.AddToHTML("F: "..F.." N", "V")
			Binesh.AddToHTML("q: "..q.." C", "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("V: ?", "V")
			
			Binesh.AddToHTML("V = <span>"..F.."/"..q.."*"..B.."*sin"..Teta.."</span> &#8658; V = "..V_Speed.." m/s")
		end
	end
	
	if B == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1 then
		if F ~= nil and q ~= nil and V_Speed ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("F = qVBsinTeta", "B = <span>F/qVsinTeta</span>")
			
			B = F/(q*V_Speed*Math.Sin(Math.Rad(Teta)))
			
			Binesh.AddToHTML("F: "..F.." N", "V")
			Binesh.AddToHTML("q: "..q.." C", "V")
			Binesh.AddToHTML("V: "..V_Speed.." m/s", "V")
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("B: ?", "V")
			
			Binesh.AddToHTML("B = <span>"..F.."/"..q.."*"..V_Speed.."*sin"..Teta.."</span> &#8658; B = "..B.." T")
		end
	end
	
	if Teta == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Alpha") ~= -1 then
		if F ~= nil and q ~= nil and V_Speed ~= nil and B ~= nil then
			Binesh.CreateHTMLFile("F = qVBsinTeta", "sinTeta = <span>F/qVB</span>")
			
			SinTeta = F/(q*V_Speed*B)
			Teta_Radian = Math.Asin(Math.Asin(Math.Sin(SinTeta)))
			Teta = Math.RadToDeg(Teta_Radian)
			
			Binesh.AddToHTML("F: "..F.." N", "V")
			Binesh.AddToHTML("q: "..q.." C", "V")
			Binesh.AddToHTML("V: "..V_Speed.." m/s", "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("Teta: ?", "V")
			
			Binesh.AddToHTML("sinTeta = <span>"..F.."/"..q.."*"..V_Speed.."*"..B.."</span> &#8658; sinTeta = "..SinTeta.." &#8658; Teta<sub>Radian</sub> = "..Teta_Radian.." &#8658; Teta = "..Teta.."<sup>o</sup>")
		end
	end
end