if Q == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Q' then
		ListBox.AddItem("unknowns", "����", "Q");
	end
end

if m == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'm' then
		ListBox.AddItem("unknowns", "���", "m");
	end
end

if c == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ������")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'c' then
		ListBox.AddItem("unknowns", "����� ������", "c");
	end
end

if _DeltaTeta == nil and _DeltaT == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'DeltaTeta' then
		ListBox.AddItem("unknowns", "����� ���", "DeltaTeta");
	end
end

if _Teta1 == nil and _T1 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Teta1' then
		ListBox.AddItem("unknowns", "����� ���", "Teta1");
	end
end

if _Teta2 == nil and _T2 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Teta2' then
		ListBox.AddItem("unknowns", "����� ���", "Teta2");
	end
end

FindQ = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����")
Findm = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
Findc = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ������")
FindDeltaTeta = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")
FindTeta1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")
FindTeta2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")

if _DeltaT ~= nil or _T1 ~= nil or _T2 ~= nil then
	Binesh.CreateHTMLFile("T = Teta+273", "Teta = T-273")
end

if _DeltaT ~= nil then
	_DeltaTeta = _DeltaT-273
	Binesh.AddToHTML("DeltaTeta = ".._DeltaT.."-273 &#8658; DeltaTeta = ".._DeltaTeta.."C")
	Binesh.AddToHTML("<br>") -- Create ENTER in HTML
end
if _T1 ~= nil then
	_Teta1 = _T1-273
	Binesh.AddToHTML("Teta<sub>1</sub> = ".._T1.."-273 &#8658; Teta<sub>1</sub> = ".._Teta1.."C")
	Binesh.AddToHTML("<br>") -- Create ENTER in HTML
end
if _T2 ~= nil then
	_Teta2 = _T2-273
	Binesh.AddToHTML("Teta<sub>2</sub> = ".._T2.."-273 &#8658; Teta<sub>2</sub> = ".._Teta2.."C")
	Binesh.AddToHTML("<br>") -- Create ENTER in HTML
end

--------------------------{DELTA}--------------------------
if FindDeltaTeta ~= -1 and ListBox.GetItemData("unknowns", FindDeltaTeta) == "DeltaTeta" then
	if _Teta1 ~= nil and _Teta2 ~= nil then
		Binesh.CreateHTMLFile("DeltaTeta = Teta<sub>2</sub>-Teta<sub>1</sub>")
		_DeltaTeta = _Teta2 - _Teta1
		Binesh.AddToHTML("DeltaTeta = ".._Teta2.."-".._Teta1.." &#8658; DeltaTeta = ".._DeltaTeta.." <sup>o</sup>C")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaTeta");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindTeta1 ~= -1 and ListBox.GetItemData("unknowns", FindTeta1) == "Teta1" then
	if _DeltaTeta ~= nil and _Teta2 ~= nil then
		Binesh.CreateHTMLFile("DeltaTeta = Teta<sub>2</sub>-Teta<sub>1</sub>", "Teta<sub>1</sub> = Teta<sub>2</sub>-DeltaTeta")
		_Teta1 = _Teta2-_DeltaTeta
		Binesh.AddToHTML("Teta<sub>1</sub> = ".._Teta2.."-".._DeltaTeta.." &#8658; Teta<sub>1</sub> = ".._Teta1.." <sup>o</sup>C")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Teta1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindTeta2 ~= -1 and ListBox.GetItemData("unknowns", FindTeta2) == "Teta2" then
	if _DeltaTeta ~= nil and _Teta1 ~= nil then
		Binesh.CreateHTMLFile("DeltaTeta = Teta<sub>2</sub>-Teta<sub>1</sub>", "Teta<sub>2</sub> = DeltaTeta+Teta<sub>1</sub>")
		_Teta2 = _Teta1+_DeltaTeta
		Binesh.AddToHTML("Teta<sub>2</sub> = ".._DeltaTeta.."+".._Teta1.." &#8658; Teta<sub>2</sub> = ".._Teta2.." <sup>o</sup>C")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Teta2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end
--------------------------END {DELTA}--------------------------

if FindQ ~= -1 and ListBox.GetItemData("unknowns", FindQ) == "Q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
	if m ~= nil and c ~= nil and _DeltaTeta ~= nil then
		Binesh.CreateHTMLFile("Q = mcDeltaTeta")
		Q = m*c*_DeltaTeta
		
		Binesh.AddToHTML("Q = "..m.."*"..c.."*".._DeltaTeta.." &#8658; Q = "..Q.." J")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("m = "..m.." Kg" ,"V")
		Binesh.AddToHTML("c = "..c.." J/Kg.C" ,"V")
		Binesh.AddToHTML("DeltaTeta = ".._DeltaTeta.." J/Kg.C" ,"V")
		Binesh.AddToHTML("Q = "..Q.." J" ,"V")
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findm ~= -1 and ListBox.GetItemData("unknowns", Findm) == "m" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1 then 
	if Q ~= nil and c ~= nil and _DeltaTeta ~= nil then
		Binesh.CreateHTMLFile("Q = mcDeltaTeta", "m = <span>Q/cDeltaTeta</span>")
		m = Q/c*_DeltaTeta
		
		Binesh.AddToHTML("m = <span>"..Q.."/"..c.."*".._DeltaTeta.."</span> &#8658; m = "..m.." Kg")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("Q = "..Q.." J" ,"V")
		Binesh.AddToHTML("c = "..c.." J/Kg.C" ,"V")
		Binesh.AddToHTML("DeltaTeta = ".._DeltaTeta.." <sup>o</sup>C" ,"V")
		Binesh.AddToHTML("m = "..m.." Kg" ,"V")
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "m");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findc ~= -1 and ListBox.GetItemData("unknowns", Findc) == "m" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ������") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "c") ~= -1 then 
	if Q ~= nil and m ~= nil and _DeltaTeta ~= nil then
		Binesh.CreateHTMLFile("Q = mcDeltaTeta", "c = <span>Q/mDeltaTeta</span>")
		c = Q/m*_DeltaTeta
		
		Binesh.AddToHTML("c = <span>"..Q.."/"..m.."*".._DeltaTeta.."</span> &#8658; c = "..c.." J/Kg.C")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("Q = "..Q.." J" ,"V")
		Binesh.AddToHTML("m = "..m.." Kg" ,"V")
		Binesh.AddToHTML("DeltaTeta = ".._DeltaTeta.." <sup>o</sup>C" ,"V")
		Binesh.AddToHTML("c = "..c.." J/Kg.C" ,"V")
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ������");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "c");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindDeltaTeta ~= -1 and ListBox.GetItemData("unknowns", FindDeltaTeta) == "DeltaTeta" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta2") ~= -1 then 
	if Q ~= nil and m ~= nil and c ~= nil then
		Binesh.CreateHTMLFile("Q = mcDeltaTeta", "DeltaTeta = <span>Q/mc</span>")
		_DeltaTeta = Q/m*c
		
		Binesh.AddToHTML("DeltaTeta = <span>"..Q.."/"..m.."*"..c.."</span> &#8658; DeltaTeta = ".._DeltaTeta.." <sup>o</sup>C")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("Q = "..Q.." J" ,"V")
		Binesh.AddToHTML("m = "..m.." Kg" ,"V")
		Binesh.AddToHTML("c = "..c.." J/Kg.C" ,"V")
		Binesh.AddToHTML("DeltaTeta = ".._DeltaTeta.." <sup>o</sup>C" ,"V")
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaTeta");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end