if m_Zoom == nil then
	Binesh.AddUnknown("»“—ê ‰„«ÌÌ", "m")
end

if ApBp == nil then
	Binesh.AddUnknown("”«ÌÂ ÿÊ·", "A`B`")
end

if AB == nil then
	Binesh.AddUnknown("Ã”„ ÿÊ·", "AB")
end

Findm_Zoom = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "»“—ê ‰„«ÌÌ")
if Findm_Zoom ~= -1 and ListBox.GetItemData("unknowns", Findm_Zoom) == "m" and ListBox.FindItem("Words", -1, LB_BYTEXT, "»“—ê ‰„«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1 then
	if ApBp ~= nil and AB ~= nil then
		Binesh.CreateHTMLFile("m = <span>A`B`/AB</span>")
		m_Zoom = ApBp/AB
		
		Binesh.AddToHTML("m = <span>"..ApBp.."/"..AB.."<span> &#8658; m = "..m_Zoom)
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("A`B`: "..ApBp.."m", "V")
		Binesh.AddToHTML("AB: "..AB.."m", "V")
		Binesh.AddToHTML("m: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "»“—ê ‰„«ÌÌ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "m");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindApBp = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”«ÌÂ ÿÊ·");
if FindApBp ~= -1 and ListBox.GetItemData("unknowns", FindApBp) == "A`B`" and ListBox.FindItem("Words", -1, LB_BYTEXT, "”«ÌÂ ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "A`B`") ~= -1 then
	if m_Zoom ~= nil and AB ~= nil then
		Binesh.CreateHTMLFile("m = <span>A`B`/AB</span>", "A`B` = m*AB")
		ApBp = m_Zoom*AB
		
		Binesh.AddToHTML("A`B` = "..m_Zoom.."*"..AB.." &#8658; A`B` = "..ApBp.." m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("m: "..m_Zoom, "V")
		Binesh.AddToHTML("AB: "..AB.."m", "V")
		Binesh.AddToHTML("A`B`: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”«ÌÂ ÿÊ·");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "A`B`");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindAB = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã”„ ÿÊ·")
if FindAB ~= -1 and ListBox.GetItemData("unknowns", FindAB) == "AB" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã”„ ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "AB") ~= -1 then
	if ApBp ~= nil and m_Zoom ~= nil then
		Binesh.CreateHTMLFile("m = <span>A`B`/AB</span>", "AB = <span>A`B`/m</span>")
		AB = ApBp/m_Zoom
		
		Binesh.AddToHTML("AB = <span>"..ApBp.."/"..m_Zoom.."<span> &#8658; AB = "..AB.." m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("m: "..m_Zoom, "V")
		Binesh.AddToHTML("A`B`: "..ApBp.."m", "V")
		Binesh.AddToHTML("AB: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã”„ ÿÊ·");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "AB");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end