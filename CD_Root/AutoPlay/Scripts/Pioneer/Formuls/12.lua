if p_Glass == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â ¬Ì‰Â Ã”„")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'p' then
		ListBox.AddItem("unknowns", "›«’·Â ¬Ì‰Â Ã”„", "p");
	end
end

if q_Glass == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â ¬Ì‰Â ”«ÌÂ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'q' then
		ListBox.AddItem("unknowns", "›«’·Â ¬Ì‰Â ”«ÌÂ", "q");
	end
end

if f == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "¬Ì‰Â ›«’·Â ò«‰Ê‰Ì")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'f' then
		ListBox.AddItem("unknowns", "¬Ì‰Â ›«’·Â ò«‰Ê‰Ì", "f");
	end
end

Findp_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â ¬Ì‰Â Ã”„")
Findq_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â ¬Ì‰Â ”«ÌÂ");
Findf = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "¬Ì‰Â ›«’·Â ò«‰Ê‰Ì")

if Findf ~= -1 and ListBox.GetItemData("unknowns", Findf) == "f" then
	if q_Glass ~= nil and p_Glass ~= nil then
		Binesh.CreateHTMLFile("<span>1/f</span> = <span>1/p</span>+<span>1/q</span>", "f = <span>pq/p+q</span>")
		f = p*q/p+q
		
		Binesh.AddToHTML("f = <span>"..p_Glass.."*"..q_Glass.."/"..p_Glass.."+"..q_Glass.."</span> &#8658; f = "..f.." m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("p = "..p_Glass.." m" ,"V")
		Binesh.AddToHTML("q = "..q_Glass.." m" ,"V")
		Binesh.AddToHTML("f = "..f.." m" ,"V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "¬Ì‰Â ›«’·Â ò«‰Ê‰Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "f");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findq_Glass ~= -1 and ListBox.GetItemData("unknowns", Findq_Glass) == "q" then
	if p_Glass ~= nil and f ~= nil then
		Binesh.CreateHTMLFile("<span>1/f</span> = <span>1/p</span>+<span>1/q</span>", "<span>1/q</span> = <span>1/f</span>-<span>1/p</span> &#8658; q = -<span>fp/f-p</span>")
		q_Glass = -1*(p_Glass*f/f-p_Glass)
		
		Binesh.AddToHTML("q = -<span>"..f.."*"..p_Glass.."/"..f.."-"..p_Glass.."</span> &#8658; q = "..q_Glass.." m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("p = "..p_Glass.." m" ,"V")
		Binesh.AddToHTML("f = "..f.." m" ,"V")
		Binesh.AddToHTML("q = "..q_Glass.." m" ,"V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â ¬Ì‰Â ”«ÌÂ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findp_Glass ~= -1 and ListBox.GetItemData("unknowns", Findp_Glass) == "p" then
	if q_Glass ~= nil and f ~= nil then
		Binesh.CreateHTMLFile("<span>1/f</span> = <span>1/p</span>+<span>1/q</span>", "<span>1/p</span> = <span>1/f</span>-<span>1/q</span> &#8658; p = -<span>fq/f-q</span>")
		p_Glass = -1*(f*q_Glass/f-q_glass)
		
		Binesh.AddToHTML("p = -<span>"..f.."*"..q_Glass.."/"..f.."-"..q_Glass.."</span> &#8658; p = "..p_Glass.." m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("f = "..f.." m" ,"V")
		Binesh.AddToHTML("q = "..q_Glass.." m" ,"V")
		Binesh.AddToHTML("p = "..p_Glass.." m" ,"V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â ¬Ì‰Â Ã”„");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "p");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end