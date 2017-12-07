if W == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��ю� ������")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'W' then
		ListBox.AddItem("unknowns", "��ю� ������", "W");
	end
end

if QC == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'QC' then
		ListBox.AddItem("unknowns", "���� ���", "QC");
	end
end

if QH == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'QH' then
		ListBox.AddItem("unknowns", "���� ���", "QH");
	end
end

FindW = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��ю� ������");
if FindQH ~= -1 and ListBox.GetItemData("unknowns", FindQH) == "QH" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "QH") ~= -1 then 
	if QC ~= nil and W ~= nil then
		Binesh.CreateHTMLFile("|Q<sub>H</sub>| = W+Q<sub>C</sub>")
		QH = Math.Abs(W+QC);
		
		Binesh.AddToHTML("|Q<sub>H</sub>| = "..W.."+"..QC.." &#8658; |Q<sub>H</sub>| = "..QH.." J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "QH");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindQC = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ���");
if FindW ~= -1 and ListBox.GetItemData("unknowns", FindW) == "W" and ListBox.FindItem("Words", -1, LB_BYTEXT, "��ю� ������") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1 then 
	if QC ~= nil and QH ~= nil then
		Binesh.CreateHTMLFile("|Q<sub>H</sub>| = W+Q<sub>C</sub>", "W = |Q<sub>H</sub>|-Q<sub>C</sub>")
		W = Math.Abs(QH)-QC
		
		Binesh.AddToHTML("W = |"..QH.."|-"..QC.." &#8658; W = "..W.." J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��ю� ������");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "W");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindQH = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ���");
if FindQC ~= -1 and ListBox.GetItemData("unknowns", FindQC) == "QC" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "QC") ~= -1 then 
	if QH ~= nil and W ~= nil then
		Binesh.CreateHTMLFile("|Q<sub>H</sub>| = W+Q<sub>C</sub>", "Q<sub>C</sub> = |Q<sub>H</sub>|-W")
		QC = Math.Abs(QH)-W
		
		Binesh.AddToHTML("Q<sub>C</sub> = |"..QH.."|-"..W.." &#8658; Q<sub>C</sub> = "..QC.." J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "QC");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end