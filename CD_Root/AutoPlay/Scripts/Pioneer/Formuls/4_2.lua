function Binesh.F4_2()
	if Q == nil then
		UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«")
		if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Q' then
			ListBox.AddItem("unknowns", "ê—„«", "Q");
		end
	end
	
	if m == nil then
		UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„")
		if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'm' then
			ListBox.AddItem("unknowns", "Ã—„", "m");
		end
	end
	
	if c == nil then
		UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«")
		if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'c' then
			ListBox.AddItem("unknowns", "Ÿ—›Ì  ê—„«", "c");
		end
	end
	
	if _DeltaTeta == nil and _DeltaT == nil and _DeltaTF == nil then
		UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«")
		if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'DeltaTeta' then
			ListBox.AddItem("unknowns", " €ÌÌ— œ„«", "DeltaTeta");
		end
	end
	
	if _Teta1 == nil and _T1 == nil and _TF1 == nil then
		UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«")
		if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Teta1' then
			ListBox.AddItem("unknowns", "«Ê·Ì‰ œ„«", "Teta1");
		end
	end
	
	if _Teta2 == nil and _T2 == nil and _TF2 == nil then
		UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«")
		if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Teta2' then
			ListBox.AddItem("unknowns", "œÊ„Ì‰ œ„«", "Teta2");
		end
	end
	
	if _DeltaTF ~= nil or _TF1 ~= nil or _TF2 ~= nil then
		Binesh.CreateHTMLFile("F = <span>9/5</span>Teta+32", "Teta = <span>5/9</span>(F-32)")
	end
	
	if _DeltaTF ~= nil then
		_DeltaTeta = 5/9*(_DeltaTF - 32)
		Binesh.AddToHTML("DeltaTeta = <span>5/9</span>(".._DeltaTF.."-32) &#8658; Teta = ".._DeltaTeta.." C")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
	end
	
	if _TF1 ~= nil then
		_Teta1 = 5/9*(_TF1 - 32)
		Binesh.AddToHTML("Teta<sub>1</sub> = <span>5/9</span>(".._TF1.."-32) &#8658; Teta<sub>1</sub> = ".._Teta1.." C")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
	end
	
	if _TF2 ~= nil then
		_Teta2 = 5/9*(_TF2 - 32)
		Binesh.AddToHTML("Teta<sub>2</sub> = <span>5/9</span>(".._TF2.."-32) &#8658; Teta<sub>2</sub> = ".._Teta2.." C")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
	end
	
	if _DeltaT ~= nil or _T1 ~= nil or _T2 ~= nil then
		Binesh.CreateHTMLFile("T = Teta+273", "Teta = T-273")
	end
	
	if _DeltaT ~= nil then
		_DeltaTeta = _DeltaT-273
		Binesh.AddToHTML("DeltaTeta = ".._DeltaT.."-273 &#8658; DeltaTeta = ".._DeltaTeta.."<sup>o</sup>C")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
	end
	if _T1 ~= nil then
		_Teta1 = _T1-273
		Binesh.AddToHTML("Teta<sub>1</sub> = ".._T1.."-273 &#8658; Teta<sub>1</sub> = ".._Teta1.."<sup>o</sup>C")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
	end
	if _T2 ~= nil then
		_Teta2 = _T2-273
		Binesh.AddToHTML("Teta<sub>2</sub> = ".._T2.."-273 &#8658; Teta<sub>2</sub> = ".._Teta2.."<sup>o</sup>C")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
	end
	
	FindQ = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«");
	if FindQ ~= -1 and ListBox.GetItemData("unknowns", FindQ) == "Q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ê—„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Q") ~= -1 then
		if m ~= nil and c ~= nil and _DeltaTeta ~= nil then
			Binesh.CreateHTMLFile("Q = mcDeltaTeta")
			Q = m*c*_DeltaTeta
			Binesh.AddToHTML("Q = "..m.."*"..c.."*".._DeltaTeta.." &#8658; Q = "..Q.." J")
			
			Web.Refresh("Web1");
				
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Q");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findm = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„");
	if Findm ~= -1 and ListBox.GetItemData("unknowns", Findm) == "m" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1 then 
		if Q ~= nil and c ~= nil and _DeltaTeta ~= nil then
			Binesh.CreateHTMLFile("Q = m*c*DeltaTeta", "m = <span>Q/cDeltaTeta</span>")
			m = Q/c*_DeltaTeta
			Binesh.AddToHTML("m = <span>"..Q.."/"..c.."*".._DeltaTeta.."</span> &#8658; m = "..m.." Kg")
			
			Web.Refresh("Web1");
				
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "m");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findc = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«")
	if Findc ~= -1 and ListBox.GetItemData("unknowns", Findc) == "m" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "c") ~= -1 then 
		if Q ~= nil and m ~= nil and _DeltaTeta ~= nil then
			Binesh.CreateHTMLFile("Q = m*c*DeltaTeta", "c = <span>Q/m*DeltaTeta</span>")
			c = Q/m*_DeltaTeta
			Binesh.AddToHTML("c = <span>"..Q.."/"..m.."*".._DeltaTeta.."</span> &#8658; c = "..c.." J/Kg.C")
			
			Web.Refresh("Web1");
				
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "c");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindTeta1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«")
	if FindTeta1 ~= -1 and ListBox.GetItemData("unknowns", FindTeta1) == "Teta1" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T1") ~= -1 then
		if Q ~= nil and m ~= nil and c ~= nil then
			Binesh.CreateHTMLFile("Q = mcDeltaTeta", "Q = mc(Teta<sub>2</sub>-Teta<sub>1</sub>)")
			Binesh.AddToHTML("Teta<sub>1</sub> = - <span>Q/mc</span> + Teta<sub>2</sub>")
			
			_Teta1 = (-Q/(m*c)) + _Teta2
			
			Binesh.AddToHTML("Teta<sub>1</sub> = - <span>"..Q.."/"..m.."*"..c.."</span> + ".._Teta2.." &#8658; Teta<sub>1</sub> = ".._Teta1.."<sup>o</sup>C")
			
			Web.Refresh("Web1");
				
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Teta1");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindTeta2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«")
	if FindTeta2 ~= -1 and ListBox.GetItemData("unknowns", FindTeta1) == "Teta2" and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta2") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T2") ~= -1 then
		if Q ~= nil and m ~= nil and c ~= nil then
			Binesh.CreateHTMLFile("Q = mcDeltaTeta", "Q = mc(Teta<sub>2</sub>-Teta<sub>1</sub>)")
			Binesh.AddToHTML("Teta<sub>1</sub> = <span>Q/mc</span> + Teta<sub>1</sub>")
			
			_Teta2 = (-Q/(m*c)) + _Teta1
			
			Binesh.AddToHTML("Teta<sub>2</sub> = - <span>"..Q.."/"..m.."*"..c.."</span> + ".._Teta1.." &#8658; Teta<sub>2</sub> = ".._Teta2.."<sup>o</sup>C")
			
			Web.Refresh("Web1");
				
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Teta2");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end