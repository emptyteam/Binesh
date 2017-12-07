if fs_max == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«’ÿò«ò œ— ¬” «‰Â Õ—ò ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'fs,max' then
		ListBox.AddItem("unknowns", "«’ÿò«ò œ— ¬” «‰Â Õ—ò ", "fs,max");
	end
end

if N == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'N' then
		ListBox.AddItem("unknowns", "‰Ì—Ê", "N");
	end
end

if Mus == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» «’ÿò«ò «Ì” «ÌÌ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Mus' then
		ListBox.AddItem("unknowns", "÷—Ì» «’ÿò«ò «Ì” «ÌÌ", "Mus");
	end
end

Findfs_max = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«’ÿò«ò œ— ¬” «‰Â Õ—ò ");
if Findfs_max ~= -1 and ListBox.GetItemData("unknowns", Findfs_max) == "fs,max" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«’ÿò«ò œ— ¬” «‰Â Õ—ò ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "fs,max") ~= -1 then
	if N ~= nil and Mus ~= nil then
		Binesh.CreateHTMLFile("f<sub>s,max</sub> = Mu<sub>s</sub>N")
		fs_max = Mus*N
		
		Binesh.AddToHTML("f<sub>s,max</sub> = "..Mus.."*"..N.." &#8658; f<sub>s,max</sub> = "..fs_max.." N")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«’ÿò«ò œ— ¬” «‰Â Õ—ò ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "fs,max");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindN = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê");
if FindN ~= -1 and ListBox.GetItemData("unknowns", FindN) == "N" and ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1 then
	if fs_max ~= nil and Mus ~= nil then
		Binesh.CreateHTMLFile("f<sub>s,max</sub> = Mu<sub>s</sub>N", "N = <span>f<sub>s,max</sub>/Mu<sub>s</sub></span>")
		N = fs_max/Mus
		
		Binesh.AddToHTML("N = <span>"..fs_max.."/"..Mus.."</span> &#8658; N = "..N.." N")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "N");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindMus = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» «’ÿò«ò «Ì” «ÌÌ");
if FindMus ~= -1 and ListBox.GetItemData("unknowns", FindMus) == "Mus" and ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» «’ÿò«ò «Ì” «ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Mus") ~= -1 then
	if fs_max ~= nil and Mus ~= nil then
		Binesh.CreateHTMLFile("f<sub>s,max</sub> = Mu<sub>s</sub>N", "Mu<sub>s</sub> = <span>f<sub>s,max</sub>/N</span>")
		N = fs_max/Mus
		
		Binesh.AddToHTML("Mu<sub>s</sub> = <span>"..fs,max.."/"..N.."</span> &#8658; Mu<sub>s</sub> = "..Mus)
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» «’ÿò«ò «Ì” «ÌÌ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Mus");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end