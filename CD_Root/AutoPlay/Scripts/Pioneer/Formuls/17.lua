function Binesh.F17()
	if n_Glass == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» ‘ò” ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1) then
		if i ~= nil and r_Glass ~= nil then
			Binesh.CreateHTMLFile("n = <span>sini/sinr</span>")
			n_Glass = Math.Sin(i)/Math.Sin(r_Glass)
			
			Binesh.AddToHTML("n = <span>"..Binesh.Convert_e(Math.Sin(i)).."/"..Binesh.Convert_e(Math.Sin(r_Glass)).."</span> &#8658; n = "..Binesh.Convert_e(math.abs(n_Glass)))
			
			Binesh.AddToHTML("i: "..Binesh.Convert_e(i).."<sup>o</sup>", "V")
			Binesh.AddToHTML("r: "..Binesh.Convert_e(r_Glass).."<sup>o</sup>", "V")
			Binesh.AddToHTML("n: ?", "V")
		end
	end
	
	if i == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ  «»‘") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "i") ~= -1) then
		if n_Glass ~= nil and r_Glass ~= nil then
			Binesh.CreateHTMLFile("n = <span>sini/sinr</span>", "sini = nsinr")
			Sini = n_Glass * Math.Sin(r_Glass)
			i_Radian = Math.Asin(Math.Asin(Math.Sin(Sini)))
			i = Math.RadToDeg(i_Radian)
			
			Binesh.AddToHTML("sini = "..Binesh.Convert_e(n_Glass).."*sin"..Binesh.Convert_e(r_Glass).." &#8658; sini = "..Binesh.Convert_e(Sini).." &#8658; i<sub>Radian</sub> = "..Binesh.Convert_e(i_Radian).." &#8658; i = "..Binesh.Convert_e(i).."<sup>o</sup>")
			
			Binesh.AddToHTML("n: "..Binesh.Convert_e(n_Glass), "V")
			Binesh.AddToHTML("r: "..Binesh.Convert_e(r_Glass).."<sup>o</sup>", "V")
			Binesh.AddToHTML("i: ?", "V")
		end
	end
	
	if r_Glass == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ ‘ò” ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "r") ~= -1) then
		if n_Glass ~= nil and i ~= nil then
			Binesh.CreateHTMLFile("n = <span>sini/sinr</span>", "sinr = <span>sini/n<span>")
			Sinr_Glass = Math.Sin(i)/n_Glass
			r_Glass_Radian = Math.Asin(Math.Asin(Math.Sin(Sinr_Glass)))
			r_Glass = Math.RadToDeg(r_Glass_Radian)
			
			Binesh.AddToHTML("sinr = <span>"..Binesh.Convert_e(sini).."/"..Binesh.Convert_e(n_Glass).." &#8658; sinr = "..Binesh.Convert_e(Sinr_Glass).." &#8658; r<sub>Radian</sub> = "..Binesh.Convert_e(r_Glass).." &#8658; r = "..Binesh.Convert_e(r_Glass).."<sup>o</sup>")
			
			Binesh.AddToHTML("n: "..Binesh.Convert_e(n_Glass), "V")
			Binesh.AddToHTML("i: "..Binesh.Convert_e(i).."<sup>o</sup>", "V")
			Binesh.AddToHTML("r: ?", "V")
		end
	end
end