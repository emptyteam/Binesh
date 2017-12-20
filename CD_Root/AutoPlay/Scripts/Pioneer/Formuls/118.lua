if RT == nil then

	Binesh.AddUnknown("„ﬁ«Ê„  „⁄«œ·", "RT")
end

if R1 == nil then

	Binesh.AddUnknown("«Ê·Ì‰ „ﬁ«Ê„ ", "R1")
end

if V1_Electric == nil then

	Binesh.AddUnknown("«Ê·Ì‰ Ê· «é", "V1")
end

if VT_Electric == nil then

	Binesh.AddUnknown("Ê· «é „⁄«œ·", "VT")
end


FindRT = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„  „⁄«œ·");
if FindRT ~= -1 and ListBox.GetItemData("unknowns", FindRT) == "RT" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„  „⁄«œ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "RT") ~= -1 then
	if R1 ~= nil and V1_Electric ~= nil and VT_Electric ~= nil then
		Binesh.CreateHTMLFile("<span>V<sub>1</sub>/V<sub>T</sub></span> = <span>R<sub>1</sub>/R<sub>T</sub></span>", "R<sub>T</sub> = <span>R<sub>1</sub>V<sub>T</sub>/V<sub>1</sub></span>")
		RT = R1*VT_Electric/V1_Electric
		
		Binesh.AddToHTML("R<sub>T</sub> = "..R1.."*"..VT_Electric.."/"..V1_Electric.." &#8658; R<sub>T</sub> = "..RT.." Ohm")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("R<sub>1</sub>: "..R1.." Ohm", "V")
		Binesh.AddToHTML("V<sub>T</sub>: "..VT_Electric.." V", "V")
		Binesh.AddToHTML("V<sub>1</sub>: "..V1_Electric.." v", "V")
		Binesh.AddToHTML("R<sub>T</sub>: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„  „⁄«œ·");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "RT");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindR1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ „ﬁ«Ê„ ");
if FindR1 ~= -1 and ListBox.GetItemData("unknowns", FindR1) == "R1" then
	if RT ~= nil and V1_Electric ~= nil and VT_Electric ~= nil then
		Binesh.CreateHTMLFile("<span>V<sub>1</sub>/V<sub>T</sub></span> = <span>R<sub>1</sub>/R<sub>T</sub></span>", "R<sub>1</sub> = <span>V<sub>1</sub>R<sub>T</sub>/V<sub>T</sub></span>")
		R1 = V1_Electric*RT/VT_Electric
		
		Binesh.AddToHTML("R<sub>1</sub> = <span>"..V1_Electric.."*"..RT.."/"..VT_Electric.."</span> &#8658; R<sub>1</sub> = "..R1.." Ohm")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("R<sub>T</sub>: "..RT.." Ohm", "V")
		Binesh.AddToHTML("V<sub>T</sub>: "..VT_Electric.." V", "V")
		Binesh.AddToHTML("V<sub>1</sub>: "..V1_Electric.." v", "V")
		Binesh.AddToHTML("R<sub>1</sub>: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ „ﬁ«Ê„ ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "R1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindV1_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Ê· «é");
if FindV1_Electric ~= -1 and ListBox.GetItemData("unknowns", FindV1_Electric) == "V1" then
	if RT ~= nil and R1 ~= nil and VT_Electric ~= nil then
		Binesh.CreateHTMLFile("<span>V<sub>1</sub>/V<sub>T</sub></span> = <span>R<sub>1</sub>/R<sub>T</sub></span>", "V<sub>1</sub> = <span>R<sub>1</sub>V<sub>T</sub>/R<sub>T</sub></span>")
		V1_Electric = R1*VT_Electric/RT
		
		Binesh.AddToHTML("V<sub>1</sub> = <span>"..R1.."*"..VT_Electric.."/"..RT.."</span> &#8658; V<sub>1</sub> = "..V1_Electric.." V")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("R<sub>T</sub>: "..RT.." Ohm", "V")
		Binesh.AddToHTML("V<sub>T</sub>: "..VT_Electric.." V", "V")
		Binesh.AddToHTML("R<sub>1</sub>: "..R1.." v", "V")
		Binesh.AddToHTML("V<sub>1</sub>: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Ê· «é");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindVT_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é „⁄«œ·");
if FindVT_Electric ~= -1 and ListBox.GetItemData("unknowns", FindVT_Electric) == "VT" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é „⁄«œ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "VT") ~= -1 then
	if RT ~= nil and R1 ~= nil and V1_Electric ~= nil then
		Binesh.CreateHTMLFile("<span>V<sub>1</sub>/V<sub>T</sub></span> = <span>R<sub>1</sub>/R<sub>T</sub></span>", "V<sub>T</sub> = V<sub>1</sub>R<sub>T</sub>/R<sub>1</sub>")
		VT_Electric = V1_Electric*RT/R1
		
		Binesh.AddToHTML("V<sub>T</sub> = <span>"..V1_Electric.."*"..RT.."/"..R1.."</span> &#8658; V<sub>T</sub> = "..VT_Electric.." V")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("R<sub>T</sub>: "..RT.." Ohm", "V")
		Binesh.AddToHTML("V<sub>T</sub>: "..V1_Electric.." V", "V")
		Binesh.AddToHTML("R<sub>1</sub>: "..R1.." v", "V")
		Binesh.AddToHTML("V<sub>T</sub>: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é „⁄«œ·");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "VT");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end