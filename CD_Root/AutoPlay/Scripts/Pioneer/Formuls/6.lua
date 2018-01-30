function Binesh.F6()
	if I == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1) then
		if q ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("I = <span>q/t</span>")
			I = (q)/(t)
			
			Binesh.AddToHTML("I = <span>"..q.."/"..t.."</span> &#8658; I = "..I.." A")
			
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("q: "..q.." C", "V")
			Binesh.AddToHTML("I: ?", "V")
		end
	end
	
	if q == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1) then
		if I ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("I = <span>q/t</span>", "q = I*t")
			q = (I)*(t)
			
			Binesh.AddToHTML("q = "..I.."*"..t.." &#8658; q = "..q.." C")
			
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("q: ?", "V")
		end
	end
	
	if t == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1) then
		if q ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("I = <span>q/t</span>", "t = <span>q/I</span>")
			t = (q)/(I)
			
			Binesh.AddToHTML("t = <span>"..q.."/"..I.."</span> &#8658; t = "..t.." s")
			
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("q: "..q.." C", "V")
			Binesh.AddToHTML("t: ?", "V")
		end
	end
end