function Binesh.F90()
	if SSigma == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "çê«·Ì ”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "SSigma") ~= -1 then
		if q ~= nil and A ~= nil then
			Binesh.CreateHTMLFile("SSigma = <span>q/A</span>")
			SSigma = q/A
		
			Binesh.AddToHTML("SSigma = <span>"..q.."/"..A.."</span> &#8658; SSigma = "..SSigma.." C/m<sup>2</sup>")
			
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("q: "..q.." C", "V")
			Binesh.AddToHTML("SSigma: ?", "V")
		end
	end
	
	if q == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
		if SSigma ~= nil and A ~= nil then
			Binesh.CreateHTMLFile("SSigma = <span>q/A</span>", "q = SSigmaA")
			q = SSigma*A
			
			Binesh.AddToHTML("q = "..SSigma.."*"..A.." &#8658; q = "..q.." C");
			
			Binesh.AddToHTML("SSigma: "..SSigma.." C/m<sup>2</sup>", "V")
			Binesh.AddToHTML("q: "..q.." C", "V")
			Binesh.AddToHTML("A: ?", "V")
		end
	end
	
	if A == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã”„ ”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "A") ~= -1 then
		if SSigma ~= nil and q ~= nil then
			Binesh.CreateHTMLFile("SSigma = <span>q/A</span>", "A = <span>q/SSigma</span>")
			
			A = q/SSigma
			
			Binesh.AddToHTML("A = <span>"..q.."/"..SSigma.."</span> &#8658; A = "..A.." m<sup>2</sup>")
			
			Binesh.AddToHTML("SSigma: "..SSigma.." C/m<sup>2</sup>", "V")
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("q: ?", "V")
		end
	end
end