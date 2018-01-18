function Binesh.F49()
	if W == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1 then
		if F ~= nil and d ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("W<sub>F</sub> = FdcosTeta")
			
			W = F*d*Math.Cos(Math.Rad(Teta))
			
			Binesh.AddToHTML("W<sub>F</sub> = "..F.."*"..d.."*cos"..Teta.." &#8658; W<sub>F</sub> = "..W.." J")
			
			Binesh.AddToHTML("F: "..N.." N", "V")
			Binesh.AddToHTML("d: "..d.." m", "V")
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("W: ?", "V")
		end
	end
	
	if F == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1 then
		if W ~= nil and d ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("W<sub>F</sub> = FdcosTeta", "F = <span>W<sub>F</sub>/dcosTeta</span>")
			
			F = W/(d*Math.Cos(Math.Rad(Teta)))
			
			Binesh.AddToHTML("F = <span>"..W.."/"..d.."*cos"..Teta.."</span> &#8658; F = "..F.." N")
			
			Binesh.AddToHTML("W: "..W.." N", "V")
			Binesh.AddToHTML("d: "..d.." m", "V")
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("F: ?", "V")
		end
	end
	
	if d == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "�������") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "d") ~= -1 then
		if W ~= nil and F ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("W<sub>F</sub> = F*d*cosTeta", "d = <span>W<sub>F</sub>/F*cosTeta</span>")
			
			d = W/(F*Math.Cos(Math.Rad(Teta)))
			
			Binesh.AddToHTML("d = <span>"..W.."/"..F.."*cos"..Teta.."</span> &#8658; d = "..d.." m")
			
			Binesh.AddToHTML("W: "..W.." N", "V")
			Binesh.AddToHTML("F: "..F.." N", "V")
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("d: ?", "V")
		end
	end
	
	if Teta == nil or ListBox.GetItemData("unknowns", FindTeta) == "Alpha" and ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta") ~= -1 then
		if W ~= nil and d ~= nil and F ~= nil then
			Binesh.CreateHTMLFile("W<sub>F</sub> = FdcosTeta", "cosTeta = <span>W<sub>F</sub>/Fd</span>")
			
			CosTeta = W/(d*F)
			Teta_Radian = Math.Acos(Math.Acos(Math.Cos(CosTeta)))
			Teta = Math.RadToDeg(Teta_Radian)
			
			Binesh.AddToHTML("cosTeta = <span>"..W.."/"..d.."*"..F.."</span> &#8658; cosTeta = "..CosTeta.." &#8658; Teta<sub>Radian</sub> = "..Teta_Radian.." &#8658; Teta = "..Teta.."<sup>o</sup>")
			
			Binesh.AddToHTML("W: "..W.." N", "V")
			Binesh.AddToHTML("F: "..N.." N", "V")
			Binesh.AddToHTML("d: "..d.." m", "V")
			Binesh.AddToHTML("Teta: ?", "V")
		end
	end
end