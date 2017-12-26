function Binesh.F4_1()
	if Q == nil then
		Binesh.AddUnknown("ê—„«", "Q")
	end
	
	if m == nil then
		Binesh.AddUnknown("Ã—„", "m")
	end
	
	if c == nil then
		Binesh.AddUnknown("Ÿ—›Ì  ê—„«", "c")
	end
	
	if _DeltaTeta == nil and _DeltaT == nil and _DeltaTF == nil then
		Binesh.AddUnknown(" €ÌÌ— œ„«", "DeltaTeta")
	end
	
	if _Teta1 == nil and _T1 == nil and _TF1 == nil then
		Binesh.AddUnknown("«Ê·Ì‰ œ„«", "Teta1")
	end
	
	if _Teta2 == nil and _T2 == nil and _TF2 == nil then
		Binesh.AddUnknown("œÊ„Ì‰ œ„«", "Teta2")
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
	
	--------------------------{DELTA}--------------------------
	FindDeltaTeta = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«");
	if FindDeltaTeta ~= -1 and ListBox.GetItemData("unknowns", FindDeltaTeta) == "DeltaTeta" then
		if _Teta1 ~= nil and _Teta2 ~= nil then
			Binesh.CreateHTMLFile("DeltaTeta = Teta<sub>2</sub>-Teta<sub>1</sub>")
			_DeltaTeta = _Teta2 - _Teta1
			Binesh.AddToHTML("DeltaTeta = ".._Teta2.."-".._Teta1.." &#8658; DeltaTeta = ".._DeltaTeta.."<sup>o</sup>C")
			Binesh.AddToHTML("<br>") -- Create ENTER in HTML
			Web.Refresh("Web1");
				
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaTeta");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindTeta1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«");
	if FindTeta1 ~= -1 and ListBox.GetItemData("unknowns", FindTeta1) == "Teta1" then
		if _DeltaTeta ~= nil and _Teta2 ~= nil then
			Binesh.CreateHTMLFile("DeltaTeta = Teta<sub>2</sub>-Teta<sub>1</sub>", "Teta<sub>1</sub> = Teta<sub>2</sub>-DeltaTeta")
			_Teta1 = _Teta2-_DeltaTeta
			Binesh.AddToHTML("Teta<sub>1</sub> = ".._Teta2.."-".._DeltaTeta.." &#8658; Teta<sub>1</sub> = ".._Teta1.."<sup>o</sup>C")
			Binesh.AddToHTML("<br>") -- Create ENTER in HTML
			Web.Refresh("Web1");
				
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Teta1");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindTeta2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«");
	if FindTeta2 ~= -1 and ListBox.GetItemData("unknowns", FindTeta2) == "Teta2" then
		if _DeltaTeta ~= nil and _Teta1 ~= nil then
			Binesh.CreateHTMLFile("DeltaTeta = Teta<sub>2</sub>-Teta<sub>1</sub>", "Teta<sub>2</sub> = DeltaTeta+Teta<sub>1</sub>")
			_Teta2 = _Teta1+_DeltaTeta
			Binesh.AddToHTML("Teta<sub>2</sub> = ".._DeltaTeta.."+".._Teta1.." &#8658; Teta<sub>2</sub> = ".._Teta2.."<sup>o</sup>C")
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
	
	FindQ = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«");
	if FindQ ~= -1 and ListBox.GetItemData("unknowns", FindQ) == "Q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ê—„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Q") ~= -1 then
		if m ~= nil and c ~= nil and _DeltaTeta ~= nil then
			Binesh.CreateHTMLFile("Q = mcDeltaTeta")
			Q = m*c*_DeltaTeta
			
			Binesh.AddToHTML("m: "..m.." m", "V")
			Binesh.AddToHTML("c: "..c.." J/Kg.C", "V")
			Binesh.AddToHTML("DeltaTeta: ".._DeltaTeta.."<sup>o</sup>C", "V")
			Binesh.AddToHTML("Q: ?", "V")
			
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
			
			Binesh.AddToHTML("Q: "..Q.." J", "V")
			Binesh.AddToHTML("c: "..c.." J/Kg.C", "V")
			Binesh.AddToHTML("DeltaTeta: ".._DeltaTeta.."<sup>o</sup>C", "V")
			Binesh.AddToHTML("m: ?", "V")
			
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
			
			Binesh.AddToHTML("Q: "..Q.." J", "V")
			Binesh.AddToHTML("m: "..m.." Kg", "V")
			Binesh.AddToHTML("DeltaTeta: ".._DeltaTeta.."<sup>o</sup>C", "V")
			Binesh.AddToHTML("c: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "c");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindDeltaTeta = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«")
	if FindDeltaTeta ~= -1 and ListBox.GetItemData("unknowns", FindDeltaTeta) == "DeltaTeta" and (ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta2") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaT") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T2") ~= -1) then
		if Q ~= nil and m ~= nil and c ~= nil then
			Binesh.CreateHTMLFile("Q = m*c*DeltaTeta", "DeltaTeta = <span>Q/mc</span>")
			_DeltaTeta = Q/m*c
			
			Binesh.AddToHTML("Q: "..Q.." J", "V")
			Binesh.AddToHTML("m: "..m.." Kg", "V")
			Binesh.AddToHTML("c: "..c.." J/Kg.C", "V")
			Binesh.AddToHTML("DeltaTeta: ?", "V")
			
			Binesh.AddToHTML("DeltaTeta = <span>"..Q.."/"..m.."*"..c.."</span> &#8658; DeltaTeta = ".._DeltaTeta.."<sup>o</sup>C")
			Web.Refresh("Web1");
				
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaTeta");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end