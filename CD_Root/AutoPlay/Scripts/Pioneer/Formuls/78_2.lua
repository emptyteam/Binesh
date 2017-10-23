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

FindQ = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«")
FindP = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›‘«—");
FindCP = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«ÌÌ")
FindDeltaV = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— ÕÃ„")
FindV1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ÕÃ„")
FindV2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ÕÃ„")


if FindQ ~= -1 and ListBox.GetItemData("unknowns", FindQ) == "Q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ê—„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Q") ~= -1 then
	if P ~= nil and CP ~= nil and _DeltaV ~= nil then
		Binesh.CreateHTMLFile("Q = <span>C<sub>p</sub>/R</span>PDeltaV")
		Q = (CP/Zarib.R)*P*_DeltaV
		
		Binesh.AddToHTML("Q = <span>"..CP.."/"..Zarib.R.."</span>*"..P.."*".._DeltaV.." &#8658; Q = "..Q.." J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownindex);
		end
	end
elseif FindP ~= -1 and ListBox.GetItemData("unknowns", FindP) == "P" and ListBox.FindItem("Words", -1, LB_BYTEXT, "›‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1 then
	if Q ~= nil and CP ~= nil and _DeltaV ~= nil then
		Binesh.CreateHTMLFile("Q = <span>C<sub>p</sub>/R</span>PDeltaV", "P = <span>QR/C<sub>P</sub>DeltaV</span>")
		P = (Q*Zarib.R)/(CP*_DeltaV)
		
		Binesh.AddToHTML("P = <span>"..Q.."*"..Zarib.R.."/"..CP.."*".._DeltaV.."</span> &#8658; P = "..P.." Pa")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›‘«—");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "P");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownindex);
		end
	end
elseif FindCP ~= -1 and ListBox.GetItemData("unknowns", FindCP) == "CP" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "CP") ~= -1 then
	if Q ~= nil and _DeltaV ~= nil and P ~= nil then
		Binesh.CreateHTMLFile("Q = <span>C<sub>p</sub>/R</span>PDeltaV", "C<sub>P</sub> = <span>QR/PDeltaV</span>")
		CP = Q*Zarib.R/P*_DeltaV
		
		Binesh.AddToHTML("C<sub>p</sub> = <span>"..Q.."*"..Zarib.R.."/"..P.."*".._DeltaV.."</span> &#8658; C<sub>p</sub> = "..CP.." J/mol.K")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«ÌÌ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "CP");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownindex);
		end
	end
elseif FindDeltaV ~= -1 and ListBox.GetItemData("unknowns", FindDeltaV) == "DeltaV" and (ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— ÕÃ„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ÕÃ„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ÕÃ„") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaV") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V2") ~= -1) then
	if Q ~= nil and CP ~= nil and P ~= nil then
		Binesh.CreateHTMLFile("Q = <span>C<sub>p</sub>/R</span>PDeltaV", "DeltaV = <span>QR/C<sub>p</sub>P</span>")
		DeltaT = (Q*R)/(CP*P)
		
		Binesh.AddToHTML("DeltaT = <span>("..Q.."*"..R..")/("..CP.."*"..P..")</span> &#8658; DeltaV = ".._DeltaV.." m<sup>3</sup>")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— ÕÃ„");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaV");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownindex);
		end
	end
end