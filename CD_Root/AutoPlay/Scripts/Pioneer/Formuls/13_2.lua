if m_Glass == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ��ѐ �����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'm' then
		ListBox.AddItem("unknowns", "���� ��ѐ �����", "m");
	end
end

if ApBp == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'ApBp' then
		ListBox.AddItem("unknowns", "���� ���", "A`B`");
	end
end

if AB == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��� ���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'AB' then
		ListBox.AddItem("unknowns", "��� ���", "AB");
	end
end

Findm_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ��ѐ �����")
FindApBp = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ���");
FindAB = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��� ���")

if Findm_Glass ~= -1 and ListBox.GetItemData("unknowns", Findm_Glass) == "m" then
	if ApBp ~= nil and AB ~= nil then
		Binesh.CreateHTMLFile("m = <span>A`B`/AB</span>")
		m_Glass = ApBp/AB
		
		Binesh.AddToHTML("m = <span>"..ApBp.."/"..AB.."<span> &#8658; m = "..m_Glass)
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ��ѐ �����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "m");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindApBp ~= -1 and ListBox.GetItemData("unknowns", FindApBp) == "A`B`" then
	if m_Glass ~= nil and AB ~= nil then
		Binesh.CreateHTMLFile("m = <span>A`B`/AB</span>", "A`B` = mAB")
		ApBp = m_Glass*AB
		
		Binesh.AddToHTML("A`B` = "..m_Glass.."*"..AB.." &#8658; A`B` = "..ApBp.."m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "A`B`");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindAB ~= -1 and ListBox.GetItemData("unknowns", FindAB) == "AB" then
	if ApBp ~= nil and m_Glass ~= nil then
		Binesh.CreateHTMLFile("m = <span>A`B`/AB</span>", "AB = <span>A`B`/m</span>")
		AB = ApBp/m_Glass
		
		Binesh.AddToHTML("AB = <span>"..ApBp.."/"..m_Glass.."<span> &#8658; AB = "..AB.."m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "AB");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end