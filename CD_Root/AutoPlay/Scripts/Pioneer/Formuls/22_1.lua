function Binesh.F22_1()
	if isLens == true then
		if m_Zoom == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "»“—ê ‰„«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1 then
			if p_Lens ~= nil and q_Lens ~= nil then
				Binesh.CreateHTMLFile("m = <span>q/p</span>")
				m_Zoom = q_Lens/p_Lens
				
				Binesh.AddToHTML("m = <span>"..q_Lens.."/"..p_Lens.."<span> &#8658; m = "..m_Zoom)
				
				Binesh.AddToHTML("p: "..p_Lens.." m", "V")
				Binesh.AddToHTML("q: "..q_Lens.." m", "V")
				Binesh.AddToHTML("m: ?", "V")
			end
		end
		
		if q_Lens == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â ”«ÌÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
			if m_Zoom ~= nil and p_Lens ~= nil then
				Binesh.CreateHTMLFile("m = <span>q/p</span>", "q = mp")
				q_Lens = m_Zoom*p_Lens
				
				Binesh.AddToHTML("q = "..m_Zoom.."*"..p_Lens.." &#8658; q = "..q_Lens.." m")
				
				Binesh.AddToHTML("m: "..m_Zoom, "V")
				Binesh.AddToHTML("q: "..q_Lens.." m", "V")
				Binesh.AddToHTML("p: ?", "V")
			end
		end
		
		if p_Lens == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â Ã”„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "p") ~= -1 then
			if q_Lens ~= nil and m_Zoom ~= nil then
				Binesh.CreateHTMLFile("m = <span>q/p</span>", "p = <span>q/m</span>")
				p_Lens = q_Lens/m_Zoom
				
				Binesh.AddToHTML("p = <span>"..q_Lens.."/"..m_Zoom.."<span> &#8658; p = "..p_Lens.." m")
				
				Binesh.AddToHTML("m: "..m_Zoom, "V")
				Binesh.AddToHTML("p: "..p_Lens.." m", "V")
				Binesh.AddToHTML("q: ?", "V")
			end
		end
	end -- isLens
end