if n == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ê·")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'n' then
		ListBox.AddItem("unknowns", "„Ê·", "n");
	end
end

if C_V == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'CV' then
		ListBox.AddItem("unknowns", "Ÿ—›Ì  ê—„«", "CV");
	end
end

if _DeltaT == nil and _DeltaTeta == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«")
	if UnknownNamePersian == -1 then
		ListBox.AddItem("unknowns", " €ÌÌ— œ„«", "DeltaT");
	end
end
if _T1 == nil and _Teta1 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«")
	if UnknownNamePersian == -1 then
		ListBox.AddItem("unknowns", "«Ê·Ì‰ œ„«", "T1");
	end
end
if _T2 == nil and _Teta2 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«")
	if UnknownNamePersian == -1 then
		ListBox.AddItem("unknowns", "œÊ„Ì‰ œ„«", "T2");
	end
end

if _DeltaTeta ~= nil or _Teta1 ~= nil or _Teta2 ~= nil then
	Binesh.CreateHTMLFile("T = Teta+273")
end

if _DeltaTeta ~= nil then
	_DeltaT = _DeltaTeta+273
	Binesh.AddToHTML("DeltaT = ".._DeltaTeta.."+273 &#8658; DeltaT = ".._DeltaT.."<sup>o</sup>K")
	Binesh.AddToHTML("<br>") -- Create ENTER in HTML
end
if _Teta1 ~= nil then
	_T1 = _Teta1+273
	Binesh.AddToHTML("T<sub>1</sub> = ".._Teta1.."+273 &#8658; T<sub>1</sub> = ".._T1.."<sup>o</sup>K")
	Binesh.AddToHTML("<br>") -- Create ENTER in HTML
end
if _Teta2 ~= nil then
	_T2 = _Teta2+273
	Binesh.AddToHTML("T<sub>2</sub> = ".._Teta2.."+273 &#8658; T<sub>2</sub> = ".._T2.."<sup>o</sup>K")
	Binesh.AddToHTML("<br>") -- Create ENTER in HTML
end

--------------------------{DELTA}--------------------------
FindDeltaU_In = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ œ—Ê‰Ì");
if FindDeltaU_In ~= -1 and ListBox.GetItemData("unknowns", FindDeltaU_In) == "DeltaU" then
	if _U1_In ~= nil and _U2_In ~= nil then
		Binesh.CreateHTMLFile("DeltaU = U<sub>2</sub>-U<sub>1</sub>")
		_DeltaU_In = _U2_In - _U1_In
		Binesh.AddToHTML("DeltaU = ".._U2_In.."-".._U1_In.." &#8658; DeltaU = ".._DeltaU_In.." J")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ œ—Ê‰Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaU");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindU1_In = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ «‰—éÌ œ—Ê‰Ì");
if FindU1_In ~= -1 and ListBox.GetItemData("unknowns", FindU1_In) == "U1" then
	if _DeltaU_In ~= nil and _U2_In ~= nil then
		Binesh.CreateHTMLFile("DeltaU = U<sub>2</sub>-U<sub>1</sub>", "U<sub>1</sub> = U<sub>2</sub>-DeltaU")
		_U1_In = _U2_In-_DeltaU_In
		Binesh.AddToHTML("U<sub>1</sub> = ".._U2_In.."-".._DeltaU_In.." &#8658; U<sub>1</sub> = ".._U1_In.." J")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ «‰—éÌ œ—Ê‰Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "U1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindU2_In = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ «‰—éÌ œ—Ê‰Ì");
if FindU2_In ~= -1 and ListBox.GetItemData("unknowns", FindU2_In) == "U2" then
	if _DeltaU_In ~= nil and _U1_In ~= nil then
		Binesh.CreateHTMLFile("DeltaU = U<sub>2</sub>-U<sub>1</sub>", "U<sub>2</sub> = DeltaU+U<sub>1</sub>")
		_U2_In = _U1_In+_DeltaU_In
		Binesh.AddToHTML("U<sub>2</sub> = ".._DeltaU_In.."+".._U1_In.." &#8658; U<sub>2</sub> = ".._U2_In.." J")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ «‰—éÌ œ—Ê‰Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "U2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindDeltaT = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«");
