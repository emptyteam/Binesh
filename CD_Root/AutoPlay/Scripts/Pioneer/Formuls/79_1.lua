-- Q_79 = Binesh.Genesis("ê—„«", "Q", "", "", 1, "J", "éÊ·", false);
if Q == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Q' then
		ListBox.AddItem("unknowns", "ê—„«", "Q");
	end
end

-- n_79 = Binesh.Genesis("„Ê·", "n", "", "", 1, "mol", "„Ê·", false);
if n == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ê·")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'n' then
		ListBox.AddItem("unknowns", "„Ê·", "n");
	end
end

-- CV_79 = Binesh.Genesis("Ÿ—›Ì  ê—„«ÌÌ", "CV", "", "", 1, "J/mol*K", "éÊ· »— òÌ·Êê—„ ò·ÊÌ‰", false);
if CV == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«ÌÌ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'CV' then
		ListBox.AddItem("unknowns", "Ÿ—›Ì  ê—„«ÌÌ", "CV");
	end
end

FindQ = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«")
Findn = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ê·");
FindCV = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«ÌÌ")
FindDeltaT = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«")
FindT1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«")
FindT2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«")

if FindQ ~= -1 and ListBox.GetItemData("unknowns", FindQ) == "Q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ê—„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Q") ~= -1 then 
	if n ~= nil and CV ~= nil and _DeltaT ~= nil then
		Binesh.CreateHTMLFile("Q = n*C<sub>V</sub>DeltaT")
		Q = n*CV*_DeltaT
		Binesh.AddToHTML("Q = "..n.."*"..CV.."*".._DeltaT.." &#8658; Q = "..Q.." J")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findn ~= -1 and ListBox.GetItemData("unknowns", Findn) == "n" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ê·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1 then 
	if Q ~= nil and CV ~= nil and _DeltaT ~= nil then
		Binesh.CreateHTMLFile("Q = nC<sub>V</sub>DeltaT", "n = <span>Q/C<sub>V</sub>DeltaT</span>")
		n = Q/CV*_DeltaT
		Binesh.AddToHTML("n = <span>"..Q.."/"..CV.."*".._DeltaT.."</span> &#8658; n = "..n.." mol")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ê·");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "n");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindCV ~= -1 and ListBox.GetItemData("unknowns", FindCV) == "CV" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "CV") ~= -1 then
	if Q ~= nil and n ~= nil and _DeltaT ~= nil then
		Binesh.CreateHTMLFile("Q = nC<sub>V</sub>DeltaT", "C<sub>V</sub> = <span>Q/nDeltaT</span>")
		CV = Q/n*_DeltaT
		Binesh.AddToHTML("C<sub>V</sub> = <span>"..Q.."/"..n.."*".._DeltaT.."</span> &#8658; C<sub>V</sub> = "..CV.." J/mol.K")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«ÌÌ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "CV");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindDeltaT ~= -1 and ListBox.GetItemData("unknowns", FindDeltaT) == "DeltaT" and (ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta2") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaT") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T2") ~= -1) then
	if Q ~= nil and n ~= nil and CV ~= nil then
		Binesh.CreateHTMLFile("Q = nC<sub>V</sub>DeltaT", "DeltaT = <span>Q/nC<sub>V</sub></span>")
		_DeltaT = Q/n*CV
		Binesh.AddToHTML("DeltaT = <span>"..Q.."/"..n.."*"..CV.."</span> &#8658; DeltaT = ".._DeltaT.."<sup>o</sup>K")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaT");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end