-- Beta_Length_69 = Binesh.Genesis("÷—Ì» «‰»”«ÿ", "Beta", "", "", 1, "1/C", "Ìò »— ”·”ÌÊ”", false);
if Beta_Length == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» «‰»”«ÿ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Beta' then
		ListBox.AddItem("unknowns", "÷—Ì» «‰»”«ÿ", "Beta");
	end
end

if _DeltaV == nil and _DeltaVL == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— ÕÃ„")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'DeltaV' then
		ListBox.AddItem("unknowns", " €ÌÌ— ÕÃ„", "DeltaV");
	end
end
if _V1 == nil and _V1L == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ÕÃ„")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'V1' then
		ListBox.AddItem("unknowns", "«Ê·Ì‰ ÕÃ„", "V1");
	end
end
if _V2 == nil and _V2L == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ÕÃ„")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'V2' then
		ListBox.AddItem("unknowns", "œÊ„Ì‰ ÕÃ„", "V2");
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
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'T1' then
		ListBox.AddItem("unknowns", "«Ê·Ì‰ œ„«", "T1");
	end
end
if _Teta2 == nil and _T2 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'T2' then
		ListBox.AddItem("unknowns", "œÊ„Ì‰ œ„«", "T2");
	end
end

FindBeta_Length = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» «‰»”«ÿ")
FindDeltaTeta = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«")
FindTeta1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«")
FindTeta2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«")
FindDeltaV = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— ÕÃ„")
FindV1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ÕÃ„")
FindV2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ÕÃ„")

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

if _DeltaVL ~= nil or _V1L ~= nil or _V2L ~= nil then
	Binesh.CreateHTMLFile("V = V<sub>L</sub>*10<sup>-3</sup>")
end

if _DeltaVL ~= nil then
	_DeltaV = _DeltaVL * 10^-3
	Binesh.AddToHTML("DeltaV = ".._DeltaVL.."*10<sup>-3</sup> &#8658; DeltaV = ".._DeltaV.."m<sup>3</sup>")
	Binesh.AddToHTML("<br>") -- Create ENTER in HTML
end

if _V1L ~= nil then
	_V1 = _V1L * 10^-3
	Binesh.AddToHTML("V<sub>1</sub> = ".._V1L.."*10<sup>-3</sup> &#8658; V<sub>1</sub> = ".._V1L.."m<sup>3</sup>")
	Binesh.AddToHTML("<br>") -- Create ENTER in HTML
end

if _V2L ~= nil then
	_V2 = _V2L * 20^-3
	Binesh.AddToHTML("V<sub>2</sub> = ".._V2L.."*20<sup>-3</sup> &#8658; V<sub>2</sub> = ".._V2L.."m<sup>3</sup>")
	Binesh.AddToHTML("<br>") -- Create ENTER in HTML
end

--------------------------{DELTA}--------------------------
if FindDeltaTeta ~= -1 and ListBox.GetItemData("unknowns", FindDeltaTeta) == "DeltaTeta" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«— ›«⁄") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "h") ~= -1 then
	if _Teta1 ~= nil and _Teta2 ~= nil then
		Binesh.AddToHTML("DeltaTeta = Teta<sub>2</sub>-Teta<sub>1</sub>")
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
		Binesh.AddToHTML("DeltaTeta = Teta<sub>2</sub>-Teta<sub>1</sub>", "Teta<sub>1</sub> = Teta<sub>2</sub>-DeltaTeta")
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
		Binesh.AddToHTML("DeltaTeta = Teta<sub>2</sub>-Teta<sub>1</sub>", "Teta<sub>2</sub> = DeltaTeta+Teta<sub>1</sub>")
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
end

