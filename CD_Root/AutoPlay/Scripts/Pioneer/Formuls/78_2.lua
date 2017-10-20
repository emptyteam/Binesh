if Q == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Q' then
		ListBox.AddItem("unknowns", "ê—„«", "Q");
	end
end

if P == nil and Pa ~= nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›‘«—")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'P' then
		ListBox.AddItem("unknowns", "›‘«—", "P");
	end
end

if CP == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«ÌÌ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'CP' then
		ListBox.AddItem("unknowns", "Ÿ—›Ì  ê—„«ÌÌ", "CP");
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

FindQ = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«")
FindP = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›‘«—");
FindCP = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«ÌÌ")
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


if FindQ ~= -1 and ListBox.GetItemData("unknowns", FindQ) == "Q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ê—„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Q") ~= -1 then
	if P ~= nil and CP ~= nil and _DeltaV ~= nil then
		Binesh.CreateHTMLFile("Q = <span>C<sub>p</sub>/R</span>*P*DeltaV")
		Q = (CP/Zarib.R)*P*_DeltaV
		
		Binesh.AddToHTML("Q = <span>"..CP.."/"..Zarib.R.."</span>*"..P.."*".._DeltaV.." &#8658; Q = "..Q.."J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownindex);
		end
	end
elseif FindP ~= -1 and ListBox.GetItemData("unknowns", FindP) == "P" and ListBox.FindItem("Words", -1, LB_BYTEXT, "›‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1 then
	if Q ~= nil and CP ~= nil and _DeltaV ~= nil then
		Binesh.CreateHTMLFile("Q = <span>C<sub>p</sub>/R</span>*P*DeltaV", "P = <span>Q*R/C<sub>P</sub>*DeltaV</span>")
		P = (Q*Zarib.R)/(CP*_DeltaV)
		
		Binesh.AddToHTML("P = <span>"..Q.."*"..Zarib.R.."/"..CP.."*".._DeltaV.."</span> &#8658; P = "..P.."Pa")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›‘«—");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "P");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownindex);
		end
	end
elseif FindCP ~= -1 and ListBox.GetItemData("unknowns", FindCP) == "CP" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "CP") ~= -1 then
	if Q ~= nil and _DeltaV ~= nil and P ~= nil then
		Binesh.CreateHTMLFile("Q = <span>C<sub>p</sub>/R</span>*P*DeltaV", "C<sub>P</sub> = <span>Q*R/P*DeltaV</span>")
		CP = Q*Zarib.R/P*_DeltaV
		
		Binesh.AddToHTML("C<sub>p</sub> = <span>("..Q.."*"..Zarib.R..")/("..P.."*".._DeltaV..")</span> &#8658; C<sub>p</sub> = "..CP.."J/mol.K")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«ÌÌ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "CP");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownindex);
		end
	end
elseif FindDeltaV ~= -1 and ListBox.GetItemData("unknowns", FindDeltaV) == "DeltaV" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÕÃ„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaV") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V2") ~= -1 then
	if Q ~= nil and CP ~= nil and P ~= nil then
		Binesh.CreateHTMLFile("Q = <span>(C<sub>p</sub>/R)</span>*P*DeltaV", "DeltaV = <span>Q*R/C<sub>p</sub>*P</span>")
		DeltaT = (Q*R)/(CP*P)
		
		Binesh.AddToHTML("DeltaT = <span>("..Q.."*"..R..")/("..CP.."*"..P..")</span> &#8658; DeltaV = ".._DeltaV.."m<sup>3</sup>")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— ÕÃ„");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaV");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownindex);
		end
	end
end