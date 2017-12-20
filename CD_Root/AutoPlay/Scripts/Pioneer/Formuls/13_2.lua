if m_Glass == nil then
	Binesh.AddUnknown("¬Ì‰Â »“—ê ‰„«ÌÌ", "m")
end

if ApBp == nil then
	Binesh.AddUnknown("”«ÌÂ ÿÊ·", "A`B`")
end

if AB == nil then
	Binesh.AddUnknown("Ã”„ ÿÊ·", "AB")
end

Findm_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "¬Ì‰Â »“—ê ‰„«ÌÌ")
if Findm_Glass ~= -1 and ListBox.GetItemData("unknowns", Findm_Glass) == "m" then
	if ApBp ~= nil and AB ~= nil then
		Binesh.CreateHTMLFile("m = <span>A`B`/AB</span>")
		m_Glass = ApBp/AB
		
		Binesh.AddToHTML("m = <span>"..ApBp.."/"..AB.."<span> &#8658; m = "..m_Glass)
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("A`B`: "..ApBp.."m", "V")
		Binesh.AddToHTML("AB: "..AB.."m", "V")
		Binesh.AddToHTML("m: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "¬Ì‰Â »“—ê ‰„«ÌÌ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "m");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindApBp = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”«ÌÂ ÿÊ·");
if FindApBp ~= -1 and ListBox.GetItemData("unknowns", FindApBp) == "A`B`" then
	if m_Glass ~= nil and AB ~= nil then
		Binesh.CreateHTMLFile("m = <span>A`B`/AB</span>", "A`B` = m*AB")
		ApBp = m_Glass*AB
		
		Binesh.AddToHTML("A`B` = "..m_Glass.."*"..AB.." &#8658; A`B` = "..ApBp.." m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("m: "..m_Glass, "V")
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
if FindAB ~= -1 and ListBox.GetItemData("unknowns", FindAB) == "AB" then
	if ApBp ~= nil and m_Glass ~= nil then
		Binesh.CreateHTMLFile("m = <span>A`B`/AB</span>", "AB = <span>A`B`/m</span>")
		AB = ApBp/m_Glass
		
		Binesh.AddToHTML("AB = <span>"..ApBp.."/"..m_Glass.."<span> &#8658; AB = "..AB.." m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("m: "..m_Glass, "V")
		Binesh.AddToHTML("A`B`: "..ApBp.."m", "V")
		Binesh.AddToHTML("AB: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã”„ ÿÊ·");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "AB");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end