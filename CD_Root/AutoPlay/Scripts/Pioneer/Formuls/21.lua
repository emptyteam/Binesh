if p_Lens == nil then
	Binesh.AddUnknown("›«’·Â Ã”„", "p")
end

if q_Lens == nil then
	Binesh.AddUnknown("›«’·Â ”«ÌÂ", "q")
end

if f == nil then
	Binesh.AddUnknown("⁄œ”Ì ›«’·Â ò«‰Ê‰Ì", "f")
end

Findf = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "⁄œ”Ì ›«’·Â ò«‰Ê‰Ì");
if Findf ~= -1 and ListBox.GetItemData("unknowns", Findf) == "f" and ListBox.FindItem("Words", -1, LB_BYTEXT, "⁄œ”Ì ›«’·Â ò«‰Ê‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "f") ~= -1 then
	if q_Lens ~= nil and p_Lens ~= nil then
		Binesh.CreateHTMLFile("<span>1/f</span> = <span>1/p+1/q</span>", "f = <span>q*p/q+p</span>")
		f = q_Lens*p_Lens/q_Lens+p_Lens
		
		Binesh.AddToHTML("f = <span>"..q_Lens.."*"..p_Lens.."/"..q_Lens.."+"..p_Lens.."</span> &#8658; f = "..f.."m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("p: "..p_Lens.." m", "V")
		Binesh.AddToHTML("q: "..q_Lens.." m", "V")
		Binesh.AddToHTML("f: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "⁄œ”Ì ›«’·Â ò«‰Ê‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "f");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findq_Lens = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â ”«ÌÂ");
if Findq_Lens ~= -1 and ListBox.GetItemData("unknowns", Findq_Lens) == "q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â ”«ÌÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
	if p_Lens ~= nil and f ~= nil then
		Binesh.CreateHTMLFile("1/f = 1/p+1/q", "1/q = 1/f-1/p")
		Binesh.AddToHTML("q = <span>f*p/f-p</span> &#8658; ")
		q_Lens = f*p_Lens/(f-p_Lens)
		
		Binesh.AddToHTML("q = <span>"..f.."*"..p_Lens.."/"..f.."-"..p_Lens.."</span> &#8658; q = "..q_Lens.."m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("p: "..p_Lens.." m", "V")
		Binesh.AddToHTML("f: "..s.." m", "V")
		Binesh.AddToHTML("q: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â ”«ÌÂ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findp_Lens = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â Ã”„");
if Findp_Lens ~= -1 and ListBox.GetItemData("unknowns", Findp_Lens) == "p" and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â Ã”„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "p") ~= -1 then
	if q_Lens ~= nil and f ~= nil then
		Binesh.CreateHTMLFile("1/f = 1/p+1/q", "1/p = 1/f-1/q")
		Binesh.AddToHTML("p = <span>f*q/f-q</span> &#8658; ")
		p_Lens = f*q_Lens/f-q_Lens
		
		Binesh.AddToHTML("p = <span>"..f.."*"..q_Lens.."/"..f.."-"..q_Lens.."</span> &#8658; p = "..p_Lens.."m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("f: "..s.." m", "V")
		Binesh.AddToHTML("q: "..q_Lens.." m", "V")
		Binesh.AddToHTML("p: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â Ã”„");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "p");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end