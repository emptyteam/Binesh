if VBar_Speed == nil and VBar_Speed_mh == nil and VBar_Speed_miles == nil and VBar_Speed_mileh == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� �����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'VBar' then
		ListBox.AddItem("unknowns", "���� �����", "VBar");
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
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'x2' then
		ListBox.AddItem("unknowns", "����� ���", "x2");
	end
end

if _Deltat == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Deltat' then
		ListBox.AddItem("unknowns", "����� ����", "Deltat");
	end
end
if _t1 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 't1' then
		ListBox.AddItem("unknowns", "����� ����", "t1");
	end
end
if _t2 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 't2' then
		ListBox.AddItem("unknowns", "����� ����", "t2");
	end
end

FindVBar_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� �����");
FindDeltax = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
Findx1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
Findx2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
FindDeltat = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����");
Findt1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����");
Findt2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����");

if VBar_Speed_mh ~= nil  then
	VBar_Speed = VBar_Speed_mh/3.6
	Binesh.CreateHTMLFile("VBar<sub>m/s</sub> = <span>VBar<sub>m/h</sub>/3.6</span>", "VBar<sub>m/s</sub> = <span>"..VBar_Speed_mh.."/3.6</span>")
	Binesh.AddToHTML("VBar<sub>m/s</sub> = "..VBar_Speed.."m/s");
end

if VBar_Speed_miles ~= nil then
	VBar_Speed = VBar_Speed_miles*1609.3
	Binesh.CreateHTMLFile("VBar<sub>m/s</sub> = VBar<sub>mile/s</sub>*1609.3", "VBar<sub>m/s</sub> = "..VBar_Speed_miles.."*1609.3")
	Binesh.AddToHTML("VBar<sub>m/s></sub> = "..VBar_Speed.."m/s");
end

if VBar_Speed_mileh ~= nil then
	VBar_Speed = VBar_Speed_mileh*1609.3/3.6
	Binesh.CreateHTMLFile("VBar<sub>m/s</sub> = VBar<sub>mile/h</sub>*<span>1609.3/3.6</span>", "VBar<sub>m/s</sub> = "..VBar_Speed_miles.."*<span>1609.3/3.6</span>")
	Binesh.AddToHTML("VBar<sub>m/s></sub> = "..VBar_Speed.."m/s");
end

--------------------------{DELTA}--------------------------
if FindDeltax ~= -1 and ListBox.GetItemData("unknowns", FindDeltax) == "Deltax" then
	if _x1 ~= nil and _x2 ~= nil then
		Binesh.CreateHTMLFile("Deltax = x<sub>2</sub>-x<sub>1</sub>")
		_Deltax = _x2 - _x1
		Binesh.AddToHTML("Deltax = ".._x2.."-".._x1.." &#8658; Deltax = ".._Deltax.."C")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Deltax");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findx1 ~= -1 and ListBox.GetItemData("unknowns", Findx1) == "x1" then
	if _Deltax ~= nil and _x2 ~= nil then
		Binesh.CreateHTMLFile("Deltax = x<sub>2</sub>-x<sub>1</sub>", "x<sub>1</sub> = x<sub>2</sub>-Deltax")
		_x1 = _x2-_Deltax
		Binesh.AddToHTML("x<sub>1</sub> = ".._x2.."-".._Deltax.." &#8658; x<sub>1</sub> = ".._x1.."C")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "x1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findx2 ~= -1 and ListBox.GetItemData("unknowns", Findx2) == "x2" then
	if _Deltax ~= nil and _x1 ~= nil then
		Binesh.CreateHTMLFile("Deltax = x<sub>2</sub>-x<sub>1</sub>", "x<sub>2</sub> = Deltax+x<sub>1</sub>")
		_x2 = _x1+_Deltax
		Binesh.AddToHTML("x<sub>2</sub> = ".._Deltax.."+".._x1.." &#8658; x<sub>2</sub> = ".._x2.."C")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "x2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

if FindDeltax ~= -1 and ListBox.GetItemData("unknowns", FindDeltax) == "Deltax" then
	if _t1 ~= nil and _t2 ~= nil then
		Binesh.CreateHTMLFile("Deltax = t<sub>2</sub>-t<sub>1</sub>")
		_Deltax = _x2 - _x1
		Binesh.AddToHTML("Deltax = ".._x2.."-".._x1.." &#8658; Deltat = ".._Deltat.."C")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Deltat");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findt1 ~= -1 and ListBox.GetItemData("unknowns", Findt1) == "t1" then
	if _Deltat ~= nil and _t2 ~= nil then
		Binesh.CreateHTMLFile("Deltat = t<sub>2</sub>-t<sub>1</sub>", "t<sub>1</sub> = t<sub>2</sub>-Deltat")
		_t1 = _t2-_Deltat
		Binesh.AddToHTML("t<sub>1</sub> = ".._t2.."-".._Deltat.." &#8658; t<sub>1</sub> = ".._t1.."C")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "t1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findt2 ~= -1 and ListBox.GetItemData("unknowns", Findt2) == "t2" then
	if _Deltat ~= nil and _t1 ~= nil then
		Binesh.CreateHTMLFile("Deltat = t<sub>2</sub>-t<sub>1</sub>", "t<sub>2</sub> = Deltat+t<sub>1</sub>")
		_t2 = _t1+_Deltat
		Binesh.AddToHTML("t<sub>2</sub> = ".._Deltat.."+".._t1.." &#8658; t<sub>2</sub> = ".._t2.."C")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "t2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end
--------------------------END {DELTA}--------------------------

if FindVBar_Speed ~= -1 and ListBox.GetItemData("unknowns", FindVBar_Speed) == "VBar" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "VBar") ~= -1 then
	if _Deltax ~= nil and _Deltat ~= nil then
		Binesh.CreateHTMLFile("VBar = <span>Deltax/Deltat</span>")
		VBar_Speed = _Deltax/_Deltat
		
		Binesh.AddToHTML("VBar = <span>".._Deltax.."/".._Deltat.."</span> &#8658; VBar = "..VBar_Speed.."m/s")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� �����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "VBar");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindDeltax ~= -1 and ListBox.GetItemData("unknowns", FindDeltax) == "Deltax" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltax") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "x1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "x2") ~= -1 then
	if VBar_Speed ~= nil and _Deltat ~= nil then
		Binesh.CreateHTMLFile("VBar = <span>Deltax/Deltat</span>", "Deltax = VBarDeltat")
		_Deltax = VBar_Speed*_Deltat
		
		Binesh.AddToHTML("Deltax = <span>"..VBar_Speed.."*".._Deltat.."</span> &#8658; Deltax = ".._Deltax.."m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Deltax");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindDeltat ~= -1 and ListBox.GetItemData("unknowns", FindDeltat) == "Deltat" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltat") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t2") ~= -1 then
	if _Deltax ~= nil and VBar_Speed ~= nil then
		Binesh.CreateHTMLFile("VBar = <span>Deltax/Deltat</span>", "Deltat = <span>Deltax/VBar</span>")
		_Deltat = _Deltax/VBar_Speed
		
		Binesh.AddToHTML("Deltat = <span>".._Deltax.."/"..VBar_Speed.."</span> &#8658; Deltat = "..Deltat.."s")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Deltat");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end