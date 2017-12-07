if R_Output == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "»«“œÂ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'R' then
		ListBox.AddItem("unknowns", "»«“œÂ", "R");
	end
end

if WP == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ  Ê·ÌœÌ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'W`' then
		ListBox.AddItem("unknowns", "«‰—éÌ  Ê·ÌœÌ", "W`");
	end
end

if W_Use == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ „’—›Ì")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'W' then
		ListBox.AddItem("unknowns", "«‰—éÌ „’—›Ì", "W");
	end
end

FindR_Output = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "»«“œÂ");
if R_Output ~= -1 and ListBox.GetItemData("unknowns", R_Output) == "R" and ListBox.FindItem("Words", -1, LB_BYTEXT, "»«“œÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1 then
	if WP ~= nil and W_Use ~= nil then
		Binesh.CreateHTMLFile("R = <span>W`/W</span>*100")
		R_Output = (WP/W_Use)*100
		
		Binesh.AddToHTML("R = <span>"..WP.."/"..W_Use.."</span>*100 &#8658; R = "..R_Output.."%")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "»«“œÂ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "R");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindWP = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ  Ê·ÌœÌ");
if FindWP ~= -1 and ListBox.GetItemData("unknowns", FindWP) == "W`" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ  Ê·ÌœÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W`") ~= -1 then
	if R_Output ~= nil and W_Use ~= nil then
		Binesh.CreateHTMLFile("R = <span>W`/W</span>*100", "W` = <span>RW/100</span>")
		WP = R_Output*W_Use/100
		
		Binesh.AddToHTML("W` = <span>"..R_Output.."*"..W_Use.."/100</span> &#8658; W` = "..WP.." J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ  Ê·ÌœÌ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "W`");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindW_Use = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ „’—›Ì");
if FindW_Use ~= -1 and ListBox.GetItemData("unknowns", FindW_Use) == "W" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ „’—›Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1 then
	if R_Output ~= nil and WP ~= nil then
		Binesh.CreateHTMLFile("R = <span>W`/W</span>*100", "W = 100*<span>W`/R</span>")
		W_Use = 100*WP/R_Output
		
		Binesh.AddToHTML("W = 100*<span>"..WP.."/"..R_Output.."</span> &#8658; W = "..W_Use.." J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ „’—›Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "W");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownindex);
		end
	end
end