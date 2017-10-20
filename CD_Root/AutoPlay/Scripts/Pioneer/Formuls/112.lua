if Ru1 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ „ﬁ«Ê„  ÊÌéÂ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Ru1' then
		ListBox.AddItem("unknowns", "«Ê·Ì‰ „ﬁ«Ê„  ÊÌéÂ", "Ru1");
	end
end

if Ru2 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ „ﬁ«Ê„  ÊÌéÂ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Ru2' then
		ListBox.AddItem("unknowns", "œÊ„Ì‰ „ﬁ«Ê„  ÊÌéÂ", "Ru2");
	end
end

if Alpha_112 == nil and Alpha_112_K == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» œ„«ÌÌ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Alpha' then
		ListBox.AddItem("unknowns", "÷—Ì» œ„«ÌÌ", "Alpha");
	end
end

if _DeltaTeta == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'DeltaTeta' then
		ListBox.AddItem("unknowns", " €ÌÌ— œ„«", "DeltaTeta");
	end
end
if _Teta1 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Teta1' then
		ListBox.AddItem("unknowns", "«Ê·Ì‰ œ„«", "Teta1");
	end
end
if _Teta2 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Teta2' then
		ListBox.AddItem("unknowns", "œÊ„Ì‰ œ„«", "Teta2");
	end
end

FindRu1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ „ﬁ«Ê„  ÊÌéÂ")
FindRu2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ „ﬁ«Ê„  ÊÌéÂ")
FindAlpha_112 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» œ„«ÌÌ");
FindDeltaTeta = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«")
FindTeta1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«")
FindTeta2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«")

--------------------------{DELTA}--------------------------
if FindDeltaTeta ~= -1 and ListBox.GetItemData("unknowns", FindDeltaTeta) == "DeltaTeta" then
	if _Teta1 ~= nil and _Teta2 ~= nil then
		Binesh.CreateHTMLFile("DeltaTeta = Teta<sub>2</sub>-Teta<sub>1</sub>")
		_DeltaTeta = _Teta2 - _Teta1
		Binesh.AddToHTML("DeltaTeta = ".._Teta2.."-".._Teta1.." &#8658; DeltaTeta = ".._DeltaTeta.."C")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaTeta");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindTeta1 ~= -1 and ListBox.GetItemData("unknowns", FindTeta1) == "Teta1" or ListBox.GetItemData("unknowns", FindTeta1) == "T1" then
	if _DeltaTeta ~= nil and _Teta2 ~= nil then
		Binesh.CreateHTMLFile("DeltaTeta = Teta<sub>2</sub>-Teta<sub>1</sub>", "Teta<sub>1</sub> = Teta<sub>2</sub>-DeltaTeta")
		_Teta1 = _Teta2-_DeltaTeta
		Binesh.AddToHTML("Teta<sub>1</sub> = ".._Teta2.."-".._DeltaTeta.." &#8658; Teta<sub>1</sub> = ".._Teta1.."C")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Teta1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindTeta2 ~= -1 and ListBox.GetItemData("unknowns", FindTeta2) == "Teta2" or ListBox.GetItemData("unknowns", FindTeta2) == "T2" then
	if _DeltaTeta ~= nil and _Teta1 ~= nil then
		Binesh.CreateHTMLFile("DeltaTeta = Teta<sub>2</sub>-Teta<sub>1</sub>", "Teta<sub>2</sub> = DeltaTeta+Teta<sub>1</sub>")
		_Teta2 = _Teta1+_DeltaTeta
		Binesh.AddToHTML("Teta<sub>2</sub> = ".._DeltaTeta.."+".._Teta1.." &#8658; Teta<sub>2</sub> = ".._Teta2.."C")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Teta2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

--------------------------END {DELTA}--------------------------


if FindRu1 ~= -1 and ListBox.GetItemData("unknowns", FindRu1) == "Ru1" then
	if _DeltaTeta ~= nil and Ru2 ~= nil and Alpha_112 ~= nil then
		Binesh.CreateHTMLFile("Ru<sub>1</sub> = Ru<sub>2</sub>*(1+Alpha*DeltaTeta)")
		Ru1 = Ru2*(1+Alpha_112*_DeltaTeta)
		
		Binesh.AddToHTML("Ru<sub>1</sub> = "..Ru2.."*(1+"..Alpha_112.."*".._DeltaTeta..") &#8658; Ru1 = "..Ru1.."Ohm")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ „ﬁ«Ê„  ÊÌéÂ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Ru1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindRu2 ~= -1 and ListBox.GetItemData("unknowns", FindRu2) == "Ru2" then
	if Ru1 ~= nil and _DeltaTeta ~= nil and Alpha_112 ~= nil then
		Binesh.CreateHTMLFile("Ru<sub>1</sub> = Ru<sub>2</sub>*(1+Alpha*DeltaTeta)", "Ru<sub>2</sub> = <span>Ru<sub>1</sub>/1+Alpha*DeltaTeta</span>")
		Ru2 = Ru1/(1+Alpha_112*_DeltaTeta)
		
		Binesh.AddToHTML("Ru<sub>2</sub> = <span>"..Ru1.."/(1+"..Alpha_112.."*".._DeltaTeta..")</span> &#8658; Ru<sub>2</sub> = "..Ru2.."Ohm")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ „ﬁ«Ê„  ÊÌéÂ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Ru2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindAlpha_112 ~= -1 and ListBox.GetItemData("unknowns", FindAlpha_112) == "Alpha" and ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» œ„«ÌÌ „ﬁ«Ê„  ÊÌéÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Alpha") ~= -1 then
	if Ru1 ~= nil and _DeltaTeta ~= nil and Ru2 ~= nil then
		Binesh.CreateHTMLFile("Ru<sub>1</sub> = Ru<sub>2</sub>*(1+Alpha*DeltaTeta)", "Alpha = <span>(Ru<sub>1</sub>-Ru<sub>2</sub>)/Ru<sub>2</sub>*DeltaTeta</span>")
		Alpha_112 = (Ru1-Ru2)/Ru2*_DeltaTeta
		
		Binesh.AddToHTML("Alpha = <span>("..Ru1.."-"..Ru2..")/"..Ru2.."*".._DeltaTeta..")</span> &#8658; Alpha = "..Alpha_112.."1/K")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» œ„«ÌÌ „ﬁ«Ê„  ÊÌéÂ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Alpha");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Find_DeltaTeta ~= -1 and ListBox.GetItemData("unknowns", Find_DeltaTeta) == "DeltaTeta" and ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta2") ~= -1 then
	if Ru1 ~= nil and Ru2 ~= nil and Alpha_112 ~= nil then
		Binesh.CreateHTMLFile("Ru<sub>1</sub> = Ru<sub>2</sub>*(1+Alpha*DeltaTeta)", "DeltaTeta = <span>(Ru<sub>1</sub>-Ru<sub>2</sub>)/Ru<sub>2</sub>*Alpha</span>")
		_DeltaTeta = (Ru1-Ru2)/Ru2*Alpha_112
		
		Binesh.AddToHTML("DeltaTeta = <span>("..Ru1.."-"..Ru2..")/"..Ru2.."*"..Alpha_112..")</span> &#8658; DeltaTeta = ".._DeltaTeta.."C")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaTeta");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end