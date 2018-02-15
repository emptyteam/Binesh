function Binesh.F86()
	if F == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1) then
		if q1 ~= nil and q2 ~= nil and r ~= nil then
			F = 9*10^9 * (Math.Abs(q1)* Math.Abs(q2) / (r^2))
			
			Binesh.CreateHTMLFile("F = k<span>|q<sub>1</sub>||q<sub>2</sub>|/r<sup>2</sup></span>")
			Binesh.AddToHTML("F = 9*10^9*<span>"..Binesh.Convert_e(Math.Abs(q1)).."*"..Binesh.Convert_e(Math.Abs(q2)).."/"..Binesh.Convert_e(r).."<sup>2</sup></span> &#8658; F = "..Binesh.Convert_e(F).." N")
			
			Binesh.AddToHTML("q<sub>1</sub>: "..Binesh.Convert_e(q1).." C", "V")
			Binesh.AddToHTML("q<sub>2</sub>: "..Binesh.Convert_e(q2).." C", "V")
			Binesh.AddToHTML("r: "..Binesh.Convert_e(r).." m", "V")
			Binesh.AddToHTML("F: ?", "V")
		end
	end
	
	if q1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ –—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "q1") ~= -1)) then
		if F ~= nil and q2 ~= nil and r ~= nil then
			q1 = F*r^2/(9*10^9*Math.Abs(q2))
			
			Binesh.CreateHTMLFile("F = k<span>|q<sub>1</sub>||q<sub>2</sub>|/r<sup>2</sup></span>", "|q<sub>1</sub>| = <span>Fr<sup>2</sup>/k|q<sub>2</sub>|</span>")
			Binesh.AddToHTML("|q<sub>1</sub>| = <span>"..Binesh.Convert_e(F).."*"..Binesh.Convert_e(r).."<sup>2</sup>/9*10^9*"..Binesh.Convert_e(Math.Abs(q2)).."</span> &#8658; q<sub>1</sub> = "..Binesh.Convert_e(Math.Abs(q1)).." C")
			
			Binesh.AddToHTML("F: "..Binesh.Convert_e(F).." N", "V")
			Binesh.AddToHTML("q<sub>2</sub>: "..Binesh.Convert_e(q2).." C", "V")
			Binesh.AddToHTML("r: "..Binesh.Convert_e(r).." m", "V")
			Binesh.AddToHTML("q<sub>1</sub>: ?", "V")
		end
	end
	
	if q2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ –—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "q2") ~= -1)) then
		if F ~= nil and r ~= nil and q1 ~= nil then
			q2 = F*r^2/(9*10^9*Math.Abs(q1))
			
			Binesh.CreateHTMLFile("F = k<span>|q<sub>1</sub>||q<sub>2</sub>|/r<sup>2</sup></span>", "|q<sub>2</sub>| = <span>Fr<sup>2</sup>/k|q<sub>1</sub>|</span>")
			Binesh.AddToHTML("|q<sub>2</sub>| = <span>"..Binesh.Convert_e(F).."*"..Binesh.Convert_e(r).."<sup>2</sup>/9*10^9*"..Binesh.Convert_e(Math.Abs(q1)).."</span> &#8658; q<sub>2</sub> = "..Binesh.Convert_e(Math.Abs(q2)).." C")
			
			Binesh.AddToHTML("F: "..Binesh.Convert_e(F).." N", "V")
			Binesh.AddToHTML("q<sub>1</sub>: "..Binesh.Convert_e(q1).." C", "V")
			Binesh.AddToHTML("r: "..Binesh.Convert_e(r).." m", "V")
			Binesh.AddToHTML("q<sub>2</sub>: ?", "V")
		end
	end
	
	if r == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "r") ~= -1) then
		if q1 ~= nil and q2 ~= nil and F ~= nil then
			r = Math.Sqrt(9*10^9*Math.Abs(q1)*Math.Abs(q2)/F)
			
			Binesh.CreateHTMLFile("F = k<span>|q<sub>1</sub>||q<sub>2</sub>|/r<sup>2</sup></span>", "r = Sqrt(<span>k|q<sub>1</sub>||q<sub>2</sub>|/F</span>)")
			Binesh.AddToHTML("r = Sqrt(<span>9*10^9*"..Binesh.Convert_e(Math.Abs(q1)).."*"..Binesh.Convert_e(Math.Abs(q2)).."/"..Binesh.Convert_e(F).."</span>) &#8658; r = "..Binesh.Convert_e(r).." m")
			
			Binesh.AddToHTML("F: "..Binesh.Convert_e(F).." N", "V")
			Binesh.AddToHTML("q<sub>1</sub>: "..Binesh.Convert_e(q1).." C", "V")
			Binesh.AddToHTML("q<sub>2</sub>: "..Binesh.Convert_e(q2).." C", "V")
			Binesh.AddToHTML("r: ?", "V")
		end
	end
end