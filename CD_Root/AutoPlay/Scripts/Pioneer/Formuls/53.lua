if E_53 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��ю� �����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'E' then
		ListBox.AddItem("unknowns", "��ю� �����", "E");
	end
end

if K == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��ю� �����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'K' then
		ListBox.AddItem("unknowns", "��ю� �����", "K");
	end
end

if U == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��ю� �������")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'U' then
		ListBox.AddItem("unknowns", "��ю� �������", "U");
	end
end

FindE_53 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��ю� �����")
FindK = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��ю� �����");
FindU = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��ю� �������")

if FindE_53 ~= -1 and ListBox.GetItemData("unknowns", FindE_53) == "E" and ListBox.FindItem("Words", -1, LB_BYTEXT, "��ю� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "E") ~= -1 then
	if K ~= nil and U ~= nil then
		Binesh.CreateHTMLFile("E = K+U")
		E_53 = K+U
		
		Binesh.AddToHTML("E = "..K.."+"..U.." &#8658; E = "..E_53.."J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��ю� �����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "E");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindK ~= -1 and ListBox.GetItemData("unknowns", FindK) == "K" and ListBox.FindItem("Words", -1, LB_BYTEXT, "��ю� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "K") ~= -1 then
	if E ~= nil and U ~= nil then
		Binesh.CreateHTMLFile("E = K+U", "K = E-U")
		K = E_53-U
		
		Binesh.AddToHTML("K = "..E_53.."-"..U.." &#8658; K = "..K.."J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��ю� �����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "K");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindU ~= -1 and ListBox.GetItemData("unknowns", FindU) == "U" and ListBox.FindItem("Words", -1, LB_BYTEXT, "��ю� �������") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1 then
	if K ~= nil and E ~= nil then
		Binesh.CreateHTMLFile("E = K+U", "U = E-K")
		U = E_53-K
		
		Binesh.AddToHTML("U = "..E_53.."-"..K.." &#8658; U = "..U.."J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��ю� �������");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "U");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end