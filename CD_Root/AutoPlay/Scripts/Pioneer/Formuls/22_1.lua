if m_Lens == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "⁄œ”Ì »“—ê ‰„«ÌÌ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'm' then
		ListBox.AddItem("unknowns", "⁄œ”Ì »“—ê ‰„«ÌÌ", "m");
	end
end

if p_Lens == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â ⁄œ”Ì Ã”„")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'p' then
		ListBox.AddItem("unknowns", "›«’·Â ⁄œ”Ì Ã”„", "p");
	end
end

if q_Lens == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â ⁄œ”Ì ”«ÌÂ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'q' then
		ListBox.AddItem("unknowns", "›«’·Â ⁄œ”Ì ”«ÌÂ", "q");
	end
end

Findm_Lens = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "⁄œ”Ì »“—ê ‰„«ÌÌ")
Findp_Lens = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â ⁄œ”Ì Ã”„");
Findq_Lens = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â ⁄œ”Ì ”«ÌÂ")

if Findm_Lens ~= -1 and ListBox.GetItemData("unknowns", Findm_Lens) == "m" then
	if p_Lens ~= nil and q_Lens ~= nil then
		Binesh.CreateHTMLFile("m = <span>q/p</span>")
		m_Lens = q_Lens/p_Lens
		
		Binesh.AddToHTML("m = <span>"..q_Lens.."/"..p_Lens.."<span> &#8658; m = "..m_Lens)
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("q = "..q_Lens.." m","V")
		Binesh.AddToHTML("p = "..p_Lens.." m","V")
		Binesh.AddToHTML("m = "..m_Lens,"V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "⁄œ”Ì »“—ê ‰„«ÌÌ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "m");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findq_Lens ~= -1 and ListBox.GetItemData("unknowns", Findq_Lens) == "q" then
	if m_Lens ~= nil and p_Lens ~= nil then
		Binesh.CreateHTMLFile("m = <span>q/p</span>", "q = mp")
		q_Lens = m_Lens*p_Lens
		
		Binesh.AddToHTML("q = "..m_Lens.."*"..p_Lens.." &#8658; q = "..q_Lens.." m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("m = "..m_Lens,"V")
		Binesh.AddToHTML("p = "..p_Lens.." m","V")
		Binesh.AddToHTML("q = "..q_Lens.." m","V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â ⁄œ”Ì ”«ÌÂ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findp_Lens ~= -1 and ListBox.GetItemData("unknowns", Findp_Lens) == "p" then
	if q_Lens ~= nil and m_Lens ~= nil then
		Binesh.CreateHTMLFile("m = <span>q/p</span>", "p = <span>q/m</span>")
		p_Lens = q_Lens/m_Lens
		
		Binesh.AddToHTML("p = <span>"..q_Lens.."/"..m_Lens.."<span> &#8658; p = "..p_Lens.." m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("q = "..q_Lens.." m","V")
		Binesh.AddToHTML("m = "..m_Lens,"V")
		Binesh.AddToHTML("p = "..p_Lens.." m","V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â ⁄œ”Ì Ã”„");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "p");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end