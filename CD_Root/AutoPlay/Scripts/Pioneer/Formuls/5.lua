if q == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'q' then
		ListBox.AddItem("unknowns", "–—Â", "q");
	end
end

if n_e == nil and n_p == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " ⁄œ«œ «·ò —Ê‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'n' then
		ListBox.AddItem("unknowns", " ⁄œ«œ «·ò —Ê‰", "n");
	end
end

Findq = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â")
if Findq ~= -1 and ListBox.GetItemData("unknowns", Findq) == "c" and ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
	if n_e ~= nil or n_p ~= nil then
		Binesh.CreateHTMLFile("q = n*e")
		if n_e ~= nil then
			q = n_e*(1.6*10^-19)
			Binesh.AddToHTML("q = "..n_e.."*"..(1.6*10^-19).." &#8658; q = "..q.." C")
		elseif n_p ~= nil then
			q = n_p*(1.6*10^-19)
			Binesh.AddToHTML("q = "..n_p.."*"..(1.6*10^-19).." &#8658; q = "..q.." C")
		end
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findn_e = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " ⁄œ«œ «·ò —Ê‰");
if Findn_e ~= -1 and ListBox.GetItemData("unknowns", Findn_e) == "n" and ListBox.FindItem("Words", -1, LB_BYTEXT, " ⁄œ«œ «·ò —Ê‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1 then
	if q ~= nil then
		Binesh.CreateHTMLFile("q = n*e", "n = <span>q/e</span>")
		n_e = q / (1.6*10^-19)
		Binesh.AddToHTML("n = <span>"..q.."/"..(1.6*10^-19).."</span> &#8658; n = "..n_e)
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " ⁄œ«œ «·ò —Ê‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "n");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end