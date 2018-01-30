function Binesh.F13_1()
	if m_Zoom == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "»“—ê ‰„«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1) then
		if p_Glass ~= nil and q_Glass ~= nil then
			Binesh.CreateHTMLFile("m = <span>q/p</span>")
			m_Zoom = q_Glass/p_Glass
			
			Binesh.AddToHTML("m = <span>"..q_Glass.."/"..p_Glass.."<span> &#8658; m = "..m_Zoom)
			
			Binesh.AddToHTML("p: "..p_Glass.."m", "V")
			Binesh.AddToHTML("q: "..q_Glass.."m", "V")
			Binesh.AddToHTML("m: ?", "V")
		end
	end
	
	if q_Glass == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â ”«ÌÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1) then
		if m_Zoom ~= nil and p_Glass ~= nil then
			Binesh.CreateHTMLFile("m = <span>q/p</span>", "q = m*p")
			q_Glass = m_Zoom*p_Glass
			
			Binesh.AddToHTML("q = "..m_Zoom.."*"..p_Glass.." &#8658; q = "..q_Glass.." m")
			
			Binesh.AddToHTML("m: "..m_Zoom, "V")
			Binesh.AddToHTML("p: "..p_Glass.."m", "V")
			Binesh.AddToHTML("q: ?", "V")
		end
	end
	
	if p_Glass == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â ”«ÌÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "p") ~= -1) then
		if q_Glass ~= nil and m_Zoom ~= nil then
			Binesh.CreateHTMLFile("m = <span>q/p</span>", "p = <span>q/m</span>")
			p_Glass = q_Glass/m_Zoom
			
			Binesh.AddToHTML("p = <span>"..q_Glass.."/"..m_Zoom.."<span> &#8658; p = "..p_Glass.." m")
			
			Binesh.AddToHTML("m: "..m_Zoom, "V")
			Binesh.AddToHTML("q: "..q_Glass.."m", "V")
			Binesh.AddToHTML("p: ?", "V")
		end
	end
end