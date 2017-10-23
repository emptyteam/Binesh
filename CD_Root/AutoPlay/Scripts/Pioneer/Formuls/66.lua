if Alpha_Length == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ������")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Alpha' then
		ListBox.AddItem("unknowns", "���� ������", "Alpha");
	end
end

if _DeltaL == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")
	if UnknownNamePersian == -1 then
		ListBox.AddItem("unknowns", "����� ���", "DeltaL");
	end
end
if _L1 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")
	if UnknownNamePersian == -1 then
		ListBox.AddItem("unknowns", "����� ���", "L1");
	end
end
if _L2 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")
	if UnknownNamePersian == -1 then
		ListBox.AddItem("unknowns", "����� ���", "L2");
	end
end

FindAlpha_length = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ������");
FindDeltaTeta = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")
FindTeta1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")
FindTeta2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")
FindDeltaL = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")
FindL1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")
FindL2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")

--------------------------{DELTA}--------------------------

if FindDeltaL ~= -1 and ListBox.GetItemData("unknowns", FindDeltaL) == "DeltaL" then
	if _L1 ~= nil and _L2 ~= nil then
		Binesh.CreateHTMLFile("DeltaL = L<sub>2</sub>-L<sub>1</sub>")
		_DeltaL = _L2 - _L1
		Binesh.AddToHTML("DeltaL = ".._L2.."-".._L1.." &#8658; DeltaL = ".._DeltaL.."m")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
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
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
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
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "L2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

--------------------------END {DELTA}--------------------------
if FindDeltaL ~= -1 and ListBox.GetItemData("unknowns", FindDeltaL) == "DeltaL" and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaL") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L2") ~= -1) then
	if _DeltaTeta ~= nil and Alpha_Length ~= nil and _L1 ~= nil then
		Binesh.CreateHTMLFile("DeltaL = <span>L<sub>1</sub>AlphaDeltaTeta</span>)")
		_DeltaL = L1*Alpha*_DeltaTeta
		
		Binesh.AddToHTML("DeltaL = "..L1.."*"..Alpha_Length.."*".._DeltaTeta.." &#8658; DeltaL = ".._DeltaL.." m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaL");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindL1 ~= -1 and ListBox.GetItemData("unknowns", FindL1) == "L1" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L1") ~= -1 then
	if _DeltaL ~= nil and Alpha_Length ~= nil and _DeltaTeta ~= nil then
		Binesh.CreateHTMLFile("DeltaL = L<sub>1</sub>AlphaDeltaTeta", "L<sub>1</sub> = <span>DeltaL/AlphaDeltaTeta</span>")
		_L1 = DeltaL/Alpha_Length*DeltaTeta
		
		Binesh.AddToHTML("L<sub>1</sub> = <span>"..DeltaL.."/"..Alpha_Length.."*".._DeltaTeta.."</span> &#8658; L<sub>1</sub> = ".._L1.." m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "L1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindAlpha_Length ~= -1 and ListBox.GetItemData("unknowns", FindAlpha_Length) == "Alpha" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���� ������") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Alpha") ~= -1 then
	if _DeltaL ~= nil and _DeltaTeta ~= nil and _L1 ~= nil then
		Binesh.CreateHTMLFile("DeltaL = L<sub>1</sub>AlphaDeltaTeta", "Alpha = <span>DeltaL/L<sub>1</sub>DeltaTeta</span>")
		Alpha_Length = _DeltaL/L1*_DeltaTeta
		
		Binesh.AddToHTML("Alpha = <span>".._DeltaL.."/"..L1.."*".._DeltaTeta.."</span> &#8658; Alpha = "..Alpha_Length.." 1/C")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ������");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Alpha");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindDeltaTeta ~= -1 and ListBox.GetItemData("unknowns", FindDeltaTeta) == "DeltaTeta" and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta2") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaT") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T2") ~= -1) then
	if _DeltaL ~= nil and L1 ~= nil and Alpha_Length ~= nil then
		Binesh.CreateHTMLFile("DeltaL = L<sub>1</sub>AlphaDeltaTeta", "DeltaTeta = <span>DeltaL/L<sub>1</sub>Alpha</span>")
		_DeltaTeta = _DeltaL/L1*Alpha_Length
		
		Binesh.AddToHTML("DeltaTeta = <span>".._DeltaL.."/"..L1.."*"..ALpha_Length.."</span> &#8658; DeltaTeta = ".._DeltaTeta.."<sup>o</sup>C")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaTeta");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end