if Q == nil then
	Binesh.AddUnknown("ê—„«", "Q")
end

if P == nil and Pa ~= nil then
	Binesh.AddUnknown("›‘«—", "P")
end

if CP == nil then
	Binesh.AddUnknown("Ÿ—›Ì  ê—„«ÌÌ", "CP")
end

if _DeltaV == nil then
	Binesh.AddUnknown(" €ÌÌ— ÕÃ„", "DeltaV")
end

if _V1 == nil then
	Binesh.AddUnknown("«Ê·Ì‰ ÕÃ„", "V1")
end

if _V2 == nil then
	Binesh.AddUnknown("œÊ„Ì‰ ÕÃ„", "V2")
end

--------------------------{DELTA}--------------------------

FindDeltaV = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— ÕÃ„");
if FindDeltaV ~= -1 and ListBox.GetItemData("unknowns", FindDeltaV) == "DeltaV" then
	if _V1 ~= nil and _V2 ~= nil then
		Binesh.AddToHTML("DeltaV = V<sub>2</sub>-V<sub>1</sub>")
		_DeltaV = _V2 - _V1
		Binesh.AddToHTML("DeltaV = ".._V2.."-".._V1.." &#8658; DeltaV = ".._DeltaV.." m<sup>3</sup>")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— ÕÃ„");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaV");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindV1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ÕÃ„");
if FindV1 ~= -1 and ListBox.GetItemData("unknowns", FindV1) == "V1" or ListBox.GetItemData("unknowns", FindV1) == "V1" then
	if _DeltaV ~= nil and _V2 ~= nil then
		Binesh.AddToHTML("DeltaV = V<sub>2</sub>-V<sub>1</sub>", "V<sub>1</sub> = V<sub>2</sub>-DeltaV")
		_V1 = _V2-_DeltaV
		Binesh.AddToHTML("V<sub>1</sub> = ".._V2.."-".._DeltaV.." &#8658; V<sub>1</sub> = ".._V1.." m<sup>3</sup>")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ÕÃ„");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindV2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ÕÃ„");
if FindV2 ~= -1 and ListBox.GetItemData("unknowns", FindV2) == "V2" or ListBox.GetItemData("unknowns", FindV2) == "V2" then
	if _DeltaV ~= nil and _V1 ~= nil then
		Binesh.AddToHTML("DeltaV = V<sub>2</sub>-V<sub>1</sub>", "V<sub>2</sub> = DeltaV+V<sub>1</sub>")
		_V2 = _V1+_DeltaV
		Binesh.AddToHTML("V<sub>2</sub> = ".._DeltaV.."+".._V1.." &#8658; V<sub>2</sub> = ".._V2.." m<sup>3</sup>")
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
FindQ = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«");
if FindQ ~= -1 and ListBox.GetItemData("unknowns", FindQ) == "Q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ê—„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Q") ~= -1 then
	if P ~= nil and CP ~= nil and _DeltaV ~= nil then
		Binesh.CreateHTMLFile("Q = <span>C<sub>p</sub>/R</span>PDeltaV")
		Q = (CP/Zarib.R)*P*_DeltaV
		
		Binesh.AddToHTML("Q = <span>"..CP.."/"..Zarib.R.."</span>*"..P.."*".._DeltaV.." &#8658; Q = "..Q.." J")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("P: "..P.." Pa", "V")
		Binesh.AddToHTML("C<sub>P</sub>: "..CP.." J/mol.K", "V")
		Binesh.AddToHTML("DeltaV: ".._DeltaV.." m<sup>3</sup>", "V")
		Binesh.AddToHTML("Q: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownindex);
		end
	end
end

FindP = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›‘«—");
if FindP ~= -1 and ListBox.GetItemData("unknowns", FindP) == "P" and ListBox.FindItem("Words", -1, LB_BYTEXT, "›‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1 then
	if Q ~= nil and CP ~= nil and _DeltaV ~= nil then
		Binesh.CreateHTMLFile("Q = <span>C<sub>p</sub>/R</span>PDeltaV", "P = <span>QR/C<sub>P</sub>DeltaV</span>")
		P = (Q*Zarib.R)/(CP*_DeltaV)
		
		Binesh.AddToHTML("P = <span>"..Q.."*"..Zarib.R.."/"..CP.."*".._DeltaV.."</span> &#8658; P = "..P.." Pa")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("Q: "..Q.." J", "V")
		Binesh.AddToHTML("C<sub>P</sub>: "..CP.." J/mol.K", "V")
		Binesh.AddToHTML("DeltaV: ".._DeltaV.." m<sup>3</sup>", "V")
		Binesh.AddToHTML("P: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›‘«—");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "P");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownindex);
		end
	end
end

FindCP = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«ÌÌ");
if FindCP ~= -1 and ListBox.GetItemData("unknowns", FindCP) == "CP" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "CP") ~= -1 then
	if Q ~= nil and _DeltaV ~= nil and P ~= nil then
		Binesh.CreateHTMLFile("Q = <span>C<sub>p</sub>/R</span>PDeltaV", "C<sub>P</sub> = <span>QR/PDeltaV</span>")
		CP = Q*Zarib.R/P*_DeltaV
		
		Binesh.AddToHTML("C<sub>p</sub> = <span>"..Q.."*"..Zarib.R.."/"..P.."*".._DeltaV.."</span> &#8658; C<sub>p</sub> = "..CP.." J/mol.K")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("Q: "..Q.." J", "V")
		Binesh.AddToHTML("P: "..P.." Pa", "V")
		Binesh.AddToHTML("DeltaV: ".._DeltaV.." m<sup>3</sup>", "V")
		Binesh.AddToHTML("C<sub>P</sub>: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«ÌÌ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "CP");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownindex);
		end
	end
end

FindDeltaV = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— ÕÃ„");
if FindDeltaV ~= -1 and ListBox.GetItemData("unknowns", FindDeltaV) == "DeltaV" and (ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— ÕÃ„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ÕÃ„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ÕÃ„") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaV") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V2") ~= -1) then
	if Q ~= nil and CP ~= nil and P ~= nil then
		Binesh.CreateHTMLFile("Q = <span>C<sub>p</sub>/R</span>PDeltaV", "DeltaV = <span>QR/C<sub>p</sub>P</span>")
		DeltaT = (Q*R)/(CP*P)
		
		Binesh.AddToHTML("DeltaT = <span>("..Q.."*"..R..")/("..CP.."*"..P..")</span> &#8658; DeltaV = ".._DeltaV.." m<sup>3</sup>")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("Q: "..Q.." J", "V")
		Binesh.AddToHTML("P: "..P.." Pa", "V")
		Binesh.AddToHTML("C<sub>P</sub>: "..CP.." J/mol.K", "V")
		Binesh.AddToHTML("DeltaV: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— ÕÃ„");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaV");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownindex);
		end
	end
end