if Beta_Length == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ������")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Beta' then
		ListBox.AddItem("unknowns", "���� ������", "Beta");
	end
end

if _DeltaV == nil and _DeltaVL == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")
	if UnknownNamePersian == -1 then
		ListBox.AddItem("unknowns", "����� ���", "DeltaV");
	end
end
if _V1 == nil and _V1L == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")
	if UnknownNamePersian == -1 then
		ListBox.AddItem("unknowns", "����� ���", "V1");
	end
end
if _V2 == nil and _V2L == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")
	if UnknownNamePersian == -1 then
		ListBox.AddItem("unknowns", "����� ���", "V2");
	end
end

FindBeta_Length = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ������")
FindDeltaTeta = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")
FindTeta1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")
FindTeta2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")
FindDeltaV = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")
FindV1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")
FindV2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")

if _DeltaVL ~= nil or _V1L ~= nil or _V2L ~= nil then
	Binesh.CreateHTMLFile("V = V<sub>L</sub>*10<sup>-3</sup>")
end

if _DeltaVL ~= nil then
	_DeltaV = _DeltaVL * 10^-3
	Binesh.AddToHTML("DeltaV = ".._DeltaVL.."*10<sup>-3</sup> &#8658; DeltaV = ".._DeltaV.." m<sup>3</sup>")
	Binesh.AddToHTML("<br>") -- Create ENTER in HTML
end

if _V1L ~= nil then
	_V1 = _V1L * 10^-3
	Binesh.AddToHTML("V<sub>1</sub> = ".._V1L.."*10<sup>-3</sup> &#8658; V<sub>1</sub> = ".._V1L.." m<sup>3</sup>")
	Binesh.AddToHTML("<br>") -- Create ENTER in HTML
end

if _V2L ~= nil then
	_V2 = _V2L * 10^-3
	Binesh.AddToHTML("V<sub>2</sub> = ".._V2L.."*10<sup>-3</sup> &#8658; V<sub>2</sub> = ".._V2L.." m<sup>3</sup>")
	Binesh.AddToHTML("<br>") -- Create ENTER in HTML
end

--------------------------{DELTA}--------------------------

if FindDeltaV ~= -1 and ListBox.GetItemData("unknowns", FindDeltaV) == "DeltaV" then
	if _V1 ~= nil and _V2 ~= nil then
		Binesh.AddToHTML("DeltaV = V<sub>2</sub>-V<sub>1</sub>")
		_DeltaV = _V2 - _V1
		Binesh.AddToHTML("DeltaV = ".._V2.."-".._V1.." &#8658; DeltaV = ".._DeltaV.." m<sup>3</sup>")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaV");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindV1 ~= -1 and ListBox.GetItemData("unknowns", FindV1) == "V1" or ListBox.GetItemData("unknowns", FindV1) == "V1" then
	if _DeltaV ~= nil and _V2 ~= nil then
		Binesh.AddToHTML("DeltaV = V<sub>2</sub>-V<sub>1</sub>", "V<sub>1</sub> = V<sub>2</sub>-DeltaV")
		_V1 = _V2-_DeltaV
		Binesh.AddToHTML("V<sub>1</sub> = ".._V2.."-".._DeltaV.." &#8658; V<sub>1</sub> = ".._V1.." m<sup>3</sup>")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindV2 ~= -1 and ListBox.GetItemData("unknowns", FindV2) == "V2" or ListBox.GetItemData("unknowns", FindV2) == "V2" then
	if _DeltaV ~= nil and _V1 ~= nil then
		Binesh.AddToHTML("DeltaV = V<sub>2</sub>-V<sub>1</sub>", "V<sub>2</sub> = DeltaV+V<sub>1</sub>")
		_V2 = _V1+_DeltaV
		Binesh.AddToHTML("V<sub>2</sub> = ".._DeltaV.."+".._V1.." &#8658; V<sub>2</sub> = ".._V2.." m<sup>3</sup>")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end
--------------------------END {DELTA}--------------------------

if FindDeltaV ~= -1 and ListBox.GetItemData("unknowns", FindDeltaV) == "DeltaV" and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaV") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V2") ~= -1) then
	if Beta_Length ~= nil and _DeltaTeta ~= nil and _V1 ~= nil then
		Binesh.AddToHTML("DeltaV = V<sub>1</sub>BetaDeltaTeta")
		_DeltaV = _V1*Beta_Length*_DeltaTeta
		Binesh.AddToHTML("DeltaV = ".._V1.."*"..Beta_Length.."*".._DeltaTeta.." &#8658; DeltaV = ".._DeltaV.." m<sup>3</sup>")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaV");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindBeta_Length ~= -1 and ListBox.GetItemData("unknowns", FindBeta_Length) == "Beta" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���� ������") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Beta") ~= -1 then
	if _DeltaV ~= nil and _DeltaTeta ~= nil and _V1 ~= nil then
		Binesh.AddToHTML("DeltaV = V<sub>1</sub>BetaDeltaTeta","Beta = <span>DeltaV/DeltaTetaV<sub>1</sub></span>")
		Beta_Length = _DeltaV/_DeltaTeta*_V1
		Binesh.AddToHTML("Beta = <span>".._DeltaV.."/".._DeltaTeta.."*".._V1.."</span> &#8658; Beta_Length = "..Beta_Length.." 1/C")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ������");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Beta");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindDeltaTeta ~= -1 and ListBox.GetItemData("unknowns", FindDeltaTeta) == "DeltaTeta" and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta2") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaT") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T2") ~= -1) then
	if Beta_Length ~= nil and _DetlaV ~= nil and _V1 ~= nil then
		Binesh.AddToHTML("DeltaV = V<sub>1</sub>BetaDeltaTeta", "DeltaTeta = <span>DeltaV/V<sub>1</sub>Beta</sapn>")
		_DeltaTeta = _DeltaV/_V1*Beta_Length
		Binesh.AddToHTML("DeltaTeta = <span>".._DeltaV.."/".._V1.."*"..Beta_Length.."</span> &#8658; DeltaTeta = ".._DeltaTeta.."<sup>o</sup>C")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaTeta");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindV1 ~= -1 and ListBox.GetItemData("unknowns", FindV1) == "V1" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1 then 
	if Beta_Length ~= nil and _DetlaV ~= nil and _DeltaTeta ~= nil then
		Binesh.AddToHTML("DeltaV = V<sub>1</sub>BetaDeltaTeta", "V<sub>1</sub> = <span>DeltaV/BetaDeltaTeta</sapn>")
		_V1 = _DeltaV/Beta_Length*DeltaTeta
		Binesh.AddToHTML("V<sub>1</sub> = <span>".._DeltaV.."/"..Beta_Length.."*".._DeltaTeta.."</span> &#8658; V<sub>1</sub> = ".._V1.." m<sup>3</sup>")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end