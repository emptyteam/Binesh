if D == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " Ê«‰ ⁄œ”Ì")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'D' then
		ListBox.AddItem("unknowns", " Ê«‰ ⁄œ”Ì", "D");
	end
end

if f_Lens == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "⁄œ”Ì ›«’·Â ò«‰Ê‰Ì")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'f' then
		ListBox.AddItem("unknowns", "⁄œ”Ì ›«’·Â ò«‰Ê‰Ì", "f");
	end
end

Findf_Lens = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "⁄œ”Ì ›«’·Â ò«‰Ê‰Ì")
FindD = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " Ê«‰ ⁄œ”Ì");

if FindD ~= -1 and ListBox.GetItemData("unknowns", FindD) == "D" then
	if f_Lens ~= nil then
		Binesh.CreateHTMLFile("D = <span>1/f</span>")
		D = 1/f_Lens
		
		Binesh.AddToHTML("D = <span>1/"..f_Lens.."</span> &#8658; D = "..D.."diopter")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " Ê«‰ ⁄œ”Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "D");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findf_Lens ~= -1 and ListBox.GetItemData("unknowns", Findf_Lens) == "f" then
	if D ~= nil then
		Binesh.CreateHTMLFile("D = <span>1/f</span>", "f = <span>1/D</span>")
		f_Lens = 1/D
		
		Binesh.AddToHTML("f = <span>1/"..D.."</span> &#8658; f = "..f_Lens.."m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "⁄œ”Ì ›«’·Â ò«‰Ê‰Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "f");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end