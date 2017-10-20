if V1_Electric == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Ê· «é")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'V1' then
		ListBox.AddItem("unknowns", "«Ê·Ì‰ Ê· «é", "V1");
	end
end

if V2_Electric == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ Ê· «é")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'V2' then
		ListBox.AddItem("unknowns", "œÊ„Ì‰ Ê· «é", "V2");
	end
end

if N1 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ œÊ—")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'N1' then
		ListBox.AddItem("unknowns", "«Ê·Ì‰ œÊ—", "N1");
	end
end

if N2 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ œÊ—")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'N2' then
		ListBox.AddItem("unknowns", "œÊ„Ì‰ œÊ—", "N2");
	end
end

FindV1_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Ê· «é")
FindV2_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ Ê· «é");
FindN1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ œÊ—")
FindN2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ œÊ—")

if FindV1_Electric ~= -1 and ListBox.GetItemData("unknowns", FindV1_Electric) == "V1" then
	if V2_Electric ~= nil and N1 ~= nil and N2 ~= nil then
		Binesh.CreateHTMLFile("<span>V<sub>2</sub>/V<sub>1</sub></span> = <span>N<sub>2</sub>/N<sub>1</sub></span>", "V<sub>1</sub> = <span>V<sub>2</sub>*N<sub>1</sub>/N<sub>2</sub></span>")
		V1_Electric = (V2_Electric*N1)/(N2)
		
		Binesh.AddToHTML("V<sub>1</sub> = <span>"..V2_Electric.."*"..N1.."/"..N2.."</span> &#8658; V<sub>1</sub> = "..V1_Electric.."V")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Ê· «é");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindV2_Electric ~= -1 and ListBox.GetItemData("unknowns", FindV2_Electric) == "V2" then
	if V1_Electric ~= nil and N1 ~= nil and N2 ~= nil then
		Binesh.CreateHTMLFile("<span>V<sub>2</sub>/V<sub>1</sub></span> = <span>N<sub>2</sub>/N<sub>1</sub></span>", "V<sub>2</sub> = <span>N<sub>2</sub>*V<sub>1</sub>/N<sub>1</sub></span>")
		V2_Electric = (N2*V1_Electric)/(N1)
		
		Binesh.AddToHTML("V<sub>2</sub> = <span>"..N2.."*"..V1_Electric.."/"..N1.."</span> &#8658; V<sub>2</sub> = "..V2_Electric.."V")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ Ê· «é");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindN1 ~= -1 and ListBox.GetItemData("unknowns", FindN1) == "N1" then
	if V1_Electric ~= nil and V2_Electric ~= nil and N2 ~= nil then
		Binesh.CreateHTMLFile("<span>V<sub>2</sub>/V<sub>1</sub></span> = <span>N<sub>2</sub>/N<sub>1</sub></span>", "N<sub>1</sub> = <span>N<sub>2</sub>*V<sub>1</sub>/V<sub>2</sub></span>")
		N1 = (N2*V1_Electric)/(V2_Electric)
		
		Binesh.AddToHTML("N<sub>1</sub> = <span>"..N2.."*"..V1_Electric.."/"..V2_Electric.."</span> &#8658; N<sub>1</sub> = "..N1)
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ œÊ—");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "N1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindN2 ~= -1 and ListBox.GetItemData("unknowns", FindN2) == "N2" then
	if V1_Electric ~= nil and V2_Electric ~= nil and N2 ~= nil then
		Binesh.CreateHTMLFile("<span>V<sub>2</sub>/V<sub>1</sub></span> = <span>N<sub>2</sub>/N<sub>1</sub></span>", "N<sub>2</sub> = <span>V<sub>2</sub>*N<sub>1</sub>/V<sub>1</sub></span>")
		N2 = (V2_Electric*N1)/(V1_Electric)
		
		Binesh.AddToHTML("N<sub>2</sub> = <span>"..V2_Electric.."*"..N1.."/"..V1_Electric.."</span> &#8658; N<sub>2</sub> = "..N2)
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ œÊ—");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "N2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end