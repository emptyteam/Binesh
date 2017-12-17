if U_PipeWire == nil then

	Binesh.AddUnknown("ÇäÑŽí", "U")
end

if L == nil then

	Binesh.AddUnknown("Øæá", "L")
end

if I == nil then

	Binesh.AddUnknown("ÌÑíÇä", "I")
end

FindU_PipeWire = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÇäÑŽí");
if FindU_PipeWire ~= -1 and ListBox.GetItemData("unknowns", FindU_PipeWire) == "U" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÇäÑŽí") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1 then
	if L ~= nil and I ~= nil then
		Binesh.CreateHTMLFile("U = <span>1/2</span>LI<sup>2</sup>")
		U_PipeWire = 0.5*L*(I^2)
		
		Binesh.AddToHTML("U = <span>1/2</span>*"..L.."*"..I.."<sup>2</sup> &#8658; U = "..U_PipeWire.." J")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("L: "..L.." m", "V")
		Binesh.AddToHTML("I: "..I.." A", "V")
		Binesh.AddToHTML("U: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÇäÑŽí");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "U");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindL = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Øæá");
if FindL ~= -1 and ListBox.GetItemData("unknowns", FindL) == "L" or ListBox.GetItemData("unknowns", FindL) == "l" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Øæá") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L") ~= -1 then
	if U_PipeWire ~= nil and I ~= nil then
		Binesh.CreateHTMLFile("U = <span>1/2</span>LI<sup>2</sup>", "L = 2U/I<sup>2</sup>")
		L = 2*U_PipeWire/(I^2)
		
		Binesh.AddToHTML("L = 2*"..U_PipeWire.."/"..I.."<sup>2</sup> &#8658; L = "..L.." m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("U: "..U_PipeWire.." J", "V")
		Binesh.AddToHTML("I: "..I.." A", "V")
		Binesh.AddToHTML("L: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Øæá");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "L");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindI = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÌÑíÇä");
if FindI ~= -1 and ListBox.GetItemData("unknowns", FindI) == "I" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÌÑíÇä") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
	if U_PipeWire ~= nil and L ~= nil then
		Binesh.CreateHTMLFile("U = <span>1/2</span>LI<sup>2</sup>", "I = Sqrt(2U/L)")
		I = Math.Sqrt(2*U_PipeWire/L)
		
		Binesh.AddToHTML("I = Sqrt(2*"..U_PipeWir.."/"..L..") &#8658; I = "..I.." A")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("U: "..U_PipeWire.." J", "V")
		Binesh.AddToHTML("L: "..L.." m", "V")
		Binesh.AddToHTML("I: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÌÑíÇä");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "I");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end