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

if f_Lens == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "⁄œ”Ì ›«’·Â ò«‰Ê‰Ì")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'f' then
		ListBox.AddItem("unknowns", "⁄œ”Ì ›«’·Â ò«‰Ê‰Ì", "f");
	end
end

Findp_Lens = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â ⁄œ”Ì Ã”„")
Findq_Lens = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â ⁄œ”Ì ”«ÌÂ");
Findf_Lens = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "⁄œ”Ì ›«’·Â ò«‰Ê‰Ì")

if Findf_Lens ~= -1 and ListBox.GetItemData("unknowns", Findf_Lens) == "f" then
	if q_Lens ~= nil and p_Lens ~= nil then
		Binesh.CreateHTMLFile("<span>1/f</span> = <span>1/p+1/q</span>", "f = <span>qp/q+p</span>")
		f_Lens = q_Lens*p_Lesn/q_Lens+p_Lens
		
		Binesh.AddToHTML("f = <span>"..q_Lens.."*"..p_Lens.."/"..q_Lens.."+"..p_Lens.."</span> &#8658; f = "..f_Lens.."m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "⁄œ”Ì ›«’·Â ò«‰Ê‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "f");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findq_Lens ~= -1 and ListBox.GetItemData("unknowns", Findq_Lens) == "q" then
	if p_Lens ~= nil and f_Lens ~= nil then
		Binesh.CreateHTMLFile("1/f = 1/p+1/q", "1/q = 1/f-1/p")
		Binesh.AddToHTML("q = <span>fp/f-p</span> &#8658; ")
		q_Lens = f_Lens*p_Lens/f_Lens-p_Lens
		
		Binesh.AddToHTML("q = <span>"..f_Lens.."*"..p_Lens.."/"..f_Lens.."-"..p_Lens.."</span> &#8658; q = "..q_Lens.."m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â ⁄œ”Ì ”«ÌÂ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findp_Lens ~= -1 and ListBox.GetItemData("unknowns", Findp_Lens) == "p" then
	if q_Lens ~= nil and f_Lens ~= nil then
		Binesh.CreateHTMLFile("1/f = 1/p+1/q", "1/p = 1/f-1/q")
		Binesh.AddToHTML("p = <span>fq/f-q</span> &#8658; ")
		p_Lens = f_Lens*q_Lens/f_Lens-q_Lens
		
		Binesh.AddToHTML("p = <span>"..f_Lens.."*"..q_Lens.."/"..f_Lens.."-"..q_Lens.."</span> &#8658; p = "..p_Lens.."m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â ⁄œ”Ì Ã”„");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "p");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end