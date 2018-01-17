function Binesh.F17()
	if n_Glass == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "���� Ԙ��") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1 then
		if i ~= nil and r_Glass ~= nil then
			Binesh.CreateHTMLFile("n = |<span>sini/sinr</span>|")
			n_Glass = Math.Sin(i)/Math.Sin(r_Glass)
			
			Binesh.AddToHTML("n = |<span>"..Math.Sin(i).."/"..Math.Sin(r_Glass).."</span>| &#8658; n = "..math.abs(n_Glass))
			
			Binesh.AddToHTML("i: "..i.."<sup>o</sup>", "V")
			Binesh.AddToHTML("r: "..r_Glass.."<sup>o</sup>", "V")
			Binesh.AddToHTML("n: ?", "V")
		end
	end
	
	if i == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "i") ~= -1 then
		if n_Glass ~= nil and r_Glass ~= nil then
			Binesh.CreateHTMLFile("n = <span>sini/sinr</span>", "sini = nsinr")
			Sini = n_Glass * Math.Sin(r_Glass)
			i_Radian = Math.Asin(Math.Asin(Math.Sin(Sini)))
			i = Math.RadToDeg(i_Radian)
			
			Binesh.AddToHTML("sini = "..n_Glass.."*sin"..r_Glass.." &#8658; sini = "..Sini.." &#8658; i<sub>Radian</sub> = "..i_Radian.." &#8658; i = "..i.."<sup>o</sup>")
			
			Binesh.AddToHTML("n: "..n_Glass, "V")
			Binesh.AddToHTML("r: "..r_Glass.."<sup>o</sup>", "V")
			Binesh.AddToHTML("i: ?", "V")
		end
	end
	
	if r_Glass == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� Ԙ��") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "r") ~= -1 then
		if n_Glass ~= nil and i ~= nil then
			Binesh.CreateHTMLFile("n = <span>sini/sinr</span>", "sinr = <span>sini/n<span>")
			Sinr_Glass = Math.Sin(i)/n_Glass
			r_Glass_Radian = Math.Asin(Math.Asin(Math.Sin(Sinr_Glass)))
			r_Glass = Math.RadToDeg(r_Glass_Radian)
			
			Binesh.AddToHTML("sinr = <span>"..sini.."/"..n_Glass.." &#8658; sinr = "..Sinr_Glass.." &#8658; r<sub>Radian</sub> = "..r_Glass.." &#8658; r = "..r_Glass.."<sup>o</sup>")
			
			Binesh.AddToHTML("n: "..n_Glass, "V")
			Binesh.AddToHTML("i: "..i.."<sup>o</sup>", "V")
			Binesh.AddToHTML("r: ?", "V")
		end
	end
end