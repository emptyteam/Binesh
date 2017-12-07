if W_Out == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "˜ÇÑ ÎÇÑÌí")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'W' then
		ListBox.AddItem("unknowns", "˜ÇÑ ÎÇÑÌí", "W");
	end
end

if WE == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "˜ÇÑ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'WE' then
		ListBox.AddItem("unknowns", "˜ÇÑ", "WE");
	end
end

FindW_Out = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "˜ÇÑ ÎÇÑÌí");
if FindW_Out ~= -1 and ListBox.GetItemData("unknowns", FindW_Out) == "W" and ListBox.FindItem("Words", -1, LB_BYTEXT, "˜ÇÑ ÎÇÑÌí") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1 then
	if WE ~= nil then
		Binesh.CreateHTMLFile("W = -W<sub>E</sub>")
		W_Out = -WE
		
		Binesh.AddToHTML("W = -"..WE.." &#8658; W = "..W_Out.."J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "˜ÇÑ ÎÇÑÌí");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "W");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownindex);
		end
	end
end

FindWE = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "˜ÇÑ");
if FindWE ~= -1 and ListBox.GetItemData("unknowns", FindWE) == "WE" and ListBox.FindItem("Words", -1, LB_BYTEXT, "˜ÇÑ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "WE") ~= -1 then
	if W_Out ~= nil then
		Binesh.CreateHTMLFile("W = -W<sub>E</sub>", "W<sub>E</sub> = -W")
		WE = -W_Out
		
		Binesh.AddToHTML("WE = -"..W_Out.." &#8658; WE = "..WE.."J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "˜ÇÑ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "WE");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownindex);
		end
	end
end