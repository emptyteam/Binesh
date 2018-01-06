function Binesh.F12()
	if f == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â ò«‰Ê‰Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "f") ~= -1 then
		if q_Glass ~= nil and p_Glass ~= nil then
			Binesh.CreateHTMLFile("<span>1/f</span> = <span>1/p</span> + <span>1/q</span>", "f = <span>pq/p+q</span>")
			f = p_Glass*q_Glass/(p_Glass+q_Glass)
			
			Binesh.AddToHTML("f = <span>"..p_Glass.."*"..q_Glass.."/"..p_Glass.."+"..q_Glass.."</span> &#8658; f = "..f.." m")
			
			Binesh.AddToHTML("p: "..p_Glass.."m", "V")
			Binesh.AddToHTML("q: "..q_Glass.."m", "V")
			Binesh.AddToHTML("f: ?", "V")
		end
	end
	
	if q_Glass == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â ”«ÌÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
		if p_Glass ~= nil and f ~= nil then
			Binesh.CreateHTMLFile("<span>1/f</span> = <span>1/p</span> + <span>1/q</span>", "<span>1/q</span> = <span>1/f</span> - <span>1/p</span> &#8658; q = - <span>fp/f-p</span>")
			q_Glass = -1*(p_Glass*f/(f-p_Glass))
			
			Binesh.AddToHTML("q = - <span>"..f.."*"..p_Glass.."/"..f.."-"..p_Glass.."</span> &#8658; q = "..q_Glass.." m")
			
			Binesh.AddToHTML("p: "..p_Glass.."m", "V")
			Binesh.AddToHTML("f: "..f.."m", "V")
			Binesh.AddToHTML("q: ?", "V")
		end
	end
	
	if p_Glass == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â Ã”„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "p") ~= -1 then
		if q_Glass ~= nil and f ~= nil then
			Binesh.CreateHTMLFile("<span>1/f</span> = <span>1/p</span> + <span>1/q</span>", "<span>1/p</span> = <span>1/f</span> - <span>1/q</span> &#8658; p = <span>fq/f-q</span>")
			p_Glass = -1*(f*q_Glass/(f-q_Glass))
			
			Binesh.AddToHTML("p = <span>"..f.."*"..q_Glass.."/"..f.."-"..q_Glass.."</span> &#8658; p = "..p_Glass.." m")
			
			Binesh.AddToHTML("q: "..q_Glass.."m", "V")
			Binesh.AddToHTML("f: "..f.."m", "V")
			Binesh.AddToHTML("p: ?", "V")
		end
	end
end