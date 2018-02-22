function Binesh.F49()
	if Teta_Radian ~= nil and Teta == nil and Alpha == nil then
		Binesh.CreateHTMLFile("<span>R/Pi</span> = <span>D/180</span>", "D = <span>180R/Pi</span>")
		Teta = Math.RadToDeg(Teta_Radian)
		Binesh.AddToHTML("D<sub>Teta</sub> = <span>180*"..Binesh.ProgressNumber(Teta_Radian).."/"..Binesh.ProgressNumber(Settings.Zarib.Pi).."</span> &#8658; D<sub>Teta</sub> = "..Binesh.ProgressNumber(Teta).."<sup>o</sup>")
	end
	
	if W == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ò«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1) then
		if F ~= nil and d ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("W<sub>F</sub> = FdcosTeta")
			
			W = F*d*Math.Cos(Math.Rad(Teta))
			
			Binesh.AddToHTML("W<sub>F</sub> = "..Binesh.ProgressNumber(F).."*"..Binesh.ProgressNumber(d).."*cos"..Binesh.ProgressNumber(Teta).." &#8658; W<sub>F</sub> = "..Binesh.ProgressNumber(W).." J")
			
			Binesh.AddToHTML("F = "..Binesh.ProgressNumber(N).." N", "V")
			Binesh.AddToHTML("d = "..Binesh.ProgressNumber(d).." m", "V")
			Binesh.AddToHTML("Teta = "..Binesh.ProgressNumber(Teta), "V")
			Binesh.AddToHTML("W = ?", "V")
		end
	end
	
	if F == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1) then
		if W ~= nil and d ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("W<sub>F</sub> = FdcosTeta", "F = <span>W<sub>F</sub>/dcosTeta</span>")
			
			F = W/(d*Math.Cos(Math.Rad(Teta)))
			
			Binesh.AddToHTML("F = <span>"..Binesh.ProgressNumber(W).."/"..Binesh.ProgressNumber(d).."*cos"..Binesh.ProgressNumber(Teta).."</span> &#8658; F = "..Binesh.ProgressNumber(F).." N")
			
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(W).." N", "V")
			Binesh.AddToHTML("d = "..Binesh.ProgressNumber(d).." m", "V")
			Binesh.AddToHTML("Teta = "..Binesh.ProgressNumber(Teta), "V")
			Binesh.AddToHTML("F = ?", "V")
		end
	end
	
	if d == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "d") ~= -1) then
		if W ~= nil and F ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("W<sub>F</sub> = FdcosTeta", "d = <span>W<sub>F</sub>/F*cosTeta</span>")
			
			d = W/(F*Math.Cos(Math.Rad(Teta)))
			
			Binesh.AddToHTML("d = <span>"..Binesh.ProgressNumber(W).."/"..Binesh.ProgressNumber(F).."*cos"..Binesh.ProgressNumber(Teta).."</span> &#8658; d = "..Binesh.ProgressNumber(d).." m")
			
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(W).." N", "V")
			Binesh.AddToHTML("F = "..Binesh.ProgressNumber(F).." N", "V")
			Binesh.AddToHTML("Teta = "..Binesh.ProgressNumber(Teta), "V")
			Binesh.AddToHTML("d = ?", "V")
		end
	end
	
	if Teta == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta") ~= -1) then
		if W ~= nil and d ~= nil and F ~= nil then
			Binesh.CreateHTMLFile("W<sub>F</sub> = FdcosTeta", "cosTeta = <span>W<sub>F</sub>/Fd</span>")
			
			CosTeta = W/(d*F)
			Teta_Radian = Math.Acos(Math.Acos(Math.Cos(CosTeta)))
			Teta = Math.RadToDeg(Teta_Radian)
			
			Binesh.AddToHTML("cosTeta = <span>"..Binesh.ProgressNumber(W).."/"..Binesh.ProgressNumber(d).."*"..Binesh.ProgressNumber(F).."</span> &#8658; cosTeta = "..Binesh.ProgressNumber(CosTeta).." &#8658; Teta<sub>Radian</sub> = "..Binesh.ProgressNumber(Teta_Radian).." &#8658; Teta = "..Binesh.ProgressNumber(Teta).."<sup>o</sup>")
			
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(W).." N", "V")
			Binesh.AddToHTML("F = "..Binesh.ProgressNumber(N).." N", "V")
			Binesh.AddToHTML("d = "..Binesh.ProgressNumber(d).." m", "V")
			Binesh.AddToHTML("Teta = ?", "V")
		end
	end
end