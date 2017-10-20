if 	V1_Electric == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Ê· «é")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'V1' then
		ListBox.AddItem("unknowns", "«Ê·Ì‰ Ê· «é", "V1");
	end
end

if 	V2_Electric == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ Ê· «é")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'V2' then
		ListBox.AddItem("unknowns", "œÊ„Ì‰ Ê· «é", "V2");
	end
end

if 	C1 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Œ«“‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'C1' then
		ListBox.AddItem("unknowns", "«Ê·Ì‰ Œ«“‰", "C1");
	end
end


if 	C2 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ Œ«“‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'C2' then
		ListBox.AddItem("unknowns", "œÊ„Ì‰ Œ«“‰", "C2");
	end
end

FindV1_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Ê· «é")
FindV2_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ Ê· «é");
FindC1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Œ«“‰")
FindC2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ Œ«“‰")

if FindV1_Electric ~= -1 and ListBox.GetItemData("unknowns", FindV1_Electric) == "V1" then
	if V2_Electric ~= nil and C1 ~= nil and C2 ~= nil then
		Binesh.CreateHTMLFile("V<sup>1</sup> = <span>V<sup>2</sup>*C<sup>2</sup>/C<sup>1</sup></span>")
		V1_Electric = (V2_Electric*C2)/C1
	
		Binesh.AddToHTML("V<sup>1</sup> = <span>"..V2_Electric.."*"..C2.."/"..C1.."</span> &#8658; V<sup>1</sup> = "..V1_Electric.."V")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Ê· «é");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindV2_Electric ~= -1 and ListBox.GetItemData("unknowns", FindV2_Electric) == "V2" then
	if V1_Electric ~= nil and C1 ~= nil and C2 ~= nil then
		Binesh.CreateHTMLFile("V<sup>1</sup> = <span>V<sup>2</sup>*C<sup>2</sup>/C<sup>1</sup></span>", "V<sup>2</sup> = <span>V<sup>1</sup>*C<sup>1</sup>/C<sup>2</sup></span>")
		V2_Electric = (V1_Electric*C1)/C2

		
		Binesh.AddToHTML("V<sup>2</sup> = <span>"..V1_Electric.."*"..C1.."/"..C2.."</span> &#8658; V<sup>2</sup> = "..V2_Electric.."V")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ Ê· «é");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindC1 ~= -1 and ListBox.GetItemData("unknowns", FindC1) == "C1" then
	if V2_Electric ~= nil and V1_Electric ~= nil and C2 ~= nil then
		Binesh.CreateHTMLFile("V<sup>1</sup> = <span>V<sup>2</sup>*C<sup>2</sup>/C<sup>1</sup></span>","C<sup>1</sup> = <span>V<sup>2</sup>*C<sup>2</sup>/V<sup>1</sup></span>")
		C1 = (V2_Electric*C2)/V1_Electric
	
		Binesh.AddToHTML("C<sup>1</sup> = <span>"..V2_Electric.."*"..C2.."/"..V1_Electric.."</span> &#8658; C<sup>1</sup> = "..C1.."F")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Œ«“‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "C1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindC2 ~= -1 and ListBox.GetItemData("unknowns", FindC2) == "C2" then
	if V1_Electric ~= nil and C1 ~= nil and V2_Electric ~= nil then
		Binesh.CreateHTMLFile("V<sup>1</sup> = <span>V<sup>2</sup>*C<sup>2</sup>/C<sup>1</sup></span>", "C<sup>2</sup> = <span>V<sup>1</sup>*C<sup>1</sup>/V<sup>2</sup></span>")
		C2 = (V1_Electric*C1)/V2_Electric

		
		Binesh.AddToHTML("C<sup>2</sup> = <span>"..V1_Electric.."*"..C1.."/"..V2_Electric.."</span> &#8658; C<sup>2</sup> = "..C2.."F")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ Œ«“‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "C2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end