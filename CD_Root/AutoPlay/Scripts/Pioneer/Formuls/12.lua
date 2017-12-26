function Binesh.F12()
	if p_Glass == nil then
		Binesh.AddUnknown("›«’·Â Ã”„", "p")
	end
	
	if q_Glass == nil then
		Binesh.AddUnknown("›«’·Â ”«ÌÂ", "q")
	end
	
	if f == nil then
		Binesh.AddUnknown("¬Ì‰Â ›«’·Â ò«‰Ê‰Ì", "f")
	end
	
	Findf = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "¬Ì‰Â ›«’·Â ò«‰Ê‰Ì");
	if Findf ~= -1 and ListBox.GetItemData("unknowns", Findf) == "f" and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â ò«‰Ê‰Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "f") ~= -1 then
		if q_Glass ~= nil and p_Glass ~= nil then
			Binesh.CreateHTMLFile("<span>1/f</span> = <span>1/p</span> + <span>1/q</span>", "f = <span>pq/p+q</span>")
			f = p_Glass*q_Glass/(p_Glass+q_Glass)
			
			Binesh.AddToHTML("f = <span>"..p_Glass.."*"..q_Glass.."/"..p_Glass.."+"..q_Glass.."</span> &#8658; f = "..f.." m")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("p: "..p_Glass.."m", "V")
			Binesh.AddToHTML("q: "..q_Glass.."m", "V")
			Binesh.AddToHTML("f: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "¬Ì‰Â ›«’·Â ò«‰Ê‰Ì");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "f");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findq_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â ”«ÌÂ");
	if Findq_Glass ~= -1 and ListBox.GetItemData("unknowns", Findq_Glass) == "q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â ”«ÌÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
		if p_Glass ~= nil and f ~= nil then
			Binesh.CreateHTMLFile("<span>1/f</span> = <span>1/p</span> + <span>1/q</span>", "<span>1/q</span> = <span>1/f</span> - <span>1/p</span> &#8658; q = - <span>fp/f-p</span>")
			q_Glass = -1*(p_Glass*f/(f-p_Glass))
			
			Binesh.AddToHTML("q = - <span>"..f.."*"..p_Glass.."/"..f.."-"..p_Glass.."</span> &#8658; q = "..q_Glass.." m")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("p: "..p_Glass.."m", "V")
			Binesh.AddToHTML("f: "..f.."m", "V")
			Binesh.AddToHTML("q: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â ”«ÌÂ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findp_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â Ã”„");
	if Findp_Glass ~= -1 and ListBox.GetItemData("unknowns", Findp_Glass) == "p" and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â Ã”„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "p") ~= -1 then
		if q_Glass ~= nil and f ~= nil then
			Binesh.CreateHTMLFile("<span>1/f</span> = <span>1/p</span> + <span>1/q</span>", "<span>1/p</span> = <span>1/f</span> - <span>1/q</span> &#8658; p = <span>fq/f-q</span>")
			p_Glass = -1*(f*q_Glass/(f-q_Glass))
			
			Binesh.AddToHTML("p = <span>"..f.."*"..q_Glass.."/"..f.."-"..q_Glass.."</span> &#8658; p = "..p_Glass.." m")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("q: "..q_Glass.."m", "V")
			Binesh.AddToHTML("f: "..f.."m", "V")
			Binesh.AddToHTML("p: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â Ã”„");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "p");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end