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

if E_Electric == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'E' then
		ListBox.AddItem("unknowns", "„Ìœ«‰", "E");
	end
end

if q == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'q' then
		ListBox.AddItem("unknowns", "–—Â", "q");
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

if Teta_Radian ~= nil then
	Binesh.CreateHTMLFile("<span>R/Pi</span> = <span>D/180</span>", "D = <span>R*180/Pi</span>")
	Teta = Math.RadToDeg(Teta_Radian)
	Binesh.AddToHTML("D<sub>Teta</sub> = <span>"..Teta_Radian.."*180/"..Zarib.Pi.."</span> &#8658; D<sub>Teta</sub> = "..Teta.."<sup>o</sup>")
end

--------------------------{DELTA}--------------------------
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

FindDeltaU = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ Å «‰”Ì·");
if FindDeltaU ~= -1 and ListBox.GetItemData("unknowns", FindDeltaU) == "DeltaU" and (ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ Å «‰”Ì·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ Å «‰”Ì·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ «‰—éÌ Å «‰”Ì·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ «‰—éÌ Å «‰”Ì·") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaU") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U2") ~= -1) then
	if E_Electric ~= nil and q ~= nil and Teta ~= nil and d_Distance ~= nil then
		Binesh.CreateHTMLFile("DeltaU = -E|q|dcosTeta")
		_DeltaU = -E_Electric*Math.Abs(q)*d_Distance*Math.Cos(Teta)
		
		Binesh.AddToHTML("DeltaU = -"..E_Electric.."*|"..q.."|*"..d_Distance.."*cos"..Teta.." &#8658; DeltaU = ".._DeltaU.." J")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ Å «‰”Ì·");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaU");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindE_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰");
if FindE_Electric ~= -1 and ListBox.GetItemData("unknowns", FindE_Electric) == "E" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "E") ~= -1 then
	if q ~= nil and _DeltaU ~= nil and d_Distance ~= nil and Teta ~= nil then
		Binesh.CreateHTMLFile("DeltaU = -E|q|dcosTeta", "E = - <span>DeltaU/|q|dcosTeta</span>")
		E_Electric = -_DeltaU/(Math.Abs(q)*d_Distance*Math.Cos(Teta))
		
		Binesh.AddToHTML("E = - <span>".._DeltaU.."/|"..q.."|*"..d_Distance.."*cos"..Teta.."</span> &#8658; E = "..E_Electric.." N/C")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "E");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findq = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â");
if Findq ~= -1 and ListBox.GetItemData("unknowns", Findq) == "q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
	if E_Electric ~= nil and _DeltaU ~= nil and Teta ~= nil and d_Distance ~= nil then
		Binesh.CreateHTMLFile("DeltaU = -E|q|dcosTeta", "q = |<span>DeltaU/EdcosTeta</span>|")
		
		q = Math.Abs(_DeltaU/(E_Electric*d_Distance*Math.Cos(Teta)))
		
		Binesh.AddToHTML("q = |<span>".._DeltaU.."/"..E_Electric.."*"..d_Distance.."*cos"..Teta.."</span>| &#8658; q = "..q.." C")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findd_Distance = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â");
if Findd_Distance ~= -1 and ListBox.GetItemData("unknowns", Findd_Distance) == "d" and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "d") ~= -1 then 
	if E_Electric ~= nil and _DeltaU ~= nil and Teta ~= nil and q ~= nil then
		Binesh.CreateHTMLFile("DeltaU = -E|q|dcosTeta", "d = - <span>DeltaU/E|q|cosTeta</span>")
		d_Distance = -_DeltaU / (E_Electric*Math.Abs(q)*Math.Cos(Teta))
		Binesh.AddToHTML("d = - <span>".._DeltaU.."/"..E_Electric.."*|"..q.."|*cos"..Teta.."</span> &#8658; d = "..d_Distance.." m")
		
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
	if E_Electric ~= nil and _DeltaU ~= nil and d_Distance ~= nil and q ~= nil then
		Binesh.CreateHTMLFile("DeltaU = -E|q|dcosTeta", "cosTeta = - <span>DeltaU/E|q|d</span>")
		Teta = -_DeltaU/(E_Electric*Math.Abs(q)*d_Distance)
		Binesh.AddToHTML("cosTeta = - <span>".._DeltaU.."/"..E_Electric.."*|"..q.."|*"..d_Distance.." </span> &#8658; Teta = "..Teta)
			
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Teta");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end