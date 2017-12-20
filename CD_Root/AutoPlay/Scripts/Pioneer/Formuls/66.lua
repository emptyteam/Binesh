if _DeltaL == nil then
	Binesh.AddUnknown(" €ÌÌ— ÿÊ·", "DeltaL")
end

if _L1 == nil then
	Binesh.AddUnknown("«Ê·Ì‰ ÿÊ·", "L1")
end

if _L2 == nil then
	Binesh.AddUnknown("œÊ„Ì‰ ÿÊ·", "L2")
end

if Alpha_Length == nil then
	Binesh.AddUnknown("÷—Ì» «‰»”«ÿ", "Alpha")
end

if _DeltaTeta == nil then
	Binesh.AddUnknown(" €ÌÌ— œ„«", "DeltaTeta")
end

if _Teta1 == nil then
	Binesh.AddUnknown("«Ê·Ì‰ œ„«", "Teta1")
end

if _Teta2 == nil then
	Binesh.AddUnknown("œÊ„Ì‰ œ„«", "Teta2")
end
--------------------------{DELTA}--------------------------

FindDeltaL = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— ÿÊ·");
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
end

FindL1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ÿÊ·");
if FindL1 ~= -1 and ListBox.GetItemData("unknowns", FindL1) == "L1" or ListBox.GetItemData("unknowns", FindL1) == "T1" then
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
end

FindL2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ÿÊ·");
if FindL2 ~= -1 and ListBox.GetItemData("unknowns", FindL2) == "L2" or ListBox.GetItemData("unknowns", FindL2) == "T2" then
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


FindDeltaTeta = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«");
if FindDeltaTeta ~= -1 and ListBox.GetItemData("unknowns", FindDeltaTeta) == "DeltaTeta" then
	if _Teta1 ~= nil and _Teta2 ~= nil then
		Binesh.CreateHTMLFile("DeltaTeta = Teta<sub>2</sub>-Teta<sub>1</sub>")
		_DeltaTeta = _Teta2 - _Teta1
		Binesh.AddToHTML("DeltaTeta = ".._Teta2.."-".._Teta1.." &#8658; DeltaTeta = ".._DeltaTeta.."<sup>o</sup>C")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaTeta");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindTeta1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«");
if FindTeta1 ~= -1 and ListBox.GetItemData("unknowns", FindTeta1) == "Teta1" then
	if _DeltaTeta ~= nil and _Teta2 ~= nil then
		Binesh.CreateHTMLFile("DeltaTeta = Teta<sub>2</sub>-Teta<sub>1</sub>", "Teta<sub>1</sub> = Teta<sub>2</sub>-DeltaTeta")
		_Teta1 = _Teta2-_DeltaTeta
		Binesh.AddToHTML("Teta<sub>1</sub> = ".._Teta2.."-".._DeltaTeta.." &#8658; Teta<sub>1</sub> = ".._Teta1.."<sup>o</sup>C")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Teta1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindTeta2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«");
if FindTeta2 ~= -1 and ListBox.GetItemData("unknowns", FindTeta2) == "Teta2" then
	if _DeltaTeta ~= nil and _Teta1 ~= nil then
		Binesh.CreateHTMLFile("DeltaTeta = Teta<sub>2</sub>-Teta<sub>1</sub>", "Teta<sub>2</sub> = DeltaTeta+Teta<sub>1</sub>")
		_Teta2 = _Teta1+_DeltaTeta
		Binesh.AddToHTML("Teta<sub>2</sub> = ".._DeltaTeta.."+".._Teta1.." &#8658; Teta<sub>2</sub> = ".._Teta2.."<sup>o</sup>C")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Teta2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end
--------------------------END {DELTA}--------------------------

