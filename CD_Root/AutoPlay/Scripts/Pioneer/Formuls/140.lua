if U_PipeWire == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'U' then
		ListBox.AddItem("unknowns", "«‰—éÌ", "U");
	end
end

if L == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÿÊ·")
	if UnknownNamePersian == -1 and ListBox.FindItem("unknowns", UnknownNamePersian, LB_BYDATA, "L") == -1 then
		ListBox.AddItem("unknowns", "ÿÊ·", "L");
	end
end

if I == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰")
	if UnknownNamePersian == -1 and ListBox.FindItem("unknowns", UnknownNamePersian, LB_BYDATA, "I") == -1 then
		ListBox.AddItem("unknowns", "Ã—Ì«‰", "I");
	end
end

FindU_PipeWire = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ");
if FindU_PipeWire ~= -1 and ListBox.GetItemData("unknowns", FindU_PipeWire) == "U" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1 then
	if L ~= nil and I ~= nil then
		Binesh.CreateHTMLFile("U = <span>1/2</span>LI<sup>2</sup>")
		U_PipeWire = 0.5*L*(I^2)
		
		Binesh.AddToHTML("U = <span>1/2</span>*"..L.."*"..I.."<sup>2</sup> &#8658; U = "..U_PipeWire.." J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "U");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindL = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÿÊ·");
if FindL ~= -1 and ListBox.GetItemData("unknowns", FindL) == "L" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L") ~= -1 then
	if U_PipeWire ~= nil and I ~= nil then
		Binesh.CreateHTMLFile("U = <span>1/2</span>LI<sup>2</sup>", "L = 2U/I<sup>2</sup>")
		L = 2*U_PipeWire/(I^2)
		
		Binesh.AddToHTML("L = 2*"..U_PipeWire.."/"..I.."<sup>2</sup> &#8658; L = "..L.." m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÿÊ·");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "L");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindI = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
if FindI ~= -1 and ListBox.GetItemData("unknowns", FindI) == "I" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
	if U_PipeWire ~= nil and L ~= nil then
		Binesh.CreateHTMLFile("U = <span>1/2</span>LI<sup>2</sup>", "I = Sqrt(2U/L)")
		I = Math.Sqrt(2*U_PipeWire/L)
		
		Binesh.AddToHTML("I = Sqrt(2*"..U_PipeWir.."/"..L..") &#8658; I = "..I.." A")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "I");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end