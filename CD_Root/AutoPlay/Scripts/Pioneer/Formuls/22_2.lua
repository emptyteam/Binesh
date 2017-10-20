if m_Lens == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ��ѐ �����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'm' then
		ListBox.AddItem("unknowns", "���� ��ѐ �����", "m");
	end
end

if ApBp_Lens == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'A`B`' then
		ListBox.AddItem("unknowns", "���� ���", "A`B`");
	end
end

if AB_Lens == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��� ���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'AB' then
		ListBox.AddItem("unknowns", "��� ���", "AB");
	end
end

Findm_Lens = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ��ѐ �����0")
FindApBp_Lens = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ���");
FindAB_Lens = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��� ���")

if Findm_Lens ~= -1 and ListBox.GetItemData("unknowns", Findm_Lens) == "m" then
	if ApBp_Lens ~= nil and AB_Lens ~= nil then
		Binesh.CreateHTMLFile("m = <span>A`B`/AB</span>")
		m_Lens = ApBp_Lens/AB_Lens
		
		Binesh.AddToHTML("m = <span>"..ApBp_Lens.."/"..AB_Lens.."<span> &#8658; m = "..m_Lens)
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("A`B` = "..ApBp_Lens.." m","V")
		Binesh.AddToHTML("AB = "..AB_Lens.." m","V")
		Binesh.AddToHTML("m = "..m_Lens,"V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ��ѐ �����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "m");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindApBp_Lens ~= -1 and ListBox.GetItemData("unknowns", FindApBp_Lens) == "A`B`" then
	if m_Lens ~= nil and AB_Lens ~= nil then
		Binesh.CreateHTMLFile("m = <span>A`B`/AB</span>", "A`B` = mAB")
		ApBp_Lens = m_Lens*AB_Lens
		
		Binesh.AddToHTML("A`B` = "..m_Lens.."*"..AB_Lens.." &#8658; A`B` = "..ApBp_Lens.." m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("m = "..m_Lens,"V")
		Binesh.AddToHTML("AB = "..AB_Lens.." m","V")
		Binesh.AddToHTML("A`B` = "..ApBp_Lens.." m","V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "A`B`");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindAB_Lens ~= -1 and ListBox.GetItemData("unknowns", FindAB_Lens) == "AB" then
	if ApBp_Lens ~= nil and m_Lens ~= nil then
		Binesh.CreateHTMLFile("m = <span>A`B`/AB</span>", "AB = <span>A`B`/m</span>")
		AB_Lens = ApBp_Lens/m_Lens
		
		Binesh.AddToHTML("AB = <span>"..ApBp_Lens.."/"..m_Lens.."<span> &#8658; AB = "..AB_Lens.." m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("A`B` = "..ApBp_Lens.." m","V")
		Binesh.AddToHTML("m = "..m_Lens,"V")
		Binesh.AddToHTML("AB = "..AB_Lens.." m","V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "AB");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end