FindDeltaL = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— ÿÊ·");
if FindDeltaL ~= -1 and ListBox.GetItemData("unknowns", FindDeltaL) == "DeltaL" and (ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ÿÊ·") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaL") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L2") ~= -1) then
	if _DeltaTeta ~= nil and Alpha_Length ~= nil and _L1 ~= nil then
		Binesh.CreateHTMLFile("DeltaL = <span>L<sub>1</sub>AlphaDeltaTeta</span>)")
		_DeltaL = L1*Alpha*_DeltaTeta
		
		Binesh.AddToHTML("DeltaL = "..L1.."*"..Alpha_Length.."*".._DeltaTeta.." &#8658; DeltaL = ".._DeltaL.." m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("L1: ".._L1.." m", "V")
		Binesh.AddToHTML("DeltaTeta: "..DeltaTeta.." <sup>o</sup>C", "V")
		Binesh.AddToHTML("Alpha: "..Alpha_Length.." 1/C", "V")
		Binesh.AddToHTML("DeltaL: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— ÿÊ·");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaL");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindL1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ÿÊ·");
if FindL1 ~= -1 and ListBox.GetItemData("unknowns", FindL1) == "L1" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L1") ~= -1 then
	if _DeltaL ~= nil and Alpha_Length ~= nil and _DeltaTeta ~= nil then
		Binesh.CreateHTMLFile("DeltaL = L<sub>1</sub>AlphaDeltaTeta", "L<sub>1</sub> = <span>DeltaL/AlphaDeltaTeta</span>")
		_L1 = DeltaL/(Alpha_Length*DeltaTeta)
		
		Binesh.AddToHTML("L<sub>1</sub> = <span>"..DeltaL.."/"..Alpha_Length.."*".._DeltaTeta.."</span> &#8658; L<sub>1</sub> = ".._L1.." m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("DeltaL: ".._DeltaL.." m", "V")
		Binesh.AddToHTML("DeltaTeta: "..DeltaTeta.." <sup>o</sup>C", "V")
		Binesh.AddToHTML("Alpha: "..Alpha_Length.." 1/C", "V")
		Binesh.AddToHTML("L1: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ÿÊ·");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "L1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindAlpha_length = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» «‰»”«ÿ");
if FindAlpha_Length ~= -1 and ListBox.GetItemData("unknowns", FindAlpha_Length) == "Alpha" and ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» «‰»”«ÿ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Alpha") ~= -1 then
	if _DeltaL ~= nil and _DeltaTeta ~= nil and _L1 ~= nil then
		Binesh.CreateHTMLFile("DeltaL = L<sub>1</sub>AlphaDeltaTeta", "Alpha = <span>DeltaL/L<sub>1</sub>DeltaTeta</span>")
		Alpha_Length = _DeltaL/(L1*_DeltaTeta)
		
		Binesh.AddToHTML("Alpha = <span>".._DeltaL.."/"..L1.."*".._DeltaTeta.."</span> &#8658; Alpha = "..Alpha_Length.." 1/C")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("DeltaL: ".._DeltaL.." m", "V")
		Binesh.AddToHTML("L1: ".._L1.." m", "V")
		Binesh.AddToHTML("DeltaTeta: "..DeltaTeta.." <sup>o</sup>C", "V")
		Binesh.AddToHTML("Alpha: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» «‰»”«ÿ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Alpha");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindDeltaTeta = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«");
if FindDeltaTeta ~= -1 and ListBox.GetItemData("unknowns", FindDeltaTeta) == "DeltaTeta" and (ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta2") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaT") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T2") ~= -1) then
	if _DeltaL ~= nil and L1 ~= nil and Alpha_Length ~= nil then
		Binesh.CreateHTMLFile("DeltaL = L<sub>1</sub>AlphaDeltaTeta", "DeltaTeta = <span>DeltaL/L<sub>1</sub>Alpha</span>")
		_DeltaTeta = _DeltaL/(L1*Alpha_Length)
		
		Binesh.AddToHTML("DeltaTeta = <span>".._DeltaL.."/"..L1.."*"..ALpha_Length.."</span> &#8658; DeltaTeta = ".._DeltaTeta.."<sup>o</sup>C")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("DeltaL: ".._DeltaL.." m", "V")
		Binesh.AddToHTML("L1: ".._L1.." m", "V")
		Binesh.AddToHTML("Alpha: "..Alpha_Length.." 1/C", "V")
		Binesh.AddToHTML("DeltaTeta: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaTeta");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end