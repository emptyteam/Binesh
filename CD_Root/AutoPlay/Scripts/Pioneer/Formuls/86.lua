function Binesh.F86()
	if F == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1 then
		if q1 ~= nil and q2 ~= nil and r_3 ~= nil then
			F = 9*10^9 * (Math.Abs(q1)* Math.Abs(q2) / (r_3^2))
			
			Binesh.CreateHTMLFile("F = k*<span>|q<sub>1</sub>||q<sub>2</sub>|/r<sup>2</sup></span>")
			Binesh.AddToHTML("F = 9*10^9*<span>"..Math.Abs(q1).."*"..Math.Abs(q2).."/"..r_3.."<sup>2</sup></span> &#8658; F = "..F.." N")
			
			Binesh.AddToHTML("q<sub>1</sub>: "..q1.." C", "V")
			Binesh.AddToHTML("q<sub>2</sub>: "..q2.." C", "V")
			Binesh.AddToHTML("r: "..r_3.." m", "V")
			Binesh.AddToHTML("F: ?", "V")
		end
	end
	
	if q1 == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ –—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â «Ê·Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q1") ~= -1 then
		if F ~= nil and q2 ~= nil and r_3 ~= nil then
			q1 = F*r_3^2/(9*10^9*Math.Abs(q2))
			
			Binesh.CreateHTMLFile("F = k*<span>|q<sub>1</sub>||q<sub>2</sub>|/r<sup>2</sup></span>", "|q<sub>1</sub>| = <span>Fr<sup>2</sup>/k|q<sub>2</sub>|</span>")
			Binesh.AddToHTML("|q<sub>1</sub>| = <span>"..F.."*"..r_3.."<sup>2</sup>/9*10^9*"..Math.Abs(q2).."</span> &#8658; q<sub>1</sub> = "..Math.Abs(q1).." C")
			
			Binesh.AddToHTML("F: "..F.." N", "V")
			Binesh.AddToHTML("q<sub>2</sub>: "..q2.." C", "V")
			Binesh.AddToHTML("r: "..r_3.." m", "V")
			Binesh.AddToHTML("q<sub>1</sub>: ?", "V")
		end
	end
	
	if q2 == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ –—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â œÊ„Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q2") ~= -1 then
		if F ~= nil and r_3 ~= nil and q1 ~= nil then
			q2 = F*r_3^2/(9*10^9*Math.Abs(q1))
			
			Binesh.CreateHTMLFile("F = k*<span>|q<sub>1</sub>||q<sub>2</sub>|/r<sup>2</sup></span>", "|q<sub>2</sub>| = <span>Fr<sup>2</sup>/k|q<sub>1</sub>|</span>")
			Binesh.AddToHTML("|q<sub>2</sub>| = <span>"..F.."*"..r_3.."<sup>2</sup>/9*10^9*"..Math.Abs(q1).."</span> &#8658; q2 = "..Math.Abs(q2).." C")
			
			Binesh.AddToHTML("F: "..F.." N", "V")
			Binesh.AddToHTML("q<sub>1</sub>: "..q1.." C", "V")
			Binesh.AddToHTML("r: "..r_3.." m", "V")
			Binesh.AddToHTML("q<sub>2</sub>: ?", "V")
		end
	end
	
	if r_3 == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "r") ~= -1 then
		if q1 ~= nil and q2 ~= nil and F ~= nil then
			r_3 = Math.Sqrt(9*10^9*Math.Abs(q1)*Math.Abs(q2)/F)
			
			Binesh.CreateHTMLFile("F = k*<span>|q<sub>1</sub>||q<sub>2</sub>|/r<sup>2</sup></span>", "r = Sqrt(<span>k|q<sub>1<sub>||q<sub>2</sub>|/F</span>)")
			Binesh.AddToHTML("r = Sqrt(<span>9*10^9*"..Math.Abs(q1).."*"..Math.Abs(q2).."/"..F.."</span>) &#8658; r = "..r_3.." m")
			
			Binesh.AddToHTML("F: "..F.." N", "V")
			Binesh.AddToHTML("q<sub>1</sub>: "..q1.." C", "V")
			Binesh.AddToHTML("q<sub>2</sub>: "..q2.." C", "V")
			Binesh.AddToHTML("r: ?", "V")
		end
	end
end