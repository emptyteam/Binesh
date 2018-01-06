function Binesh.F16()
	if i_Radian ~= nil then
		i = Math.RadToDeg(i_Radian)
		Binesh.AddToHTML("D<sub>i</sub> = <span>180*"..i_Radian.."/"..Zarib.Pi.."</span> &#8658; D<sub>i</sub> = "..i.."<sup>o</sup>")
	end
	
	if r_Glass_Radian ~= nil then
		r_Glass = Math.RadToDeg(r_Glass_Radian)
		Binesh.AddToHTML("D<sub>r</sub> = <span>180*"..r_Glass.."/"..Zarib.Pi.."</span> &#8658; D<sub>r</sub> = "..r_Glass.."<sup>o</sup>")
	end
	
	if n2_Glass == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ÷—Ì» ‘ò”  „ÕÌÿ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» ‘ò”  „ÕÌÿ œÊ„Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n2") ~= -1 then
		if n1_Glass ~= nil and i ~= nil and r_Glass ~= nil then
			Binesh.CreateHTMLFile("<span>n<sub>2</sub>/n<sub>1</sub> = <span>sini/sinr</span>", "n<sub>2</sub> = <span>sini*n<sub>1</sub>/sinr</span>")
			
			n2_Glass = Math.Sin(Math.Rad(i))*n1_Glass/Math.Sin(Math.Rad(r_Glass))
		
			Binesh.AddToHTML("n<sub>2</sub> = <span>sin"..i.."*"..n1_Glass.."/sin"..r_Glass.."</span> &#8658; n<sub>2</sub> = "..n2_Glass.." m")
			
			Binesh.AddToHTML("n1: "..n1_Glass, "V")
			Binesh.AddToHTML("i: "..i.."<sup>o</sup>", "V")
			Binesh.AddToHTML("r: "..r_Glass.."<sup>o</sup>", "V")
			Binesh.AddToHTML("n2: ?", "V")
		end
	end
	
	if n1_Glass == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ÷—Ì» ‘ò”  „ÕÌÿ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» ‘ò”  „ÕÌÿ «Ê·Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n1") ~= -1 then
		if n2_Glass ~= nil and i ~= nil and r_Glass ~= nil then
			Binesh.CreateHTMLFile("<span>n<sub>2</sub>/n<sub>1</sub> = <span>sini/sinr</span>", "n<sub>1</sub> = <span>sinr*n<sub>2</sub>/sini</span>")
			n1_Glass = Math.Sin(Math.Rad(i))*n2_Glass/Math.Sin(Math.Rad(r_Glass))
			
			Binesh.AddToHTML("n<sub>1</sub> = <span>sin"..i.."*"..n2_Glass.."/sin"..r_Glass.."</span>  &#8658; n<sub>1</sub> = "..n1_Glass.." m")
			
			Binesh.AddToHTML("n2: "..n2_Glass, "V")
			Binesh.AddToHTML("i: "..i.."<sup>o</sup>", "V")
			Binesh.AddToHTML("r: "..r_Glass.."<sup>o</sup>", "V")
			Binesh.AddToHTML("n1: ?", "V")
		end
	end
	
	if i == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ  «»‘") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "i") ~= -1 then
		if n2_Glass ~= nil and n1_Glass ~= nil and r_Glass ~= nil then
			Binesh.CreateHTMLFile("<span>n<sub>2</sub>/n<sub>1</sub> = <span>sini/sinr</span>", "sini = <span>sinr*n<sub>2</sub>/n<sub>1</sub></span>")
			
			Sini = Math.Sin(Math.Rad(r_Glass))*n2_Glass/n1_Glass
			i_Radian = Math.Asin(Math.Asin(Math.Sin(Sini)))
			i = Math.RadToDeg(i_Radian)
			
			Binesh.AddToHTML("sini = <span>sin"..r_Glass.."*"..n2_Glass.."/"..n1_Glass.."</span> &#8658; sini = "..sini.." &#8658; i<sub>Radian</sub> = "..i_Radian.." &#8658; i = "..i.."<sup>o</sup>")
			
			Binesh.AddToHTML("n1: "..n1_Glass, "V")
			Binesh.AddToHTML("n2: "..n2_Glass, "V")
			Binesh.AddToHTML("r: "..r_Glass.."<sup>o</sup>", "V")
			Binesh.AddToHTML("i: ?", "V")
		end
	end
	
	if r_Glass == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ ‘ò” ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "r") ~= -1 then
		if n2_Glass ~= nil and n1_Glass ~= nil and i ~= nil then
			Binesh.CreateHTMLFile("<span>n<sub>2</sub>/n<sub>1</sub> = <span>sini/sinr</span>", "sinr = <span>sini*n<sub>1</sub>/n<sub>2</sub></span>")
			
			Sinr_Glass = Math.Sin(Math.Rad(i))*n1_Glass/n2_Glass
			r_Glass_Radian = Math.Asin(Math.Asin(Math.Sin(Sinr_Glass)))
			r_Glass = Math.RadToDeg(r_Glass_Radian)
			
			Binesh.AddToHTML("sinr = <span>sin"..i.."*"..n1_Glass.."/"..n2_Glass.."</span> &#8658; sinr = "..sinr_Glass.." &#8658; r<sub>Radian</sub> = "..r_Glass_Radian.." &#8658; r = "..r_Glass.."<sup>o</sup>")
			
			Binesh.AddToHTML("n1: "..n1_Glass, "V")
			Binesh.AddToHTML("n2: "..n2_Glass, "V")
			Binesh.AddToHTML("i: "..i.."<sup>o</sup>", "V")
			Binesh.AddToHTML("r: ?", "V")
		end
	end
end