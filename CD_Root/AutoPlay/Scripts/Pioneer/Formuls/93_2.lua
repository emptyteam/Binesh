if _DeltaV_Electric == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— Ê· «é")
	if UnknownNamePersian == -1 then
		ListBox.AddItem("unknowns", " €ÌÌ— Ê· «é", "DeltaV");
	end
end
if _V1_Electric == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Ê· «é")
	if UnknownNamePersian == -1 then
		ListBox.AddItem("unknowns", "«Ê·Ì‰ Ê· «é", "V1");
	end
end
if _V2_Electric == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ Ê· «é")
	if UnknownNamePersian == -1 then
		ListBox.AddItem("unknowns", "œÊ„Ì‰ Ê· «é", "V2");
	end
end

if E == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'E' then
		ListBox.AddItem("unknowns", "„Ìœ«‰", "E");
	end
end

if d_Distance == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'd' then
		ListBox.AddItem("unknowns", "›«’·Â", "d");
	end
end

if Teta == nil and Teta_Radian == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Teta' then
		ListBox.AddItem("unknowns", "“«ÊÌÂ", "Teta");
	end
end

--------------------------{DELTA}--------------------------
FindDeltaV_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— Ê· «é");
if FindDeltaV_Electric ~= -1 and ListBox.GetItemData("unknowns", FindDeltaV_Electric) == "DeltaV" then
	if _V1_Electric ~= nil and _V2_Electric ~= nil then
		Binesh.CreateHTMLFile("DeltaV = V<sub>2</sub>-V<sub>1</sub>")
		_DeltaV_Electric = _V2_Electric - _V1_Electric
		Binesh.AddToHTML("DeltaV = ".._V2_Electric.."-".._V1_Electric.." &#8658; DeltaV = ".._DeltaV_Electric.." V")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— Ê· «é");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaV");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindV1_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Ê· «é");
if FindV1_Electric ~= -1 and ListBox.GetItemData("unknowns", FindV1_Electric) == "V1" or ListBox.GetItemData("unknowns", FindV1_Electric) == "V1" then
	if _DeltaV_Electric ~= nil and _V2_Electric ~= nil then
		Binesh.CreateHTMLFile("DeltaV = V<sub>2</sub>-V<sub>1</sub>", "V<sub>1</sub> = V<sub>2</sub>-DeltaV")
		_V1_Electric = _V2_Electric-_DeltaV_Electric
		Binesh.AddToHTML("V<sub>1</sub> = ".._V2_Electric.."-".._DeltaV_Electric.." &#8658; V<sub>1</sub> = ".._V1_Electric.." V")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Ê· «é");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindV2_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ Ê· «é");
if FindV2_Electric ~= -1 and ListBox.GetItemData("unknowns", FindV2_Electric) == "V2" or ListBox.GetItemData("unknowns", FindV2_Electric) == "V2" then
	if _DeltaV_Electric ~= nil and _V1_Electric ~= nil then
		Binesh.CreateHTMLFile("DeltaV = V<sub>2</sub>-V<sub>1</sub>", "V<sub>2</sub> = DeltaV+V<sub>1</sub>")
		_V2_Electric = _V1_Electric+_DeltaV_Electric
		Binesh.AddToHTML("V<sub>2</sub> = ".._DeltaV_Electric.."+".._V1_Electric.." &#8658; V<sub>2</sub> = ".._V2_Electric.." V")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ Ê· «é");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end
--------------------------END {DELTA}--------------------------

FindDeltaV_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— Ê· «é");
if FindDeltaV_Electric ~= -1 and ListBox.GetItemData("unknowns", FindDeltaV_Electric) == "DeltaV" and (ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ Ê· «é") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaV") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V2") ~= -1) then
	if E_Electric ~= nil and d_Distance ~= nil and Teta ~= nil then
		Binesh.CreateHTMLFile("DeltaV = -EdcosTeta")
		_DeltaV_Electric = -E_Electric*d_Distance*Math.Cos(Teta)
		Binesh.AddToHTML("DeltaV = -"..E_Electric.."*"..d_Distance.."*cos"..Teta.." &#8658; DeltaV = ".._DeltaV_Electric.." V")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— Ê· «é");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaV");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindE_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰");
if FindE_Electric ~= -1 and ListBox.GetItemData("unknowns", FindE_Electric) == "E" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "E") ~= -1 then
	if _DeltaV_Electric ~= nil and d_Distance ~= nil and Teta ~= nil then
		Binesh.CreateHTMLFile("DeltaV = -EdcosTeta", "E = - <span>DeltaV/dcosTeta</span>")
		E_Electric = -_DeltaV_Electric / (d_Distance*Math.Cos(Teta))
		Binesh.AddToHTML("E = - <span>".._DeltaV_Electric.."/"..d_Distance.."*cos"..Teta.."</span> &#8658; E = "..E_Electric.." N/C")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "E");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findd_Distance = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â");
if Findd_Distance ~= -1 and ListBox.GetItemData("unknowns", Findd_Distance) == "d" and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "d") ~= -1 then 
	if _DeltaV_Electric ~= nil and E_Electric ~= nil and Teta ~= nil then
		Binesh.CreateHTMLFile("DeltaV = -EdcosTeta", "d = - <span>DeltaV/EcosTeta</span>")
		d_Distance = -_DeltaV_Electric / (E_Electric*Math.Cos(Teta))
		Binesh.AddToHTML("d = - <span>".._DeltaV_Electric.."/"..E_Electric.."</span> &#8658; d = "..d_Distance.." m")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "d");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindTeta = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ");
if FindTeta ~= -1 and ListBox.GetItemData("unknowns", FindTeta) == "Teta"or ListBox.GetItemData("unknowns", FindTeta) == "Alpha" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta") ~= -1 then
	if _DeltaV_Electric ~= nil and E_Electric ~= nil and d_Distance ~= nil then
		Binesh.CreateHTMLFile("DeltaV = -EdcosTeta", "cosTeta = - <span>DeltaV/Ed</span>")
		cosTeta = -_DeltaV_Electric / (E_Electric*d_Distance)
		Binesh.AddToHTML("cosTeta = - <span>".._DeltaV_Electric.."/"..E_Electric.."*"..d_Distance.."</span> &#8658; cosTeta = "..cosTeta)
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "d");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end