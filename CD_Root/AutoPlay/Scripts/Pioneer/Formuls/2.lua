if U == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÇäÑŽí")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'U' then
		ListBox.AddItem("unknowns", "ÇäÑŽí", "U");
	end
end

if m == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÌÑã")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'm' then
		ListBox.AddItem("unknowns", "ÌÑã", "m");
	end
end

if h == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÇÑÊÝÇÚ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'h' then
		ListBox.AddItem("unknowns", "ÇÑÊÝÇÚ", "h");
	end
end

FindU = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÇäÑŽí");
if FindU ~= -1 and ListBox.GetItemData("unknowns", FindU) == "U" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÇäÑŽí") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1 then
	if m ~= nil and h ~= nil then
		Binesh.CreateHTMLFile("U = mgh")
		U = m*9.8*h
		
		Binesh.AddToHTML("U = "..m.."*9.8*"..h.." &#8658; U = "..U.." J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÇäÑŽí");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "U");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findm = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÌÑã");
if Findm ~= -1 and ListBox.GetItemData("unknowns", Findm) == "m" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÌÑã") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1 then
	if U ~= nil and h ~= nil then
		Binesh.CreateHTMLFile("U = mgh", "m = <span>U/gh</span>")
		m = U/(9.8*h)
		
		Binesh.AddToHTML("m = <span>"..U.."/9.8*"..h.."</span> &#8658; m = "..m.." Kg")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÌÑã");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "m");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findh = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÇÑÊÝÇÚ");
if Findh ~= -1 and ListBox.GetItemData("unknowns", Findh) == "h" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÇÑÊÝÇÚ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "h") ~= -1 then
	if U ~= nil and m ~= nil then
		Binesh.CreateHTMLFile("U = mgh", "h = <span>U/mg</span>")
		h = U/(m*9.8)
		
		Binesh.AddToHTML("h = <span>"..U.."/"..m.."*9.8</span> &#8658; h = "..h.." m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÇÑÊÝÇÚ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "h");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end