if M_Injection == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» «·ﬁ«Ì „ ﬁ«»·")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'M' then
		ListBox.AddItem("unknowns", "÷—Ì» «·ﬁ«Ì „ ﬁ«»·", "M");
	end
end

if L1 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ÿÊ·")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'L1' then
		ListBox.AddItem("unknowns", "«Ê·Ì‰ ÿÊ·", "L1");
	end
end

if L2 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ÿÊ·")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'L2' then
		ListBox.AddItem("unknowns", "œÊ„Ì‰ ÿÊ·", "L2");
	end
end

FindM_Injection = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» «·ﬁ«Ì „ ﬁ«»·")
FindL1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ÿÊ·");
FindL2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ÿÊ·")

if FindM_Injection ~= -1 and ListBox.GetItemData("unknowns", FindM_Injection) == "M" and ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» «·ﬁ«Ì „ ﬁ«»·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "M") ~= -1 then
	if L1 ~= nil and L2 ~= nil then
		Binesh.CreateHTMLFile("M = sqrt(L<sub>1</sub>*L<sub>2</sub>)")
		M_Injection = sqrt(L1*L2)
		
		Binesh.AddToHTML("M = Sqrt("..L1.."*"..L2..") &#8658; M = "..M_Injection.."s")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» «·ﬁ«Ì „ ﬁ«»·");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "M");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownindex);
		end
	end
elseif FindL1 ~= -1 and ListBox.GetItemData("unknowns", FindL1) == "L" then
	if L2 ~= nil and M_Injection ~= nil then
		Binesh.CreateHTMLFile("M = sqrt(L<sub>1</sub>*L<sub>2</sub>)", "L1 = <span>M<sup>2</sup>/L<sub>2</sub></span>")
		L1 = M^2/L2
		
		Binesh.AddToHTML("L1 = <span>"..M.."<sup>2</sup>/"..L2.."</span> &#8658; L<sub>1</sub> = "..L1.."m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ÿÊ·");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "L1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownindex);
		end
	end
elseif FindL2 ~= -1 and ListBox.GetItemData("unknowns", FindL2) == "L2" then
	if M_Injection ~= nil and L2 ~= nil then
		Binesh.CreateHTMLFile("M = sqrt(L<sub>1</sub>*L<sub>2</sub>)", " L = <span>M<sup>2</sup>/L<sub>1</sub></span>")
		L2 = M^2/L1
		
		Binesh.AddToHTML("L2 = <span>"..M.."<sup>2</sup>/"..L1.."</span> &#8658; L<sub>2</sub> = "..L2.."m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ÿÊ·");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "L2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownindex);
		end
	end
end