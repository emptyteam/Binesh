if m_Glass == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ��ѐ �����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'm' then
		ListBox.AddItem("unknowns", "���� ��ѐ �����", "m");
	end
end

if p_Glass == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���� ���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'p' then
		ListBox.AddItem("unknowns", "����� ���� ���", "p");
	end
end

if q_Glass == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���� ����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'q' then
		ListBox.AddItem("unknowns", "����� ���� ����", "q");
	end
end

Findm_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ��ѐ �����")
Findp_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���� ���");
Findq_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���� ����")

if Findm_Glass ~= -1 and ListBox.GetItemData("unknowns", Findm_Glass) == "m" then
	if p_Glass ~= nil and q_Glass ~= nil then
		Binesh.CreateHTMLFile("m = <span>q/p</span>")
		m_Glass = q_Glass/p_Glass
		
		Binesh.AddToHTML("m = <span>"..q_Glass.."/"..p_Glass.."<span> &#8658; m = "..m_Glass.."")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ��ѐ �����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "m");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findq_Glass ~= -1 and ListBox.GetItemData("unknowns", Findq_Glass) == "q" then
	if m_Glass ~= nil and p_Glass ~= nil then
		Binesh.CreateHTMLFile("m = <span>q/p</span>", "q = mp")
		q_Glass = m_Glass*p_Glass
		
		Binesh.AddToHTML("q = "..m_Glass.."*"..p_Glass.." &#8658; q = "..q_Glass.."m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findp_Glass ~= -1 and ListBox.GetItemData("unknowns", Findp_Glass) == "p" then
	if q_Glass ~= nil and m_Glass ~= nil then
		Binesh.CreateHTMLFile("m = <span>q/p</span>", "p = <span>q/m</span>")
		p_Glass = q_Glass/m_Glass
		
		Binesh.AddToHTML("p = <span>"..q_Glass.."/"..m_Glass.."<span> &#8658; p = "..p_Glass.."m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���� ����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "p");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end