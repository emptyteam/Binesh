function Binesh.F13_1()
	if m_Zoom == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "��ѐ �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1) then
		if p_Glass ~= nil and q_Glass ~= nil then
			Binesh.CreateHTMLFile("m = <span>q/p</span>")
			m_Zoom = q_Glass/p_Glass
			
			Binesh.AddToHTML("m = <span>"..Binesh.Convert_e(q_Glass).."/"..Binesh.Convert_e(p_Glass).."<span> &#8658; m = "..Binesh.Convert_e(m_Zoom))
			
			Binesh.AddToHTML("p: "..Binesh.Convert_e(p_Glass).."m", "V")
			Binesh.AddToHTML("q: "..Binesh.Convert_e(q_Glass).."m", "V")
			Binesh.AddToHTML("m: ?", "V")
		end
	end
	
	if q_Glass == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1) then
		if m_Zoom ~= nil and p_Glass ~= nil then
			Binesh.CreateHTMLFile("m = <span>q/p</span>", "q = m*p")
			q_Glass = m_Zoom*p_Glass
			
			Binesh.AddToHTML("q = "..Binesh.Convert_e(m_Zoom).."*"..Binesh.Convert_e(p_Glass).." &#8658; q = "..Binesh.Convert_e(q_Glass).." m")
			
			Binesh.AddToHTML("m: "..Binesh.Convert_e(m_Zoom), "V")
			Binesh.AddToHTML("p: "..Binesh.Convert_e(p_Glass).."m", "V")
			Binesh.AddToHTML("q: ?", "V")
		end
	end
	
	if p_Glass == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "p") ~= -1) then
		if q_Glass ~= nil and m_Zoom ~= nil then
			Binesh.CreateHTMLFile("m = <span>q/p</span>", "p = <span>q/m</span>")
			p_Glass = q_Glass/m_Zoom
			
			Binesh.AddToHTML("p = <span>"..Binesh.Convert_e(q_Glass).."/"..Binesh.Convert_e(m_Zoom).."<span> &#8658; p = "..Binesh.Convert_e(p_Glass).." m")
			
			Binesh.AddToHTML("m: "..Binesh.Convert_e(m_Zoom), "V")
			Binesh.AddToHTML("q: "..Binesh.Convert_e(q_Glass).."m", "V")
			Binesh.AddToHTML("p: ?", "V")
		end
	end
end