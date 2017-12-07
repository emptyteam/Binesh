if Ru1 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ������ ���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Ru1' then
		ListBox.AddItem("unknowns", "����� ������ ���", "Ru1");
	end
end

if Ru2 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ������ ���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Ru2' then
		ListBox.AddItem("unknowns", "����� ������ ���", "Ru2");
	end
end

if Alpha_112 == nil and Alpha_112_K == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� �����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Alpha' then
		ListBox.AddItem("unknowns", "���� �����", "Alpha");
	end
end

--------------------------{DELTA}--------------------------
FindDeltaTeta = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
if FindDeltaTeta ~= -1 and ListBox.GetItemData("unknowns", FindDeltaTeta) == "DeltaTeta" then
	if _Teta1 ~= nil and _Teta2 ~= nil then
		Binesh.CreateHTMLFile("DeltaTeta = Teta<sub>2</sub>-Teta<sub>1</sub>")
		_DeltaTeta = _Teta2 - _Teta1
		Binesh.AddToHTML("DeltaTeta = ".._Teta2.."-".._Teta1.." &#8658; DeltaTeta = ".._DeltaTeta.."<sup>o</sup>C")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaTeta");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindTeta1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
if FindTeta1 ~= -1 and ListBox.GetItemData("unknowns", FindTeta1) == "Teta1" then
	if _DeltaTeta ~= nil and _Teta2 ~= nil then
		Binesh.CreateHTMLFile("DeltaTeta = Teta<sub>2</sub>-Teta<sub>1</sub>", "Teta<sub>1</sub> = Teta<sub>2</sub>-DeltaTeta")
		_Teta1 = _Teta2-_DeltaTeta
		Binesh.AddToHTML("Teta<sub>1</sub> = ".._Teta2.."-".._DeltaTeta.." &#8658; Teta<sub>1</sub> = ".._Teta1.."<sup>o</sup>C")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Teta1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindTeta2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
if FindTeta2 ~= -1 and ListBox.GetItemData("unknowns", FindTeta2) == "Teta2" then
	if _DeltaTeta ~= nil and _Teta1 ~= nil then
		Binesh.CreateHTMLFile("DeltaTeta = Teta<sub>2</sub>-Teta<sub>1</sub>", "Teta<sub>2</sub> = DeltaTeta+Teta<sub>1</sub>")
		_Teta2 = _Teta1+_DeltaTeta
		Binesh.AddToHTML("Teta<sub>2</sub> = ".._DeltaTeta.."+".._Teta1.." &#8658; Teta<sub>2</sub> = ".._Teta2.."<sup>o</sup>C")
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
FindRu1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ������ ���");
if FindRu1 ~= -1 and ListBox.GetItemData("unknowns", FindRu1) == "Ru1" then
	if _DeltaTeta ~= nil and Ru2 ~= nil and Alpha_112 ~= nil then
		Binesh.CreateHTMLFile("Ru<sub>1</sub> = Ru<sub>2</sub>(1+AlphaDeltaTeta)")
		Ru1 = Ru2*(1+Alpha_112*_DeltaTeta)
		
		Binesh.AddToHTML("Ru<sub>1</sub> = "..Ru2.."*(1+"..Alpha_112.."*".._DeltaTeta..") &#8658; Ru1 = "..Ru1.." Ohm")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ������ ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Ru1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindRu2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ������ ���");
if FindRu2 ~= -1 and ListBox.GetItemData("unknowns", FindRu2) == "Ru2" then
	if Ru1 ~= nil and _DeltaTeta ~= nil and Alpha_112 ~= nil then
		Binesh.CreateHTMLFile("Ru<sub>1</sub> = Ru<sub>2</sub>(1+AlphaDeltaTeta)", "Ru<sub>2</sub> = <span>Ru<sub>1</sub>/1+AlphaDeltaTeta</span>")
		Ru2 = Ru1/(1+Alpha_112*_DeltaTeta)
		
		Binesh.AddToHTML("Ru<sub>2</sub> = <span>"..Ru1.."/(1+"..Alpha_112.."*".._DeltaTeta..")</span> &#8658; Ru<sub>2</sub> = "..Ru2.." Ohm")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ������ ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Ru2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindAlpha_112 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� �����");
if FindAlpha_112 ~= -1 and ListBox.GetItemData("unknowns", FindAlpha_112) == "Alpha" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���� ����� ������ ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Alpha") ~= -1 then
	if Ru1 ~= nil and _DeltaTeta ~= nil and Ru2 ~= nil then
		Binesh.CreateHTMLFile("Ru<sub>1</sub> = Ru<sub>2</sub>(1+AlphaDeltaTeta)", "Alpha = <span>(Ru<sub>1</sub>-Ru<sub>2</sub>)/Ru<sub>2</sub>DeltaTeta</span>")
		Alpha_112 = (Ru1-Ru2)/(Ru2*_DeltaTeta)
		
		Binesh.AddToHTML("Alpha = <span>("..Ru1.."-"..Ru2..")/"..Ru2.."*".._DeltaTeta..")</span> &#8658; Alpha = "..Alpha_112.." 1/K")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ����� ������ ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Alpha");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindDeltaTeta = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
if FindDeltaTeta ~= -1 and ListBox.GetItemData("unknowns", FindDeltaTeta) == "DeltaTeta" and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta2") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaT") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T2") ~= -1) then
	if Ru1 ~= nil and Ru2 ~= nil and Alpha_112 ~= nil then
		Binesh.CreateHTMLFile("Ru<sub>1</sub> = Ru<sub>2</sub>*(1+Alpha*DeltaTeta)", "DeltaTeta = <span>(Ru<sub>1</sub>-Ru<sub>2</sub>)/Ru<sub>2</sub>Alpha</span>")
		_DeltaTeta = (Ru1-Ru2)/(Ru2*Alpha_112)
		
		Binesh.AddToHTML("DeltaTeta = <span>("..Ru1.."-"..Ru2..")/"..Ru2.."*"..Alpha_112..")</span> &#8658; DeltaTeta = ".._DeltaTeta.."<sup>o</sup>C")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaTeta");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end