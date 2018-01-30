function Binesh.F19()
	if h_Glass == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "⁄„ﬁ Ÿ«Â—Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "h") ~= -1) then
		if H ~= nil and n1_Glass ~= nil and n2_Glass ~= nil then
			Binesh.CreateHTMLFile("<span>h/H</span> = <span>n<sub>1</sub>/n<sub>2</sub></span>")
			h_Glass = H*n1_Glass/n2_Glass
			
			Binesh.AddToHTML("h = "..H.."*"..n1_Glass.."/"..n2_Glass.." &#8658; h = "..h_Glass.." m")
			
			Binesh.AddToHTML("H: "..H.." m", "V")
			Binesh.AddToHTML("n1: "..n1_Glass, "V")
			Binesh.AddToHTML("n2: "..n2_Glass, "V")
			Binesh.AddToHTML("h: ?", "V")
		end
	end
	
	if H == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "⁄„ﬁ Ê«ﬁ⁄Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "H") ~= -1) then
		if h_Glass ~= nil and n1_Glass ~= nil and n2_Glass ~= nil then
			Binesh.CreateHTMLFile("<span>h/H</span> = <span>n<sub>1</sub>/n<sub>2</sub></span>", "H = <span>h*n<sub>2</sub>/n<sub>1</sub></span>")
			H = (h_Glass*n2_Glass)/n1_Glass
			
			Binesh.AddToHTML("H = <span>"..h_Glass.."*"..n2_Glass.."/"..n1_Glass.."</span> &#8658; H = "..H.." m")
			
			Binesh.AddToHTML("h: "..h_Glass.." m", "V")
			Binesh.AddToHTML("n1: "..n1_Glass, "V")
			Binesh.AddToHTML("n2: "..n2_Glass, "V")
			Binesh.AddToHTML("H: ?", "V")
		end
	end
	
	if n1_Glass == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ÷—Ì» ‘ò”  „ÕÌÿ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n1") ~= -1) then
		if h_Glass ~= nil and H ~= nil and n2_Glass ~= nil then
			Binesh.CreateHTMLFile("<span>h/H</span> = <span>n<sub>1</sub>/n<sub>2</sub></span>", "n<sub>1</sub> = <span>h_Glass*n<sub>2</sub>/H</span>")
			n1_Glass = (h_Glass*n2_Glass)/H
			
			Binesh.AddToHTML("n<sub>1</sub> = <span>"..h_Glass.."*"..n2_Glass.."/"..H.."</span> &#8658; n<sub>1</sub> = "..n1_Glass)
			
			Binesh.AddToHTML("h: "..h_Glass.." m", "V")
			Binesh.AddToHTML("H: "..H.." m", "V")
			Binesh.AddToHTML("n2: "..n2_Glass, "V")
			Binesh.AddToHTML("n1: ?", "V")
		end
	end
	
	if n2_Glass == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ÷—Ì» ‘ò”  „ÕÌÿ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n2") ~= -1) then
		if h_Glass ~= nil and H ~= nil and n1_Glass ~= nil then
			Binesh.CreateHTMLFile("<span>h/H</span> = <span>n<sub>1</sub>/n<sub>2</sub></span>", "n<sub>2</sub> = n<sub>1</sub>*H/h_Glass")
			n2_Glass = (n1_Glass*H)/h_Glass
			
			Binesh.AddToHTML("n<sub>2</sub> = <span>"..n1_Glass.."*"..H.."/"..h_Glass.."</span> &#8658; n<sub>2</sub> = "..n2_Glass)
			
			Binesh.AddToHTML("h: "..h_Glass.." m", "V")
			Binesh.AddToHTML("H: "..H.." m", "V")
			Binesh.AddToHTML("n1: "..n1_Glass, "V")
			Binesh.AddToHTML("n2: ?", "V")
		end
	end
end