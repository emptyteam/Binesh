function Binesh.F21()
	if f == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "⁄œ”Ì ›«’·Â ò«‰Ê‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "f") ~= -1 then
		if q_Lens ~= nil and p_Lens ~= nil then
			Binesh.CreateHTMLFile("<span>1/f</span> = <span>1/p+1/q</span>", "f = <span>qp/q+p</span>")
			f = q_Lens*p_Lens/q_Lens+p_Lens
			
			Binesh.AddToHTML("f = <span>"..q_Lens.."*"..p_Lens.."/"..q_Lens.."+"..p_Lens.."</span> &#8658; f = "..f.."m")
			
			Binesh.AddToHTML("p: "..p_Lens.." m", "V")
			Binesh.AddToHTML("q: "..q_Lens.." m", "V")
			Binesh.AddToHTML("f: ?", "V")
		end
	end
	
	if q_Lens == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â ”«ÌÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
		if p_Lens ~= nil and f ~= nil then
			Binesh.CreateHTMLFile("1/f = 1/p+1/q", "1/q = 1/f-1/p")
			Binesh.AddToHTML("q = <span>fp/f-p</span> &#8658; ")
			q_Lens = f*p_Lens/(f-p_Lens)
			
			Binesh.AddToHTML("q = <span>"..f.."*"..p_Lens.."/"..f.."-"..p_Lens.."</span> &#8658; q = "..q_Lens.."m")
			
			Binesh.AddToHTML("p: "..p_Lens.." m", "V")
			Binesh.AddToHTML("f: "..s.." m", "V")
			Binesh.AddToHTML("q: ?", "V")
		end
	end
	
	if p_Lens == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â Ã”„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "p") ~= -1 then
		if q_Lens ~= nil and f ~= nil then
			Binesh.CreateHTMLFile("1/f = 1/p+1/q", "1/p = 1/f-1/q")
			Binesh.AddToHTML("p = <span>fq/f-q</span> &#8658; ")
			p_Lens = f*q_Lens/f-q_Lens
			
			Binesh.AddToHTML("p = <span>"..f.."*"..q_Lens.."/"..f.."-"..q_Lens.."</span> &#8658; p = "..p_Lens.."m")
			
			Binesh.AddToHTML("f: "..f.." m", "V")
			Binesh.AddToHTML("q: "..q_Lens.." m", "V")
			Binesh.AddToHTML("p: ?", "V")
		end
	end
end