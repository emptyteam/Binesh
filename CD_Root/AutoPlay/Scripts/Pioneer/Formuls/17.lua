function Binesh.F17()
	if n_Glass == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» ‘ò” ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1) then
		if i ~= nil and r_Glass ~= nil then
			Binesh.CreateHTMLFile("n = <span>Sini/Sinr</span>")
			n_Glass = Math.Sin(i)/Math.Sin(r_Glass)
			
			Binesh.AddToHTML("n = <span>"..Binesh.ProgressNumber(Math.Sin(i)).."/"..Binesh.ProgressNumber(Math.Sin(r_Glass)).."</span> &#8658; n = "..Binesh.ProgressNumber(math.abs(n_Glass)))
			
			Binesh.AddToHTML("i = "..Binesh.ProgressNumber(i).."<sup>o</sup>", "V")
			Binesh.AddToHTML("r = "..Binesh.ProgressNumber(r_Glass).."<sup>o</sup>", "V")
			Binesh.AddToHTML("n = ?", "V")
		end
	end
	
	if i == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ  «»‘") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "i") ~= -1) then
		if n_Glass ~= nil and r_Glass ~= nil then
			Binesh.CreateHTMLFile("n = <span>Sini/Sinr</span>", "Sini = nSinr")
			Sini = n_Glass * Math.Sin(r_Glass)
			i_Radian = Math.Asin(Math.Asin(Math.Sin(Sini)))
			i = Math.RadToDeg(i_Radian)
			
			Binesh.AddToHTML("Sini = "..Binesh.ProgressNumber(n_Glass).."*Sin"..Binesh.ProgressNumber(r_Glass).." &#8658; Sini = "..Binesh.ProgressNumber(Sini).." &#8658; i<sub>Radian</sub> = "..Binesh.ProgressNumber(i_Radian).." &#8658; i = "..Binesh.ProgressNumber(i).."<sup>o</sup>")
			
			Binesh.AddToHTML("n = "..Binesh.ProgressNumber(n_Glass), "V")
			Binesh.AddToHTML("r = "..Binesh.ProgressNumber(r_Glass).."<sup>o</sup>", "V")
			Binesh.AddToHTML("i = ?", "V")
		end
	end
	
	if r_Glass == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ ‘ò” ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "r") ~= -1) then
		if n_Glass ~= nil and i ~= nil then
			Binesh.CreateHTMLFile("n = <span>Sini/Sinr</span>", "Sinr = <span>Sini/n<span>")
			Sinr_Glass = Math.Sin(i)/n_Glass
			r_Glass_Radian = Math.Asin(Math.Asin(Math.Sin(Sinr_Glass)))
			r_Glass = Math.RadToDeg(r_Glass_Radian)
			
			Binesh.AddToHTML("Sinr = <span>"..Binesh.ProgressNumber(Sini).."/"..Binesh.ProgressNumber(n_Glass).." &#8658; Sinr = "..Binesh.ProgressNumber(Sinr_Glass).." &#8658; r<sub>Radian</sub> = "..Binesh.ProgressNumber(r_Glass).." &#8658; r = "..Binesh.ProgressNumber(r_Glass).."<sup>o</sup>")
			
			Binesh.AddToHTML("n = "..Binesh.ProgressNumber(n_Glass), "V")
			Binesh.AddToHTML("i = "..Binesh.ProgressNumber(i).."<sup>o</sup>", "V")
			Binesh.AddToHTML("r = ?", "V")
		end
	end
end