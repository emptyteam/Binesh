if Q == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Q' then
		ListBox.AddItem("unknowns", "ê—„«", "Q");
	end
end

if W == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«—")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'W' then
		ListBox.AddItem("unknowns", "ò«—", "W");
	end
end

if _DeltaU_In == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ œ—Ê‰Ì")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'DeltaU' then
		ListBox.AddItem("unknowns", " €ÌÌ— «‰—éÌ œ—Ê‰Ì", "DeltaU");
	end
end
if _U1_In == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ «‰—éÌ œ—Ê‰Ì")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'U1' then
		ListBox.AddItem("unknowns", "«Ê·Ì‰ «‰—éÌ œ—Ê‰Ì", "U1");
	end
end
if _U2_In == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ «‰—éÌ œ—Ê‰Ì")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'U2' then
		ListBox.AddItem("unknowns", "œÊ„Ì‰ «‰—éÌ œ—Ê‰Ì", "U2");
	end
end

FindQ = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«")
FindW = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«—")
FindDeltaU = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ œ—Ê‰Ì")
FindU1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ «‰—éÌ œ—Ê‰Ì")
FindU2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ «‰—éÌ œ—Ê‰Ì")

--------------------------{DELTA}--------------------------
if FindDeltaU ~= -1 and ListBox.GetItemData("unknowns", FindDeltaU) == "DeltaU" then
	if _U1_In ~= nil and _U2_In ~= nil then
		Binesh.CreateHTMLFile("DeltaU = U<sub>2</sub>-U<sub>1</sub>")
		_DeltaU_In = _U2_In - _U1_In
		Binesh.AddToHTML("DeltaU = ".._U2_In.."-".._U1_In.." &#8658; DeltaU = ".._DeltaU_In.."J")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ œ—Ê‰Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaU");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindU1 ~= -1 and ListBox.GetItemData("unknowns", FindU1) == "U1" then
	if _DeltaU_In ~= nil and _U2_In ~= nil then
		Binesh.CreateHTMLFile("DeltaU = U<sub>2</sub>-U<sub>1</sub>", "U<sub>1</sub> = U<sub>2</sub>-DeltaU")
		_U1_In = _U2_In-_DeltaU_In
		Binesh.AddToHTML("U<sub>1</sub> = ".._U2_In.."-".._DeltaU_In.." &#8658; U<sub>1</sub> = ".._U1_In.."J")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ «‰—éÌ œ—Ê‰Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "U1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindU2 ~= -1 and ListBox.GetItemData("unknowns", FindU2) == "U2" then
	if _DeltaU_In ~= nil and _U1_In ~= nil then
		Binesh.CreateHTMLFile("DeltaU = U<sub>2</sub>-U<sub>1</sub>", "U<sub>2</sub> = DeltaU+U<sub>1</sub>")
		_U2_In = _U1_In+_DeltaU_In
		Binesh.AddToHTML("U<sub>2</sub> = ".._DeltaU_In.."+".._U1_In.." &#8658; U<sub>2</sub> = ".._U2_In.."J")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ «‰—éÌ œ—Ê‰Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "U2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end
--------------------------END {DELTA}--------------------------

if FindQ ~= -1 and ListBox.GetItemData("unknowns", FindQ) == "Q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ê—„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Q") ~= -1 then
	if W ~= nil and _DeltaU_In ~= nil then
		Binesh.CreateHTMLFile("DeltaU = Q+W", " Q = DeltaU-W")
		Q = _DeltaU_In-W
		Binesh.AddToHTML("Q = ".._DeltaU_In.."-"..W.." &#8658; Q = "..Q.."J")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindW ~= -1 and ListBox.GetItemData("unknowns", FindW) == "W" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ò«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1 then 
	if Q ~= nil and _DeltaU_In ~= nil then
		Binesh.CreateHTMLFile("DeltaU = Q+W", "W = DeltaU-Q")
		W = _DeltaU_In-Q
		Binesh.AddToHTML("W = ".._DeltaU_In.."-"..Q.." &#8658; W = "..W.."J")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«—");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "W");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindDeltaU ~= -1 and ListBox.GetItemData("unknowns", FindDeltaU) == "DeltaU" and ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ œ—Ê‰Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaU") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U2") ~= -1 then 
	if Q ~= nil and W ~= nil then
		Binesh.CreateHTMLFile("DeltaU = Q+W")
		_DeltaU_In = Q+W
		Binesh.AddToHTML("DeltaU = "..Q.."+"..W.." &#8658; DeltaU = ".._DeltaU_In.."J")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ œ—Ê‰Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaU");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end