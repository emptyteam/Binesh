function Binesh.F49()
	if W == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ò«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1) then
		if F ~= nil and d ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("W<sub>F</sub> = FdcosTeta")
			
			W = F*d*Math.Cos(Math.Rad(Teta))
			
			Binesh.AddToHTML("W<sub>F</sub> = "..Binesh.Convert_e(F).."*"..Binesh.Convert_e(d).."*cos"..Binesh.Convert_e(Teta).." &#8658; W<sub>F</sub> = "..Binesh.Convert_e(W).." J")
			
			Binesh.AddToHTML("F: "..Binesh.Convert_e(N).." N", "V")
			Binesh.AddToHTML("d: "..Binesh.Convert_e(d).." m", "V")
			Binesh.AddToHTML("Teta: "..Binesh.Convert_e(Teta), "V")
			Binesh.AddToHTML("W: ?", "V")
		end
	end
	
	if F == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1) then
		if W ~= nil and d ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("W<sub>F</sub> = FdcosTeta", "F = <span>W<sub>F</sub>/dcosTeta</span>")
			
			F = W/(d*Math.Cos(Math.Rad(Teta)))
			
			Binesh.AddToHTML("F = <span>"..Binesh.Convert_e(W).."/"..Binesh.Convert_e(d).."*cos"..Binesh.Convert_e(Teta).."</span> &#8658; F = "..Binesh.Convert_e(F).." N")
			
			Binesh.AddToHTML("W: "..Binesh.Convert_e(W).." N", "V")
			Binesh.AddToHTML("d: "..Binesh.Convert_e(d).." m", "V")
			Binesh.AddToHTML("Teta: "..Binesh.Convert_e(Teta), "V")
			Binesh.AddToHTML("F: ?", "V")
		end
	end
	
	if d == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "d") ~= -1) then
		if W ~= nil and F ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("W<sub>F</sub> = FdcosTeta", "d = <span>W<sub>F</sub>/F*cosTeta</span>")
			
			d = W/(F*Math.Cos(Math.Rad(Teta)))
			
			Binesh.AddToHTML("d = <span>"..Binesh.Convert_e(W).."/"..Binesh.Convert_e(F).."*cos"..Binesh.Convert_e(Teta).."</span> &#8658; d = "..Binesh.Convert_e(d).." m")
			
			Binesh.AddToHTML("W: "..Binesh.Convert_e(W).." N", "V")
			Binesh.AddToHTML("F: "..Binesh.Convert_e(F).." N", "V")
			Binesh.AddToHTML("Teta: "..Binesh.Convert_e(Teta), "V")
			Binesh.AddToHTML("d: ?", "V")
		end
	end
	
	if Teta == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta") ~= -1) then
		if W ~= nil and d ~= nil and F ~= nil then
			Binesh.CreateHTMLFile("W<sub>F</sub> = FdcosTeta", "cosTeta = <span>W<sub>F</sub>/Fd</span>")
			
			CosTeta = W/(d*F)
			Teta_Radian = Math.Acos(Math.Acos(Math.Cos(CosTeta)))
			Teta = Math.RadToDeg(Teta_Radian)
			
			Binesh.AddToHTML("cosTeta = <span>"..Binesh.Convert_e(W).."/"..Binesh.Convert_e(d).."*"..Binesh.Convert_e(F).."</span> &#8658; cosTeta = "..Binesh.Convert_e(CosTeta).." &#8658; Teta<sub>Radian</sub> = "..Binesh.Convert_e(Teta_Radian).." &#8658; Teta = "..Binesh.Convert_e(Teta).."<sup>o</sup>")
			
			Binesh.AddToHTML("W: "..Binesh.Convert_e(W).." N", "V")
			Binesh.AddToHTML("F: "..Binesh.Convert_e(N).." N", "V")
			Binesh.AddToHTML("d: "..Binesh.Convert_e(d).." m", "V")
			Binesh.AddToHTML("Teta: ?", "V")
		end
	end
end