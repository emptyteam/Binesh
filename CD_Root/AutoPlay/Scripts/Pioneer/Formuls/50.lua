if W == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'W' then
		ListBox.AddItem("unknowns", "���", "W");
	end
end

if h == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "������")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'h' then
		ListBox.AddItem("unknowns", "������", "h");
	end
end

if m == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'm' then
		ListBox.AddItem("unknowns", "���", "m");
	end
end


FindW = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
if FindW ~= -1 and ListBox.GetItemData("unknowns", FindW) == "W" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1 then
	if h ~= nil and m ~= nil then
		Binesh.CreateHTMLFile("W<sub>mg</sub> = m*g*h")
		W = m*Zarib.g*h
		
		Binesh.AddToHTML("W<sub>mg</sub> = "..m.."*"..Zarib.g.."*"..h.." &#8658; W<sub>mg</sub> = "..W.." J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "W");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findh = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "������");
if Findh ~= -1 and ListBox.GetItemData("unknowns", Findh) == "h" and ListBox.FindItem("Words", -1, LB_BYTEXT, "������") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "h") ~= -1 then
	if W ~= nil and m ~= nil then
		Binesh.CreateHTMLFile("W<sub>mg</sub> = m*g*h", "h = <span>W<sub>mg</sub>/m*g</span>")
		h = W/m*Zarib.g
		
		Binesh.AddToHTML("h = <span>"..W.."/"..m.."*"..Zarib.g.."</span> &#8658; h = "..h.." m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "������");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "h");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findm = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
if Findm ~= -1 and ListBox.GetItemData("unknowns", Findm) == "m" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1 then
	if W ~= nil and h ~= nil then
		Binesh.CreateHTMLFile("W<sub>mg</sub> = m*g*h", "m = <span>W<sub>mg</sub>/h*g</span>")
		m = W/h*Zarib.g
		
		Binesh.AddToHTML("m = <span>"..W.."/"..h.."*"..Zarib.g.."</span> &#8658; m = "..m.." Kg")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "m");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end