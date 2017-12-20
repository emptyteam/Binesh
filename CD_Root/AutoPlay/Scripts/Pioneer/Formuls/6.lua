if I == nil then
	Binesh.AddUnknown("Ã—Ì«‰", "I")
end

if q == nil then
	Binesh.AddUnknown("–—Â", "q")
end

if t == nil then
	Binesh.AddUnknown("“„«‰", "t")
end

FindI = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
if FindI ~= -1 and ListBox.GetItemData("unknowns", FindI) == "I" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
	if q ~= nil and t ~= nil then
		Binesh.CreateHTMLFile("I = <span>q/t</span>")
		I = (q)/(t)
		
		Binesh.AddToHTML("I = <span>"..q.."/"..t.."</span> &#8658; I = "..I.." A")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("t: "..t.." s", "V")
		Binesh.AddToHTML("q: "..q.." C", "V")
		Binesh.AddToHTML("I: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "I");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findq = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â");
if Findq ~= -1 and ListBox.GetItemData("unknowns", Findq) == "q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
	if I ~= nil and t ~= nil then
		Binesh.CreateHTMLFile("I = <span>q/t</span>", "q = I*t")
		q = (I)*(t)
		
		Binesh.AddToHTML("q = "..I.."*"..t.." &#8658; q = "..q.." C")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("I: "..I.." A", "V")
		Binesh.AddToHTML("t: "..t.." s", "V")
		Binesh.AddToHTML("q: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findt = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
if Findt ~= -1 and ListBox.GetItemData("unknowns", Findt) == "t" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1 then
	if q ~= nil and I ~= nil then
		Binesh.CreateHTMLFile("I = <span>q/t</span>", "t = <span>q/I</span>")
		t = (q)/(I)
		
		Binesh.AddToHTML("t = <span>"..q.."/"..I.."</span> &#8658; t = "..t.." s")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("I: "..I.." A", "V")
		Binesh.AddToHTML("q: "..q.." C", "V")
		Binesh.AddToHTML("t: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "t");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end