if Alpha_Length == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» «‰»”«ÿ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Alpha' then
		ListBox.AddItem("unknowns", "÷—Ì» «‰»”«ÿ", "Alpha");
	end
end

if _DeltaTeta == nil and _DeltaT == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'DeltaTeta' then
		ListBox.AddItem("unknowns", " €ÌÌ— œ„«", "DeltaTeta");
	end
end
if _Teta1 == nil and _T1 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Teta1' then
		ListBox.AddItem("unknowns", "«Ê·Ì‰ œ„«", "T1");
	end
end
if _Teta2 == nil and T2 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Teta2' then
		ListBox.AddItem("unknowns", "œÊ„Ì‰ œ„«", "T2");
	end
end

if _DeltaL == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— ÿÊ·")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'DeltaL' then
		ListBox.AddItem("unknowns", " €ÌÌ— ÿÊ·", "DeltaL");
	end
end
if _L1 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ÿÊ·")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'L1' then
		ListBox.AddItem("unknowns", "«Ê·Ì‰ ÿÊ·", "L1");
	end
end
if _L2 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ÿÊ·")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'L2' then
		ListBox.AddItem("unknowns", "œÊ„Ì‰ ÿÊ·", "L2");
	end
end

FindAlpha_length = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» «‰»”«ÿ");
FindDeltaTeta = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«")
FindTeta1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«")
FindTeta2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«")
FindDeltaL = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— ÿÊ·")
FindL1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ÿÊ·")
FindL2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ÿÊ·")

if _DeltaT ~= nil or _T1 ~= nil or _T2 ~= nil then
	Binesh.CreateHTMLFile("T = Teta+273", "Teta = T-273")
end

if _DeltaT ~= nil then
	_DeltaTeta = _DeltaT-273
	Binesh.AddToHTML("DeltaTeta = ".._DeltaT.."-273 &#8658; DeltaTeta = ".._DeltaTeta.."C")
	Binesh.AddToHTML("<br>") -- Create ENTER in HTML
end
if _T1 ~= nil then
	_Teta1 = _T1-273
	Binesh.AddToHTML("Teta<sub>1</sub> = ".._T1.."-273 &#8658; Teta<sub>1</sub> = ".._Teta1.."C")
	Binesh.AddToHTML("<br>") -- Create ENTER in HTML
end
if _T2 ~= nil then
	_Teta2 = _T2-273
	Binesh.AddToHTML("Teta<sub>2</sub> = ".._T2.."-273 &#8658; Teta<sub>2</sub> = ".._Teta2.."C")
	Binesh.AddToHTML("<br>") -- Create ENTER in HTML
end

--------------------------{DELTA}--------------------------

if FindDeltaTeta ~= -1 and ListBox.GetItemData("unknowns", FindDeltaTeta) == "DeltaTeta" then
	if _Teta1 ~= nil and _Teta2 ~= nil then
		Binesh.CreateHTMLFile("DeltaTeta = Teta<sub>2</sub>-Teta<sub>1</sub>")
		_DeltaTeta = _Teta2 - _Teta1
		Binesh.AddToHTML("DeltaTeta = ".._Teta2.."-".._Teta1.." &#8658; DeltaTeta = ".._DeltaTeta.."C")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaTeta");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindTeta1 ~= -1 and ListBox.GetItemData("unknowns", FindTeta1) == "Teta1" or ListBox.GetItemData("unknowns", FindTeta1) == "T1" then
	if _DeltaTeta ~= nil and _Teta2 ~= nil then
		Binesh.CreateHTMLFile("DeltaTeta = Teta<sub>2</sub>-Teta<sub>1</sub>", "Teta<sub>1</sub> = Teta<sub>2</sub>-DeltaTeta")
		_Teta1 = _Teta2-_DeltaTeta
		Binesh.AddToHTML("Teta<sub>1</sub> = ".._Teta2.."-".._DeltaTeta.." &#8658; Teta<sub>1</sub> = ".._Teta1.."C")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Teta1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindTeta2 ~= -1 and ListBox.GetItemData("unknowns", FindTeta2) == "Teta2" or ListBox.GetItemData("unknowns", FindTeta2) == "T2" then
	if _DeltaTeta ~= nil and _Teta1 ~= nil then
		Binesh.CreateHTMLFile("DeltaTeta = Teta<sub>2</sub>-Teta<sub>1</sub>", "Teta<sub>2</sub> = DeltaTeta+Teta<sub>1</sub>")
		_Teta2 = _Teta1+_DeltaTeta
		Binesh.AddToHTML("Teta<sub>2</sub> = ".._DeltaTeta.."+".._Teta1.." &#8658; Teta<sub>2</sub> = ".._Teta2.."C")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Teta2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindDeltaTeta ~= -1 and ListBox.GetItemData("unknowns", FindDeltaTeta) == "DeltaT" then
	if _Teta1 ~= nil and _Teta2 ~= nil then
		Binesh.CreateHTMLFile("DeltaTeta = Teta<sub>2</sub>-Teta<sub>1</sub>")
		_DeltaTeta = _Teta2 - _Teta1
		Binesh.AddToHTML("DeltaTeta = ".._Teta2.."-".._Teta1.." &#8658; DeltaTeta = ".._DeltaTeta.."K")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaTeta");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindTeta1 ~= -1 and ListBox.GetItemData("unknowns", FindTeta1) == "T1" then
	if _DeltaTeta ~= nil and _Teta2 ~= nil then
		Binesh.CreateHTMLFile("DeltaTeta = Teta<sub>2</sub>-Teta<sub>1</sub>", "Teta<sub>1</sub> = Teta<sub>2</sub>-DeltaTeta")
		_Teta1 = _Teta2-_DeltaTeta
		Binesh.AddToHTML("Teta<sub>1</sub> = ".._Teta2.."-".._DeltaTeta.." &#8658; Teta<sub>1</sub> = ".._Teta1.."K")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Teta1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindTeta2 ~= -1 and ListBox.GetItemData("unknowns", FindTeta2) == "T2" then
	if _DeltaTeta ~= nil and _Teta1 ~= nil then
		Binesh.CreateHTMLFile("DeltaTeta = Teta<sub>2</sub>-Teta<sub>1</sub>", "Teta<sub>2</sub> = DeltaTeta+Teta<sub>1</sub>")
		_Teta2 = _Teta1+_DeltaTeta
		Binesh.AddToHTML("Teta<sub>2</sub> = ".._DeltaTeta.."+".._Teta1.." &#8658; Teta<sub>2</sub> = ".._Teta2.."K")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Teta2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end
