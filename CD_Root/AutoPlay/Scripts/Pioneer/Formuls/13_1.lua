if m_Glass == nil then
	Binesh.AddUnknown("¬Ì‰Â »“—ê ‰„«ÌÌ", "m")
end

if p_Glass == nil then
	Binesh.AddUnknown("›«’·Â ¬Ì‰Â Ã”„", "p")
end

if q_Glass == nil then
	Binesh.AddUnknown("›«’·Â ¬Ì‰Â ”«ÌÂ", "q")
end

Findm_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "¬Ì‰Â »“—ê ‰„«ÌÌ");
if Findm_Glass ~= -1 and ListBox.GetItemData("unknowns", Findm_Glass) == "m" then
	if p_Glass ~= nil and q_Glass ~= nil then
		Binesh.CreateHTMLFile("m = <span>q/p</span>")
		m_Glass = q_Glass/p_Glass
		
		Binesh.AddToHTML("m = <span>"..q_Glass.."/"..p_Glass.."<span> &#8658; m = "..m_Glass)
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("p: "..p_Glass.."m", "V")
		Binesh.AddToHTML("q: "..q_Glass.."m", "V")
		Binesh.AddToHTML("m: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "¬Ì‰Â »“—ê ‰„«ÌÌ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "m");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findq_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â ¬Ì‰Â ”«ÌÂ");
if Findq_Glass ~= -1 and ListBox.GetItemData("unknowns", Findq_Glass) == "q" then
	if m_Glass ~= nil and p_Glass ~= nil then
		Binesh.CreateHTMLFile("m = <span>q/p</span>", "q = m*p")
		q_Glass = m_Glass*p_Glass
		
		Binesh.AddToHTML("q = "..m_Glass.."*"..p_Glass.." &#8658; q = "..q_Glass.." m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("m: "..m_Glass, "V")
		Binesh.AddToHTML("p: "..p_Glass.."m", "V")
		Binesh.AddToHTML("q: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â ¬Ì‰Â Ã”„");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findp_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â ¬Ì‰Â Ã”„");
if Findp_Glass ~= -1 and ListBox.GetItemData("unknowns", Findp_Glass) == "p" then
	if q_Glass ~= nil and m_Glass ~= nil then
		Binesh.CreateHTMLFile("m = <span>q/p</span>", "p = <span>q/m</span>")
		p_Glass = q_Glass/m_Glass
		
		Binesh.AddToHTML("p = <span>"..q_Glass.."/"..m_Glass.."<span> &#8658; p = "..p_Glass.." m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("m: "..m_Glass, "V")
		Binesh.AddToHTML("q: "..q_Glass.."m", "V")
		Binesh.AddToHTML("p: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â ¬Ì‰Â ”«ÌÂ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "p");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end