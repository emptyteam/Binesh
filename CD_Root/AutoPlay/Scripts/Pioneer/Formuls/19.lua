if h_Glass == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "⁄„ﬁ Ÿ«Â—Ì")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'h' then
		ListBox.AddItem("unknowns", "⁄„ﬁ Ÿ«Â—Ì", "h");
	end
end

if H == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "⁄„ﬁ Ê«ﬁ⁄Ì")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'H' then
		ListBox.AddItem("unknowns", "⁄„ﬁ Ê«ﬁ⁄Ì", "H");
	end
end

if n1_Glass == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ÷—Ì» ‘ò”  „ÕÌÿ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'n1' then
		ListBox.AddItem("unknowns", "«Ê·Ì‰ ÷—Ì» ‘ò”  „ÕÌÿ", "n1");
	end
end

if n2_Glass == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ÷—Ì» ‘ò”  „ÕÌÿ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'n2' then
		ListBox.AddItem("unknowns", "œÊ„Ì‰ ÷—Ì» ‘ò”  „ÕÌÿ", "n2");
	end
end

Findh_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "⁄„ﬁ Ÿ«Â—Ì");
if Findh_Glass ~= -1 and ListBox.GetItemData("unknowns", Findh_Glass) == "h" and ListBox.FindItem("Words", -1, LB_BYTEXT, "⁄„ﬁ Ÿ«Â—Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "h") ~= -1 then
	if H ~= nil and n1_Glass ~= nil and n2_Glass ~= nil then
		Binesh.CreateHTMLFile("<span>h/H</span> = <span>n<sub>1</sub>/n<sub>2</sub></span>")
		h_Glass = H*n1_Glass/n2_Glass
		
		Binesh.AddToHTML("h = "..H.."*"..n1_Glass.."/"..n2_Glass.." &#8658; h = "..h_Glass.." m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "⁄„ﬁ Ÿ«Â—Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "h");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindH = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "⁄„ﬁ Ê«ﬁ⁄Ì");
if FindH ~= -1 and ListBox.GetItemData("unknowns", FindH) == "H" and ListBox.FindItem("Words", -1, LB_BYTEXT, "⁄„ﬁ Ê«ﬁ⁄Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "H") ~= -1 then
	if h_Glass ~= nil and n1_Glass ~= nil and n2_Glass ~= nil then
		Binesh.CreateHTMLFile("<span>h/H</span> = <span>n<sub>1</sub>/n<sub>2</sub></span>", "H = <span>h*n<sub>2</sub>/n<sub>1</sub></span>")
		H = (h_Glass*n2_Glass)/n1_Glass
		
		Binesh.AddToHTML("H = <span>"..h_Glass.."*"..n2_Glass.."/"..n1_Glass.."</span> &#8658; H = "..H.." m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "⁄„ﬁ Ê«ﬁ⁄Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "H");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findn1_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ÷—Ì» ‘ò”  „ÕÌÿ");
if Findn1_Glass ~= -1 and ListBox.GetItemData("unknowns", Findn1_Glass) == "n1" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ÷—Ì» ‘ò”  „ÕÌÿ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n1") ~= -1 then
	if h_Glass ~= nil and H ~= nil and n2_Glass ~= nil then
		Binesh.CreateHTMLFile("<span>h/H</span> = <span>n<sub>1</sub>/n<sub>2</sub></span>", "n<sub>1</sub> = <span>h_Glass*n<sub>2</sub>/H</span>")
		n1_Glass = (h_Glass*n2_Glass)/H
		
		Binesh.AddToHTML("n<sub>1</sub> = <span>"..h_Glass.."*"..n2_Glass.."/"..H.."</span> &#8658; n<sub>1</sub> = "..n1_Glass.." m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ÷—Ì» ‘ò”  „ÕÌÿ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "n1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findn2_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ÷—Ì» ‘ò”  „ÕÌÿ");
if Findn2_Glass ~= -1 and ListBox.GetItemData("unknowns", Findn2_Glass) == "n2" and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ÷—Ì» ‘ò”  „ÕÌÿ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n2") ~= -1 then
	if h_Glass ~= nil and H ~= nil and n1_Glass ~= nil then
		Binesh.CreateHTMLFile("<span>h/H</span> = <span>n<sub>1</sub>/n<sub>2</sub></span>", "n<sub>2</sub> = n<sub>1</sub>*H/h_Glass")
		n2_Glass = (n1_Glass*H)/h_Glass
		
		Binesh.AddToHTML("n<sub>2</sub> = <span>"..n1_Glass.."*"..H.."/"..h_Glass.."</span> &#8658; n<sub>2</sub> = "..n2_Glass.." m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ÷—Ì» ‘ò”  „ÕÌÿ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "n2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end