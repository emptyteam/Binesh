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

if _DeltaU == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ Å «‰”Ì·")
	if UnknownNamePersian == -1 then
		ListBox.AddItem("unknowns", " €ÌÌ— «‰—éÌ Å «‰”Ì·", "DeltaU");
	end
end
if _U1 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ «‰—éÌ Å «‰”Ì·")
	if UnknownNamePersian == -1 then
		ListBox.AddItem("unknowns", "«Ê·Ì‰ «‰—éÌ Å «‰”Ì·", "U1");
	end
end
if _U2 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ «‰—éÌ Å «‰”Ì·")
	if UnknownNamePersian == -1 then
		ListBox.AddItem("unknowns", "œÊ„Ì‰ «‰—éÌ Å «‰”Ì·", "U2");
	end
end

if q == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'q' then
		ListBox.AddItem("unknowns", "–—Â", "q");
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

FindDeltaU = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ Å «‰”Ì·");
if FindDeltaU ~= -1 and ListBox.GetItemData("unknowns", FindDeltaU) == "DeltaU" then
	if _U1 ~= nil and _U2 ~= nil then
		Binesh.CreateHTMLFile("DeltaU = U<sub>2</sub>-U<sub>1</sub>")
		_DeltaU = _U2 - _U1
		Binesh.AddToHTML("DeltaU = ".._U2.."-".._U1.." &#8658; DeltaV = ".._DeltaU.." J")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ Å «‰”Ì·");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaU");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindU1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ «‰—éÌ Å «‰”Ì·");
if FindU1 ~= -1 and ListBox.GetItemData("unknowns", FindU1) == "U1" or ListBox.GetItemData("unknowns", FindU1) == "U1" then
	if _DeltaU ~= nil and _U2 ~= nil then
		Binesh.CreateHTMLFile("DeltaU = U<sub>2</sub>-U<sub>1</sub>", "U<sub>1</sub> = U<sub>2</sub>-DeltaU")
		_U1 = _U2-_DeltaU
		Binesh.AddToHTML("U<sub>1</sub> = ".._U2.."-".._DeltaU.." &#8658; U<sub>1</sub> = ".._U1.." J")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ «‰—éÌ Å «‰”Ì·");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "U1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindU2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ «‰—éÌ Å «‰”Ì·");
if FindU2 ~= -1 and ListBox.GetItemData("unknowns", FindU2) == "U2" or ListBox.GetItemData("unknowns", FindU2) == "U2" then
	if _DeltaU ~= nil and _U1 ~= nil then
		Binesh.CreateHTMLFile("DeltaU = U<sub>2</sub>-U<sub>1</sub>", "U<sub>2</sub> = DeltaU+U<sub>1</sub>")
		_U2 = _U1+_DeltaU
		Binesh.AddToHTML("U<sub>2</sub> = ".._DeltaU.."+".._U1.." &#8658; U<sub>2</sub> = ".._U2.." J")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ «‰—éÌ Å «‰”Ì·");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "U2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end
--------------------------END {DELTA}--------------------------

FindDeltaV_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— Ê· «é");
if FindDeltaV_Electric ~= -1 and ListBox.GetItemData("unknowns", FindDeltaV_Electric) == "DeltaV" and (ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ Ê· «é") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaV") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V2") ~= -1) then
	if _DeltaU ~= nil and q ~= nil then
		Binesh.CreateHTMLFile("DeltaV = <span>DeltaU/q</span>")
		_DeltaV_Electric = _DeltaU/q
		Binesh.AddToHTML("DeltaV = <span>".._DeltaU.."/"..q.."</span> &#8658; DeltaV = ".._DeltaV_Electric.." V")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— Ê· «é");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaV");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindDeltaU = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ Å «‰”Ì·");
if FindDeltaU ~= -1 and ListBox.GetItemData("unknowns", FindDeltaU) == "DeltaU" and (ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ Å «‰”Ì·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ «‰—éÌ Å «‰”Ì·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ «‰—éÌ Å «‰”Ì·") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaU") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U2") ~= -1) then
	if _DeltaV_Electric ~= nil and q ~= nil then
		Binesh.CreateHTMLFile("DeltaV = <span>DeltaU/q</span>", "DeltaU = DeltaV*q")
		_DeltaU = _DeltaV_Electric * q
		Binesh.AddToHTML("DeltaU = ".._DeltaV_Electric.."*"..q.." &#8658; DeltaU = ".._DeltaU.." J")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ Å «‰”Ì·");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaU");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findq = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â");
if Findq ~= -1 and ListBox.GetItemData("unknowns", Findq) == "q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
	if _DeltaV_Electric ~= nil and _DeltaU ~= nil then
		Binesh.CreateHTMLFile("DeltaV = <span>DeltaU/q</span>", "q = <span>DeltaU/DeltaV</span>")
		q = _DeltaU/_DeltaV_Electric
		Binesh.AddToHTML("q = <span>".._DeltaU.."/".._DeltaV_Electric.."</span> &#8658; q = "..q.." C")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end