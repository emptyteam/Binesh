if fk == nil then
	Binesh.AddUnknown("«’ÿò«ò Ã‰»‘Ì", "fk")
end

if N == nil then
	Binesh.AddUnknown("‰Ì—Ê", "N")
end

if Muk == nil then
	Binesh.AddUnknown("÷—Ì» «’ÿò«ò Ã‰»‘Ì", "Muk")
end

Findfk = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«’ÿò«ò Ã‰»‘Ì");
if Findfk ~= -1 and ListBox.GetItemData("unknowns", Findfk) == "fk" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«’ÿò«ò Ã‰»‘Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "fk") ~= -1 then
	if N ~= nil and Muk ~= nil then
		Binesh.CreateHTMLFile("f<sub>k</sub> = Mu<sub>k</sub>N")
		fk = Muk*N
		
		Binesh.AddToHTML("f<sub>k</sub> = "..Muk.."*"..N.." &#8658; f<sub>k</sub> = "..fk.." N")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("N: "..N.." N", "V")
		Binesh.AddToHTML("Muk: "..Muk, "V")
		Binesh.AddToHTML("fk: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«’ÿò«ò Ã‰»‘Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "fk");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindN = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê");
if FindN ~= -1 and ListBox.GetItemData("unknowns", FindN) == "N" and ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1 then
	if fs_max ~= nil and Muk ~= nil then
		Binesh.CreateHTMLFile("f<sub>k</sub> = Mu<sub>k</sub>N", "N = <span>f<sub>k</sub>/Mu<sub>k</sub></span>")
		N = fs_max/Muk
		
		Binesh.AddToHTML("N = <span>"..fs_max.."/"..Muk.."</span> &#8658; N = "..N.."N")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("fk: "..fk.." N", "V")
		Binesh.AddToHTML("Muk: "..Muk, "V")
		Binesh.AddToHTML("N: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "N");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindMuk = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» «’ÿò«ò Ã‰»‘Ì");
if FindMuk ~= -1 and ListBox.GetItemData("unknowns", FindMuk) == "Muk" and ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» «’ÿò«ò Ã‰»‘Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Muk") ~= -1 then
	if fs_max ~= nil and Muk ~= nil then
		Binesh.CreateHTMLFile("f<sub>k</sub> = Mu<sub>k</sub>N", "Mu<sub>k</sub> = <span>f<sub>k</sub>/N</span>")
		N = fs_max/Muk
		
		Binesh.AddToHTML("Mu<sub>k</sub> = <span>"..fk.."/"..N.."</span> &#8658; Mu<sub>k</sub> = "..Muk)
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("fk: "..fk.." N", "V")
		Binesh.AddToHTML("N: "..N.." N", "V")
		Binesh.AddToHTML("Muk: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» «’ÿò«ò Ã‰»‘Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Muk");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end