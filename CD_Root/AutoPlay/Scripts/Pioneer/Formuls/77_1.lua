if W == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«—")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'W' then
		ListBox.AddItem("unknowns", "ò«—", "W");
	end
end

if P == nil and Pa == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›‘«—")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'P' then
		ListBox.AddItem("unknowns", "›‘«—", "P");
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

FindW = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«—")
FindP = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›‘«—")
FindDeltaV = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— ÕÃ„")
FindV1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ÕÃ„")
FindV2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ÕÃ„")

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
if FindDeltaV ~= -1 and ListBox.GetItemData("unknowns", FindDeltaV) == "DeltaV" then
	if _V1 ~= nil and _V2 ~= nil then
		Binesh.CreateHTMLFile("DeltaV = V<sub>2</sub>-V<sub>1</sub>")
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
elseif FindV1 ~= -1 and ListBox.GetItemData("unknowns", FindV1) == "V1" then
	if _DeltaV ~= nil and _V2 ~= nil then
		Binesh.CreateHTMLFile("DeltaV = V<sub>2</sub>-V<sub>1</sub>", "V<sub>1</sub> = V<sub>2</sub>-DeltaV")
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
elseif FindV2 ~= -1 and ListBox.GetItemData("unknowns", FindV2) == "V2" then
	if _DeltaV ~= nil and _V1 ~= nil then
		Binesh.CreateHTMLFile("DeltaV = V<sub>2</sub>-V<sub>1</sub>", "V<sub>2</sub> = DeltaV+V<sub>1</sub>")
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

if FindDeltaV ~= -1 and ListBox.GetItemData("unknowns", FindDeltaV) == "DeltaV" and ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— ÕÃ„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaV") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V2") ~= -1 then 
	if Beta ~= nil and _DeltaTeta ~= nil then
		Binesh.CreateHTMLFile("W = -P*DeltaV", "DeltaV = <span>-W/P</span>")
		_DeltaV = -W/P
		Binesh.AddToHTML("DeltaV = <span>-"..W.."/"..P.." &#8658; DeltaV = ".._DeltaV.."m<sup>3</sup>")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÕÃ„");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaV");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindW ~= -1 and ListBox.GetItemData("unknowns", FindW) == "W" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ò«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1 then
	if _DeltaV ~= nil and P ~= nil then
		Binesh.CreateHTMLFile("W = -P*DeltaV")
		W = -P*_DeltaV
		Binesh.AddToHTML("W = -"..P.."*".._DeltaV.." &#8658; W = "..W.."J")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«—");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "W");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindP ~= -1 and ListBox.GetItemData("unknowns", FindP) == "P" and ListBox.FindItem("Words", -1, LB_BYTEXT, "›‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1 then 
	if W ~= nil and _DetlaV ~= nil then
		Binesh.CreateHTMLFile("W = -P*DeltaV", "P = <span>-W/DeltaV</span>")
		P = -W/_DeltaV
		Binesh.AddToHTML("P = <span>-"..W.."/".._DeltaV.."</span> &#8658; P = "..P.."Pa")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›‘«—");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "P");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end
