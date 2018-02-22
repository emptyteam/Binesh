function Binesh.F20()
	if C_Radian ~= nil and C ==nil then
		Binesh.CreateHTMLFile("<span>R/Pi</span> = <span>D/180</span>", "D = <span>180R/Pi</span>")
		C = Math.RadToDeg(C_Radian)
		Binesh.AddToHTML("D<sub>C</sub> = <span>180*"..Binesh.ProgressNumber(C_Radian).."/"..Binesh.ProgressNumber(Settings.Zarib.Pi).."</span> &#8658; D<sub>C</sub> = "..Binesh.ProgressNumber(C).."<sup>o</sup>")
		Binesh.AddToHTML("<br>")
	end
	
	if C == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ Õœ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "C") ~= -1) then
		if n_Glass ~= nil then
			Binesh.CreateHTMLFile("sinC = <span>1/n</span>")
			SinC = 1/n_Glass
			C_Radian = Math.Asin(Math.Asin(Math.Sin(SinC)))
			C = Math.RadToDeg(C_Radian)
			
			Binesh.AddToHTML("sinC = <span> 1/"..Binesh.ProgressNumber(n_Glass).."</span> &#8658; sinC = "..Binesh.ProgressNumber(SinC).." &#8658 C<sub>Radian</sub> = "..Binesh.ProgressNumber(C_Radian).." &#8658 C = "..Binesh.ProgressNumber(C).."<sup>o</sup>")
			
			Binesh.AddToHTML("n = "..Binesh.ProgressNumber(n_Glass), "V")
			Binesh.AddToHTML("C = ?", "V")
		end
	end
	
	if n_Glass == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» ‘ò” ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1) then
		if C ~= nil then
			Binesh.CreateHTMLFile("sinC = <span>1/n</span>", "n = <span>1/sinC</span>")
			n_Glass = 1/Math.Sin(Math.Rad(C))
			
			Binesh.AddToHTML("n = <span>1/sin"..Binesh.ProgressNumber(C).."</span> &#8658; n = "..Binesh.ProgressNumber(n_Glass).." m")
			
			Binesh.AddToHTML("C = "..Binesh.ProgressNumber(C).." <sup>o</sup>", "V")
			Binesh.AddToHTML("n = ?", "V")
		end
	end
end