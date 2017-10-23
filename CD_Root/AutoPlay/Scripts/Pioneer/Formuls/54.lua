if _DeltaK == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ��ю� �����")
	if UnknownNamePersian == -1 then
		ListBox.AddItem("unknowns", "����� ��ю� �����", "DeltaK");
	end
end
if _K1 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ��ю� �����")
	if UnknownNamePersian == -1 then
		ListBox.AddItem("unknowns", "����� ��ю� �����", "K1");
	end
end
if _K2 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ��ю� �����")
	if UnknownNamePersian == -1 then
		ListBox.AddItem("unknowns", "����� ��ю� �����", "K2");
	end
end

_DeltaU, _U1, _U2 = Binesh.Genesis("��ю� �������", "U", "", "", 1, "J", "���", true);
if _DeltaU == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ��ю� �������")
	if UnknownNamePersian == -1 then
		ListBox.AddItem("unknowns", "����� ��ю� �������", "DeltaU");
	end
end
if _U1 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ��ю� �������")
	if UnknownNamePersian == -1 then
		ListBox.AddItem("unknowns", "����� ��ю� �������", "U1");
	end
end
if _U2 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ��ю� �������")
	if UnknownNamePersian == -1 then
		ListBox.AddItem("unknowns", "����� ��ю� �������", "U2");
	end
end



FindDeltaK = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ��ю� �����")
FindK1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ��ю� �����")
FindK1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ��ю� �����")
FindDeltaU = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ��ю� �������");
FindU1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ��ю� �������");
FindU2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ��ю� �������");

--------------------------{DELTA}--------------------------
if FindDeltaK ~= -1 and ListBox.GetItemData("unknowns", FindDeltaK) == "DeltaK" then
	if _K1 ~= nil and _K2 ~= nil then
		Binesh.CreateHTMLFile("DeltaK = K<sub>2</sub>-K<sub>1</sub>")
		_DeltaK = _K2 - _K1
		Binesh.AddToHTML("DeltaK = ".._K2.."-".._K1.." &#8658; DeltaK = ".._DeltaK.." J")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ��ю� �����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaK");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindK1 ~= -1 and ListBox.GetItemData("unknowns", FindK1) == "K1" then
	if _DeltaK ~= nil and _K2 ~= nil then
		Binesh.CreateHTMLFile("DeltaK = K<sub>2</sub>-K<sub>1</sub>", "K<sub>1</sub> = K<sub>2</sub>-DeltaK")
		_K1 = _K2-_DeltaK
		Binesh.AddToHTML("K<sub>1</sub> = ".._K2.."-".._DeltaK.." &#8658; K<sub>1</sub> = ".._K1.." J")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ��ю� �����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "K1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindK2 ~= -1 and ListBox.GetItemData("unknowns", FindK2) == "K2" then
	if _DeltaK ~= nil and _K1 ~= nil then
		Binesh.CreateHTMLFile("DeltaK = K<sub>2</sub>-K<sub>1</sub>", "K<sub>2</sub> = DeltaK+K<sub>1</sub>")
		_K2 = _K1+_DeltaK
		Binesh.AddToHTML("K<sub>2</sub> = ".._DeltaK.."+".._K1.." &#8658; K<sub>2</sub> = ".._K2.." J")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ��ю� �����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "K2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

if FindDeltaU ~= -1 and ListBox.GetItemData("unknowns", FindDeltaU) == "DeltaU" then
	if _U1 ~= nil and _U2 ~= nil then
		Binesh.CreateHTMLFile("DeltaU = U<sub>2</sub>-U<sub>1</sub>")
		_DeltaU = _U2 - _U1
		Binesh.AddToHTML("DeltaU = ".._U2.."-".._U1.." &#8658; DeltaU = ".._DeltaU.." J")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ��ю� �������");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaU");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindU1 ~= -1 and ListBox.GetItemData("unknowns", FindU1) == "U1" then
	if _DeltaU ~= nil and _U2 ~= nil then
		Binesh.CreateHTMLFile("DeltaU = U<sub>2</sub>-U<sub>1</sub>", "U<sub>1</sub> = U<sub>2</sub>-DeltaU")
		_U1 = _U2-_DeltaU
		Binesh.AddToHTML("U<sub>1</sub> = ".._U2.."-".._DeltaU.." &#8658; U<sub>1</sub> = ".._U1.." J")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ��ю� �������");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "U1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindU2 ~= -1 and ListBox.GetItemData("unknowns", FindU2) == "U2" then
	if _DeltaU ~= nil and _U1 ~= nil then
		Binesh.CreateHTMLFile("DeltaU = U<sub>2</sub>-U<sub>1</sub>", "U<sub>2</sub> = DeltaU+U<sub>1</sub>")
		_U2 = _U1+_DeltaU
		Binesh.AddToHTML("U<sub>2</sub> = ".._DeltaU.."+".._U1.." &#8658; U<sub>2</sub> = ".._U2.." J")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ��ю� �������");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "U2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end
--------------------------END {DELTA}-------------------------

if FindDeltaK ~= -1 and ListBox.GetItemData("unknowns", FindDeltaK) == "K" and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ��ю� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ��ю� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ��ю� �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaK") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "K1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "K2") ~= -1) then
	if DeltaU ~= nil then
		Binesh.CreateHTMLFile("DeltaK = -DeltaU")
		DeltaK = -DeltaU
		
		Binesh.AddToHTML("DeltaK = -"..DeltaU.." J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ��ю� �����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaK");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindDeltaU ~= -1 and ListBox.GetItemData("unknowns", FindDeltaU) == "U" and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ��ю� �������") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ��ю� �������") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ��ю� �������") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaU") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U2") ~= -1) then
	if DeltaK ~= nil then
		Binesh.CreateHTMLFile("DeltaK = -DeltaU", "DeltaU = -DeltaK")
		DeltaU = -DeltaK
		
		Binesh.AddToHTML("DeltaU = -"..DeltaU.." J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ��ю� �������");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "K");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end