if FindDeltaV ~= -1 and ListBox.GetItemData("unknowns", FindDeltaV) == "DeltaV" then
	if _V1 ~= nil and _V2 ~= nil then
		Binesh.AddToHTML("DeltaV = V<sub>2</sub>-V<sub>1</sub>")
		_DeltaV = _V2 - _V1
		Binesh.AddToHTML("DeltaV = ".._V2.."-".._V1.." &#8658; DeltaV = ".._DeltaV.."m<sup>3</sup>")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— ÕÃ„");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaV");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindV1 ~= -1 and ListBox.GetItemData("unknowns", FindV1) == "V1" or ListBox.GetItemData("unknowns", FindV1) == "V1" then
	if _DeltaV ~= nil and _V2 ~= nil then
		Binesh.AddToHTML("DeltaV = V<sub>2</sub>-V<sub>1</sub>", "V<sub>1</sub> = V<sub>2</sub>-DeltaV")
		_V1 = _V2-_DeltaV
		Binesh.AddToHTML("V<sub>1</sub> = ".._V2.."-".._DeltaV.." &#8658; V<sub>1</sub> = ".._V1.."m<sup>3</sup>")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ÕÃ„");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindV2 ~= -1 and ListBox.GetItemData("unknowns", FindV2) == "V2" or ListBox.GetItemData("unknowns", FindV2) == "V2" then
	if _DeltaV ~= nil and _V1 ~= nil then
		Binesh.AddToHTML("DeltaV = V<sub>2</sub>-V<sub>1</sub>", "V<sub>2</sub> = DeltaV+V<sub>1</sub>")
		_V2 = _V1+_DeltaV
		Binesh.AddToHTML("V<sub>2</sub> = ".._DeltaV.."+".._V1.." &#8658; V<sub>2</sub> = ".._V2.."m<sup>3</sup>")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ÕÃ„");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end
--------------------------END {DELTA}--------------------------

if FindDeltaV ~= -1 and ListBox.GetItemData("unknowns", FindDeltaV) == "DeltaV" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÕÃ„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaV") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V2") ~= -1 then 
	if Beta_Length ~= nil and _DeltaTeta ~= nil and _V1 ~= nil then
		Binesh.AddToHTML("DeltaV = V<sub>1</sub>*Beta_Length*DeltaTeta")
		_DeltaV = _V1*Beta_Length*_DeltaTeta
		Binesh.AddToHTML("DeltaV = ".._V1.."*"..Beta_Length.."*".._DeltaTeta.." &#8658; DeltaV = ".._DeltaV.."m<sup>3</sup>")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— ÕÃ„");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaV");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindBeta_Length ~= -1 and ListBox.GetItemData("unknowns", FindBeta_Length) == "Beta" and ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» «‰»”«ÿ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Beta") ~= -1 then
	if _DeltaV ~= nil and _DeltaTeta ~= nil and _V1 ~= nil then
		Binesh.AddToHTML("DeltaV = V<sub>1</sub>*Beta_Length*DeltaTeta","Beta = <span>DeltaV/DeltaTeta*V<sub>1</sub></span>")
		Beta_Length = _DeltaV/_DeltaTeta*_V1
		Binesh.AddToHTML("Beta = <span>".._DeltaV.."/".._DeltaTeta.."*".._V1.."</span> &#8658; Beta_Length = "..Beta_Length.."1/C")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» «‰»”«ÿ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Beta");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindDeltaTeta ~= -1 and ListBox.GetItemData("unknowns", FindDeltaTeta) == "DeltaTeta" and ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta2") ~= -1 then 
	if Beta_Length ~= nil and _DetlaV ~= nil and _V1 ~= nil then
		Binesh.AddToHTML("DeltaV = V<sub>1</sub>*Beta_Length*DeltaTeta", "DeltaTeta = <span>DeltaV/V<sub>1</sub>*Beta_Length</sapn>")
		_DeltaTeta = _DeltaV/_V1*Beta_Length
		Binesh.AddToHTML("DeltaTeta = <span>".._DeltaV.."/".._V1.."*"..Beta_Length.."</span> &#8658; DeltaTeta = ".._DeltaTeta.."C")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaTeta");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindV1 ~= -1 and ListBox.GetItemData("unknowns", FindV1) == "V1" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ÕÃ„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1 then 
	if Beta_Length ~= nil and _DetlaV ~= nil and _DeltaTeta ~= nil then
		Binesh.AddToHTML("DeltaV = V<sub>1</sub>*Beta_Length*DeltaTeta", "V<sub>1</sub> = <span>DeltaV/Beta_Length*DeltaTeta</sapn>")
		_V1 = _DeltaV/Beta_Length*DeltaTeta
		Binesh.AddToHTML("V<sub>1</sub> = <span>".._DeltaV.."/"..Beta_Length.."*".._DeltaTeta.."</span> &#8658; V<sub>1</sub> = ".._V1.."m<sup>3</sup>")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ÕÃ„");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end