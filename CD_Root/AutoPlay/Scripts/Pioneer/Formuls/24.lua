if D == nil then
	Binesh.AddUnknown(" Ê«‰ ⁄œ”Ì", "D")
end

if f == nil then
	Binesh.AddUnknown("›«’·Â ò«‰Ê‰Ì", "f")
end

Findf = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â ò«‰Ê‰Ì")
if FindD ~= -1 and ListBox.GetItemData("unknowns", FindD) == "D" and ListBox.FindItem("Words", -1, LB_BYTEXT, " Ê«‰ ⁄œ”Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "D") ~= -1 then
	if f ~= nil then
		Binesh.CreateHTMLFile("D = <span>1/f</span>")
		D = 1/f
		
		Binesh.AddToHTML("D = <span>1/"..f.."</span> &#8658; D = "..D.." diopter")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("D: "..D.." diopter", "V")
		Binesh.AddToHTML("f: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " Ê«‰ ⁄œ”Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "D");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindD = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " Ê«‰ ⁄œ”Ì");
if Findf ~= -1 and ListBox.GetItemData("unknowns", Findf) == "f" and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â ò«‰Ê‰Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "f") ~= -1 then
	if D ~= nil then
		Binesh.CreateHTMLFile("D = <span>1/f</span>", "f = <span>1/D</span>")
		f = 1/D
		
		Binesh.AddToHTML("f = <span>1/"..D.."</span> &#8658; f = "..f.." m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("f: "..f.." m", "V")
		Binesh.AddToHTML("D: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â ò«‰Ê‰Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "f");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end