if FindDeltaL ~= -1 and ListBox.GetItemData("unknowns", FindDeltaL) == "DeltaL" then
	if _L1 ~= nil and _L2 ~= nil then
		Binesh.CreateHTMLFile("DeltaL = L<sub>2</sub>-L<sub>1</sub>")
		_DeltaL = _L2 - _L1
		Binesh.AddToHTML("DeltaL = ".._L2.."-".._L1.." &#8658; DeltaL = ".._DeltaL.."m")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— ÿÊ·");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaL");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindL1 ~= -1 and ListBox.GetItemData("unknowns", FindL1) == "L1" or ListBox.GetItemData("unknowns", FindL1) == "T1" then
	if _DeltaL ~= nil and _L2 ~= nil then
		Binesh.CreateHTMLFile("DeltaL = L<sub>2</sub>-L<sub>1</sub>", "L<sub>1</sub> = L<sub>2</sub>-DeltaL")
		_L1 = _L2-_DeltaL
		Binesh.AddToHTML("L<sub>1</sub> = ".._L2.."-".._DeltaL.." &#8658; L<sub>1</sub> = ".._L1.."m")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ÿÊ·");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "L1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindL2 ~= -1 and ListBox.GetItemData("unknowns", FindL2) == "L2" or ListBox.GetItemData("unknowns", FindL2) == "T2" then
	if _DeltaL ~= nil and _L1 ~= nil then
		Binesh.CreateHTMLFile("DeltaL = L<sub>2</sub>-L<sub>1</sub>", "L<sub>2</sub> = DeltaL+L<sub>1</sub>")
		_L2 = _L1+_DeltaL
		Binesh.AddToHTML("L<sub>2</sub> = ".._DeltaL.."+".._L1.." &#8658; L<sub>2</sub> = ".._L2.."m")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ÿÊ·");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "L2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

--------------------------END {DELTA}--------------------------
if FindDeltaL ~= -1 and ListBox.GetItemData("unknowns", FindDeltaL) == "DeltaL" then
	if _DeltaTeta ~= nil and Alpha_Length ~= nil and _L1 ~= nil then
		Binesh.CreateHTMLFile("DeltaL = <span>L<sub>1</sub>*Alpha*DeltaTeta</span>)")
		_DeltaL = L1*Alpha*_DeltaTeta
		
		Binesh.AddToHTML("DeltaL = "..L1.."*"..Alpha_Length.."*".._DeltaTeta.." &#8658; DeltaL = ".._DeltaL.."m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— ÿÊ·");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaL");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindL1 ~= -1 and ListBox.GetItemData("unknowns", FindL1) == "L1" then
	if _DeltaL ~= nil and Alpha_Length ~= nil and _DeltaTeta ~= nil then
		Binesh.CreateHTMLFile("DeltaL = L<sub>1</sub>*Alpha*DeltaTeta", "L<sub>1</sub> = <span>DeltaL/Alpha*DeltaTeta</span>")
		_L1 = DeltaL/Alpha_Length*DeltaTeta
		
		Binesh.AddToHTML("L<sub>1</sub> = <span>"..DeltaL.."/"..Alpha_Length.."*".._DeltaTeta.."</span> &#8658; L<sub>1</sub> = ".._L1.."m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ÿÊ·");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "L1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindAlpha_Lengh ~= -1 and ListBox.GetItemData("unknowns", FindAlpha_Lengh) == "Alpha" then
	if _DeltaL ~= nil and _DeltaTeta ~= nil and _L1 ~= nil then
		Binesh.CreateHTMLFile("DeltaL = L<sub>1</sub>*Alpha*DeltaTeta", "Alpha = <span>DeltaL/L<sub>1</sub>*DeltaTeta</span>")
		Alpha_Length = _DeltaL/L1*_DeltaTeta
		
		Binesh.AddToHTML("Alpha = <span>".._DeltaL.."/"..L1.."*".._DeltaTeta.."</span> &#8658; Alpha = "..Alpha_Length.."1/C")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» «‰»”«ÿ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Alpha");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindDeltaTeta ~= -1 and ListBox.GetItemData("unknowns", FindDeltaTeta) == "DeltaTeta" then
	if _DeltaL ~= nil and L1 ~= nil and Alpha_Length ~= nil then
		Binesh.CreateHTMLFile("DeltaL = L<sub>1</sub>*Alpha*DeltaTeta", "DeltaTeta = <span>DeltaL/L<sub>1</sub>*Alpha</span>")
		_DeltaTeta = _DeltaL/L1*Alpha_Length
		
		Binesh.AddToHTML("DeltaTeta = <span>".._DeltaL.."/"..L1.."*"..ALpha_Length.."</span> &#8658; DeltaTeta = ".._DeltaTeta.."C")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaTeta");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end