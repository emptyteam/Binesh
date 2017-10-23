-- Q_78 = Binesh.Genesis("����", "Q", "", "", 1, "J", "���", false);
if Q == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����")
		if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Q' then
		ListBox.AddItem("unknowns", "����", "Q");
	end
end

-- n_78 = Binesh.Genesis("���", "n", "", "", 1, "mol", "���", false);
if n == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'n' then
		ListBox.AddItem("unknowns", "���", "n");
	end
end

if CP == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ������")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'CP' then
		ListBox.AddItem("unknowns", "����� ������", "CP");
	end
end

FindQ = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����")
Findn = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
FindCP = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ������")
FindDeltaT = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")
FindT1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")
FindT2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")

if FindQ ~= -1 and ListBox.GetItemData("unknowns", FindQ) == "Q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Q") ~= -1 then 
	if n ~= nil and CP ~= nil and _DeltaT ~= nil then
		Binesh.CreateHTMLFile("Q = nC<sub>p</sub>DeltaT")
		Q = n*CP*_DeltaT
		
		Binesh.AddToHTML("Q = "..n.."*"..CP.."*".._DeltaT.." &#8658; Q = "..Q.."J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findn ~= -1 and ListBox.GetItemData("unknowns", Findn) == "n" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1 then 
	if Q ~= nil and CP ~= nil and EDeltaT ~= nil then
		Binesh.CreateHTMLFile("Q = nC<sub>p</sub>DeltaT", "n = <span>Q/C<sub>p</sub></span>*DeltaT")
		n = Q/CP*_DeltaT
		
		Binesh.AddToHTML("n = <span>"..Q.."/"..CP.."*".._DeltaT.."</span> &#8658; n = "..n.."mol")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "n");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindCP ~= -1 and ListBox.GetItemData("unknowns", FindCP) == "CP" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ������") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "CP") ~= -1 then 
	if Q ~= nil and _DeltaT ~= nil and n ~= nil then
		Binesh.CreateHTMLFile("Q = nC<sub>p</sub>DeltaT", "C<sub>P</sub> = <span>Q/nDeltaT</span>")
		CP = Q/n*_DeltaT
		
		Binesh.AddToHTML("C<sub>p</sub> = <span>"..Q.."/"..n.."*".._DeltaT.."</span> &#8658; C<sub>p</sub> = "..CP.."J/mol.K")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ������");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "CP");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindDeltaT ~= -1 and ListBox.GetItemData("unknowns", FindDeltaT) == "DeltaT" and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta2") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaT") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T2") ~= -1) then
	if Q ~= nil and CP ~= nil and n ~= nil then
		Binesh.CreateHTMLFile("Q = nC<sub>p</sub>DeltaT", "DeltaT = <span>Q/nC<sub>p</sub></span>")
		_DeltaT = Q/n*CP
		
		Binesh.AddToHTML("DeltaTets = <span>"..Q.."/"..n.."*"..CP.."</span> &#8658; DeltaT = ".._DeltaT.."K")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaT");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end