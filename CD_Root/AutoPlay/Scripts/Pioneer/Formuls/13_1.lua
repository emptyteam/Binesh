function Binesh.F13_1()
	if m_Zoom == nil then
		Binesh.AddUnknown("��ѐ �����", "m")
	end
	
	if p_Glass == nil then
		Binesh.AddUnknown("����� ���", "p")
	end
	
	if q_Glass == nil then
		Binesh.AddUnknown("����� ����", "q")
	end
	
	Findm_Zoom = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��ѐ �����");
	if Findm_Zoom ~= -1 and ListBox.GetItemData("unknowns", Findm_Zoom) == "m" and ListBox.FindItem("Words", -1, LB_BYTEXT, "��ѐ �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1 then
		if p_Glass ~= nil and q_Glass ~= nil then
			Binesh.CreateHTMLFile("m = <span>q/p</span>")
			m_Zoom = q_Glass/p_Glass
			
			Binesh.AddToHTML("m = <span>"..q_Glass.."/"..p_Glass.."<span> &#8658; m = "..m_Zoom)
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("p: "..p_Glass.."m", "V")
			Binesh.AddToHTML("q: "..q_Glass.."m", "V")
			Binesh.AddToHTML("m: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��ѐ �����");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "m");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findq_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����");
	if Findq_Glass ~= -1 and ListBox.GetItemData("unknowns", Findq_Glass) == "q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
		if m_Zoom ~= nil and p_Glass ~= nil then
			Binesh.CreateHTMLFile("m = <span>q/p</span>", "q = m*p")
			q_Glass = m_Zoom*p_Glass
			
			Binesh.AddToHTML("q = "..m_Zoom.."*"..p_Glass.." &#8658; q = "..q_Glass.." m")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("m: "..m_Zoom, "V")
			Binesh.AddToHTML("p: "..p_Glass.."m", "V")
			Binesh.AddToHTML("q: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findp_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
	if Findp_Glass ~= -1 and ListBox.GetItemData("unknowns", Findp_Glass) == "p" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "p") ~= -1 then
		if q_Glass ~= nil and m_Zoom ~= nil then
			Binesh.CreateHTMLFile("m = <span>q/p</span>", "p = <span>q/m</span>")
			p_Glass = q_Glass/m_Zoom
			
			Binesh.AddToHTML("p = <span>"..q_Glass.."/"..m_Zoom.."<span> &#8658; p = "..p_Glass.." m")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("m: "..m_Zoom, "V")
			Binesh.AddToHTML("q: "..q_Glass.."m", "V")
			Binesh.AddToHTML("p: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "p");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end