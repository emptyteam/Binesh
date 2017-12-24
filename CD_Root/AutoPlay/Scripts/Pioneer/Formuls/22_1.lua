if m_Zoom == nil then
	Binesh.AddUnknown("»“—ê ‰„«ÌÌ", "m")
end

if p_Lens == nil then
	Binesh.AddUnknown("›«’·Â Ã”„", "P")
end

if q_Lens == nil then
	Binesh.AddUnknown("›«’·Â ”«ÌÂ", "q")
end

Findm_Zoom = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "»“—ê ‰„«ÌÌ");
if Findm_Zoom ~= -1 and ListBox.GetItemData("unknowns", Findm_Zoom) == "m" and ListBox.FindItem("Words", -1, LB_BYTEXT, "»“—ê ‰„«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1 then
	if p_Lens ~= nil and q_Lens ~= nil then
		Binesh.CreateHTMLFile("m = <span>q/p</span>")
		m_Zoom = q_Lens/p_Lens
		
		Binesh.AddToHTML("m = <span>"..q_Lens.."/"..p_Lens.."<span> &#8658; m = "..m_Zoom)
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("p: "..p_Lens.." m", "V")
		Binesh.AddToHTML("q: "..q_Lens.." m", "V")
		Binesh.AddToHTML("m: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "»“—ê ‰„«ÌÌ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "m");
		if unknownPersianindex == unknownSymbolindex then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findq_Lens = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â ”«ÌÂ");
if Findq_Lens ~= -1 and ListBox.GetItemData("unknowns", Findq_Lens) == "q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â ”«ÌÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
	if m_Zoom ~= nil and p_Lens ~= nil then
		Binesh.CreateHTMLFile("m = <span>q/p</span>", "q = mp")
		q_Lens = m_Zoom*p_Lens
		
		Binesh.AddToHTML("q = "..m_Zoom.."*"..p_Lens.." &#8658; q = "..q_Lens.." m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("m: "..m_Zoom, "V")
		Binesh.AddToHTML("q: "..q_Lens.." m", "V")
		Binesh.AddToHTML("p: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â ”«ÌÂ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
		if unknownPersianindex == unknownSymbolindex then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findp_Lens = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â Ã”„");
if Findp_Lens ~= -1 and ListBox.GetItemData("unknowns", Findp_Lens) == "p" and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â Ã”„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "p") ~= -1 then
	if q_Lens ~= nil and m_Zoom ~= nil then
		Binesh.CreateHTMLFile("m = <span>q/p</span>", "p = <span>q/m</span>")
		p_Lens = q_Lens/m_Zoom
		
		Binesh.AddToHTML("p = <span>"..q_Lens.."/"..m_Zoom.."<span> &#8658; p = "..p_Lens.." m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("m: "..m_Zoom, "V")
		Binesh.AddToHTML("p: "..p_Lens.." m", "V")
		Binesh.AddToHTML("q: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â Ã”„");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "p");
		if unknownPersianindex == unknownSymbolindex then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end