if Q == nil then
	Binesh.AddUnknown("ê—„«", "Q")
end

if W == nil then
	Binesh.AddUnknown("ò«—", "W")
end

if _DeltaU_In == nil then
	Binesh.AddUnknown(" €ÌÌ— «‰—éÌ œ—Ê‰Ì", "DeltaU")
end
if _U1_In == nil then
	Binesh.AddUnknown("«Ê·Ì‰ «‰—éÌ œ—Ê‰Ì", "U1")
end
if _U2_In == nil then
	Binesh.AddUnknown("œÊ„Ì‰ «‰—éÌ œ—Ê‰Ì", "U2")
end

--------------------------{DELTA}--------------------------
FindDeltaU_In = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ œ—Ê‰Ì");
if FindDeltaU_In ~= -1 and ListBox.GetItemData("unknowns", FindDeltaU_In) == "DeltaU" then
	if _U1_In ~= nil and _U2_In ~= nil then
		Binesh.CreateHTMLFile("DeltaU = U<sub>2</sub>-U<sub>1</sub>")
		_DeltaU_In = _U2_In - _U1_In
		Binesh.AddToHTML("DeltaU = ".._U2_In.."-".._U1_In.." &#8658; DeltaU = ".._DeltaU_In.." J")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ œ—Ê‰Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaU");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindU1_In = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ «‰—éÌ œ—Ê‰Ì");
if FindU1_In ~= -1 and ListBox.GetItemData("unknowns", FindU1_In) == "U1" then
	if _DeltaU_In ~= nil and _U2_In ~= nil then
		Binesh.CreateHTMLFile("DeltaU = U<sub>2</sub>-U<sub>1</sub>", "U<sub>1</sub> = U<sub>2</sub>-DeltaU")
		_U1_In = _U2_In-_DeltaU_In
		Binesh.AddToHTML("U<sub>1</sub> = ".._U2_In.."-".._DeltaU_In.." &#8658; U<sub>1</sub> = ".._U1_In.." J")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ «‰—éÌ œ—Ê‰Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "U1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindU2_In = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ «‰—éÌ œ—Ê‰Ì");
if FindU2_In ~= -1 and ListBox.GetItemData("unknowns", FindU2_In) == "U2" then
	if _DeltaU_In ~= nil and _U1_In ~= nil then
		Binesh.CreateHTMLFile("DeltaU = U<sub>2</sub>-U<sub>1</sub>", "U<sub>2</sub> = DeltaU+U<sub>1</sub>")
		_U2_In = _U1_In+_DeltaU_In
		Binesh.AddToHTML("U<sub>2</sub> = ".._DeltaU_In.."+".._U1_In.." &#8658; U<sub>2</sub> = ".._U2_In.." J")
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
FindQ = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«");
if FindQ ~= -1 and ListBox.GetItemData("unknowns", FindQ) == "Q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ê—„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Q") ~= -1 then
	if W ~= nil and _DeltaU_In ~= nil then
		Binesh.CreateHTMLFile("DeltaU = Q+W", " Q = DeltaU-W")
		Q = _DeltaU_In-W
		
		Binesh.AddToHTML("DeltaU: ".._DeltaU_In.." J", "V")
		Binesh.AddToHTML("W: "..W.." J", "V")
		Binesh.AddToHTML("Q: ?", "V")
		
		Binesh.AddToHTML("Q = ".._DeltaU_In.."-"..W.." &#8658; Q = "..Q.." J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindW = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«—");
if FindW ~= -1 and ListBox.GetItemData("unknowns", FindW) == "W" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ò«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1 then 
	if Q ~= nil and _DeltaU_In ~= nil then
		Binesh.CreateHTMLFile("DeltaU = Q+W", "W = DeltaU-Q")
		W = _DeltaU_In-Q
		
		Binesh.AddToHTML("DeltaU: ".._DeltaU_In.." J", "V")
		Binesh.AddToHTML("Q: "..Q.." J", "V")
		Binesh.AddToHTML("W: ?", "V")
		
		Binesh.AddToHTML("W = ".._DeltaU_In.."-"..Q.." &#8658; W = "..W.." J")
		
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«—");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "W");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindDeltaU_In = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ œ—Ê‰Ì");
if FindDeltaU_In ~= -1 and ListBox.GetItemData("unknowns", FindDeltaU_In) == "DeltaU" and (ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ œ—Ê‰Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ «‰—éÌ œ—Ê‰Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ «‰—éÌ œ—Ê‰Ì") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaU") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U2") ~= -1) then
	if Q ~= nil and W ~= nil then
		Binesh.CreateHTMLFile("DeltaU = Q+W")
		_DeltaU_In = Q+W
		
		Binesh.AddToHTML("Q: "..Q.." J", "V")
		Binesh.AddToHTML("W: "..W.." J", "V")
		Binesh.AddToHTML("DeltaU: ?", "V")
		
		Binesh.AddToHTML("DeltaU = "..Q.."+"..W.." &#8658; DeltaU = ".._DeltaU_In.." J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ œ—Ê‰Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaU");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end