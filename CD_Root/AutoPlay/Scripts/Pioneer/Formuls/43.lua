if F == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'F' then
		ListBox.AddItem("unknowns", "����", "F");
	end
end

if k_Coil == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'm' then
		ListBox.AddItem("unknowns", "���� ���", "k");
	end
end

if _Deltax == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Deltax' then
		ListBox.AddItem("unknowns", "����� ���", "Deltax");
	end
end

if _x1 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'x1' then
		ListBox.AddItem("unknowns", "����� ���", "x1");
	end
end

if _x2 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'x2' then
		ListBox.AddItem("unknowns", "����� ���", "x2");
	end
end

--------------------------{DELTA}--------------------------
FindDeltax = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
if FindDeltax ~= -1 and ListBox.GetItemData("unknowns", FindDeltax) == "Deltax" then
	if _x1 ~= nil and _x2 ~= nil then
		Binesh.CreateHTMLFile("Deltax = x<sub>2</sub>-x<sub>1</sub>")
		_Deltax = _x2 - _x1
		Binesh.AddToHTML("Deltax = ".._x2.."-".._x1.." &#8658; Deltax = ".._Deltax.." m")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Deltax");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findx1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
if Findx1 ~= -1 and ListBox.GetItemData("unknowns", Findx1) == "x1" then
	if _Deltax ~= nil and _x2 ~= nil then
		Binesh.CreateHTMLFile("Deltax = x<sub>2</sub>-x<sub>1</sub>", "x<sub>1</sub> = x<sub>2</sub>-Deltax")
		_x1 = _x2-_Deltax
		Binesh.AddToHTML("x<sub>1</sub> = ".._x2.."-".._Deltax.." &#8658; x<sub>1</sub> = ".._x1.." m")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "x1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findx2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
if Findx2 ~= -1 and ListBox.GetItemData("unknowns", Findx2) == "x2" then
	if _Deltax ~= nil and _x1 ~= nil then
		Binesh.CreateHTMLFile("Deltax = x<sub>2</sub>-x<sub>1</sub>", "x<sub>2</sub> = Deltax+x<sub>1</sub>")
		_x2 = _x1+_Deltax
		Binesh.AddToHTML("x<sub>2</sub> = ".._Deltax.."+".._x1.." &#8658; x<sub>2</sub> = ".._x2.." m")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "x2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end
--------------------------END {DELTA}--------------------------

FindF = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
if FindF ~= -1 and ListBox.GetItemData("unknowns", FindF) == "F" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1 then
	if k_Coil ~= nil and _Deltax ~= nil then
		Binesh.CreateHTMLFile("F = -kDeltax")
		F = -k_Coil*_Deltax
		
		Binesh.AddToHTML("F = -"..k_Coil.."*".._Deltax.." &#8658; F = "..F.." N")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "F");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findk_Coil = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ���");
if Findm ~= -1 and ListBox.GetItemData("unknowns", Findm) == "m" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1 then
	if F ~= nil and _Deltax ~= nil then
		Binesh.CreateHTMLFile("F = -kDeltax", "k = - <span>F/Deltax</span>")
		k_Coil = -F*_Deltax
		
		Binesh.AddToHTML("k = - <span>"..F.."/".._Deltax.."</span> &#8658; k = "..k_Coil)
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "k");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindDeltax = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
if FindDeltax ~= -1 and ListBox.GetItemData("unknowns", FindDeltax) == "Deltax" and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltax") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "x1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "x2") ~= -1) then
	if F ~= nil and k_Coil ~= nil then
		Binesh.CreateHTMLFile("F = -kDeltax", "Deltax = - <span>F/k</span>")
		_Deltax = -F/k_Coil
		
		Binesh.AddToHTML("Deltax = - <span>"..F.."/"..k_Coil.."</span> &#8658; Deltax = ".._Deltax.." m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Deltax");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end