if FindDeltaT ~= -1 and ListBox.GetItemData("unknowns", FindDeltaT) == "DeltaT" then
	if _T1 ~= nil and _T2 ~= nil then
		Binesh.CreateHTMLFile("DeltaT = T<sub>2</sub>-T<sub>1</sub>")
		_DeltaT = _T2 - _T1
		Binesh.AddToHTML("DeltaT = ".._T2.."-".._T1.." &#8658; DeltaT = ".._DeltaT.."<sup>o</sup>K")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ œ—Ê‰Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaT");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindT1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«");
if FindT1 ~= -1 and ListBox.GetItemData("unknowns", FindT1) == "T1" then
	if _DeltaT ~= nil and _T2 ~= nil then
		Binesh.CreateHTMLFile("DeltaT = T<sub>2</sub>-T<sub>1</sub>", "T<sub>1</sub> = T<sub>2</sub>-DeltaT")
		_T1 = _T2-_DeltaT
		Binesh.AddToHTML("T<sub>1</sub> = ".._T2.."-".._DeltaT.." &#8658; T<sub>1</sub> = ".._T1.."<sup>o</sup>K")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ «‰—éÌ œ—Ê‰Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "T1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindT2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«");
if FindT2 ~= -1 and ListBox.GetItemData("unknowns", FindT2) == "T2" then
	if _DeltaT ~= nil and _T1 ~= nil then
		Binesh.CreateHTMLFile("DeltaT = T<sub>2</sub>-T<sub>1</sub>", "T<sub>2</sub> = DeltaT+T<sub>1</sub>")
		_T2 = _T1+_DeltaT
		Binesh.AddToHTML("T<sub>2</sub> = ".._DeltaT.."+".._T1.." &#8658; T<sub>2</sub> = ".._T2.."<sup>o</sup>K")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ «‰—éÌ œ—Ê‰Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "T2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end
--------------------------END {DELTA}--------------------------
Findn = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ê·");
if Findn ~= -1 and ListBox.GetItemData("unknowns", Findn) == "n" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ê·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1 then
	if C_V ~= nil and _DeltaT ~= nil and _DeltaU_In ~= nil then
		Binesh.CreateHTMLFile("DeltaU = nC<sub>V</sub>DeltaT", "<span>n = DeltaU/C<sub>V</sub>DeltaT</span>")
		n = _DeltaU_In/C_V*_DeltaT
		Binesh.AddToHTML("n = <span>".._DeltaU_In.."/"..C_V.."*".._DeltaT.."</span> &#8658; n = "..n.." mol")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ê·");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "n");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindC_V = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«");
if FindC_V ~= -1 and ListBox.GetItemData("unknowns", FindC_V) == "CV" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "CV") ~= -1 then 
	if n ~= nil and _DeltaT ~= nil and _DeltaU_In ~= nil then
		Binesh.CreateHTMLFile("DeltaU = nC<sub>V</sub>DeltaT", "C<sub>V</sub> = <span>DeltaU/nDeltaT</span>")
		C_V = _DeltaU_In/n*_DeltaT
		Binesh.AddToHTML("C<sub>V</sub> = <span>".._DeltaU_In.."/"..n.."*".._DeltaT.."</span> &#8658; C<sub>V</sub> = "..C_V.." J/mol.K")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "CV");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindDeltaT = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«");
if FindDeltaT ~= -1 and ListBox.GetItemData("unknowns", FindDeltaT) == "DeltaT" and (ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta2") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaT") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T2") ~= -1) then
	if _DeltaU_In ~= nil and n ~= nil and C_V ~= nil then
		Binesh.CreateHTMLFile("DeltaU = nC<sub>V</sub>DeltaT", " DeltaT = <span>DeltaU/nC<sub>V</sub></span>")
		_DeltaT = _DeltaU_In/n*C_V
		Binesh.AddToHTML("_DeltaT = <span>".._DeltaU_In.."/"..C_V.."*"..n.."</span> &#8658; DeltaT = ".._DeltaT.."<sup>o</sup>K")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaT");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindDeltaU_In = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ œ—Ê‰Ì");
if FindDeltaU_In ~= -1 and ListBox.GetItemData("unknowns", FindDeltaU_In) == "DeltaU" and ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ œ—Ê‰Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaU") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U2") ~= -1 then 
	if _DeltaT ~= nil and n ~= nil and C_V ~= nil then
		Binesh.CreateHTMLFile("DeltaU = nC<sub>V</sub>DeltaT")
		_DeltaU_In = n*C_V*_DeltaT
		Binesh.AddToHTML("DeltaU = "..n.."*"..C_V.."*".._DeltaT.." &#8658; DeltaU = ".._DeltaU_In.." J")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ œ—Ê‰Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaU");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end