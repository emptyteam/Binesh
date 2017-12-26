function Binesh.F78_1()
	if Q == nil then
		Binesh.AddUnknown("ê—„«", "Q")
	end
	
	if n == nil then
		Binesh.AddUnknown("„Ê·", "n")
	end
	
	if CP == nil then
		Binesh.AddUnknown("Ÿ—›Ì  ê—„«ÌÌ", "CP")
	end
	
	if _DeltaTeta == nil and _DeltaT == nil and _DeltaTF == nil then
		Binesh.AddUnknown(" €ÌÌ— œ„«", "DeltaT")
	end
	
	if _Teta1 == nil and _T1 == nil and _TF1 == nil then
		Binesh.AddUnknown("«Ê·Ì‰ œ„«", "T1")
	end
	
	if _Teta2 == nil and _T2 == nil and _TF2 == nil then
		Binesh.AddUnknown("œÊ„Ì‰ œ„«", "T2")
	end
	
	--------------------------{DELTA}--------------------------
	FindDeltaT = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«");
	if FindDeltaT ~= -1 and ListBox.GetItemData("unknowns", FindDeltaT) == "DeltaT" then
		if _T1 ~= nil and _T2 ~= nil then
			Binesh.CreateHTMLFile("DeltaT = T<sub>2</sub>-T<sub>1</sub>")
			_DeltaT = _T2 - _T1
			Binesh.AddToHTML("DeltaT = ".._T2.."-".._T1.." &#8658; DeltaT = ".._DeltaT.."<sup>o</sup>K")
			Binesh.AddToHTML("<br>") -- Create ENTER in HTML
			Web.Refresh("Web1");
				
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«");
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
				
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«");
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
				
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "T2");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	--------------------------END {DELTA}--------------------------
	FindQ = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«");
	if FindQ ~= -1 and ListBox.GetItemData("unknowns", FindQ) == "Q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ê—„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Q") ~= -1 then 
		if n ~= nil and CP ~= nil and _DeltaT ~= nil then
			Binesh.CreateHTMLFile("Q = nC<sub>p</sub>DeltaT")
			Q = n*CP*_DeltaT
			
			Binesh.AddToHTML("n: "..n.." mol", "V")
			Binesh.AddToHTML("C<sub>P</sub>: "..CP.." J/mol.K", "V")
			Binesh.AddToHTML("DeltaT: ".._DeltaT.."<sup>o</sup>K", "V")
			Binesh.AddToHTML("Q: ?", "V")
			
			Binesh.AddToHTML("Q = "..n.."*"..CP.."*".._DeltaT.." &#8658; Q = "..Q.." J")
			Web.Refresh("Web1");
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Q");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findn = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ê·");
	if Findn ~= -1 and ListBox.GetItemData("unknowns", Findn) == "n" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ê·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1 then 
		if Q ~= nil and CP ~= nil and EDeltaT ~= nil then
			Binesh.CreateHTMLFile("Q = nC<sub>p</sub>DeltaT", "n = <span>Q/C<sub>p</sub></span>DeltaT")
			n = Q/CP*_DeltaT
			
			Binesh.AddToHTML("Q: "..Q.." J", "V")
			Binesh.AddToHTML("C<sub>P</sub>: "..CP.." J/mol.K", "V")
			Binesh.AddToHTML("DeltaT: ".._DeltaT.."<sup>o</sup>K", "V")
			Binesh.AddToHTML("n: ?", "V")
			
			Binesh.AddToHTML("n = <span>"..Q.."/"..CP.."*".._DeltaT.."</span> &#8658; n = "..n.." mol")
			Web.Refresh("Web1");
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ê·");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "n");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindCP = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«ÌÌ");
	if FindCP ~= -1 and ListBox.GetItemData("unknowns", FindCP) == "CP" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "CP") ~= -1 then 
		if Q ~= nil and _DeltaT ~= nil and n ~= nil then
			Binesh.CreateHTMLFile("Q = nC<sub>p</sub>DeltaT", "C<sub>P</sub> = <span>Q/nDeltaT</span>")
			CP = Q/n*_DeltaT
			
			Binesh.AddToHTML("Q: "..Q.." J", "V")
			Binesh.AddToHTML("n: "..n.." mol", "V")
			Binesh.AddToHTML("DeltaT: ".._DeltaT.."<sup>o</sup>K", "V")
			Binesh.AddToHTML("C<sub>P</sub>: ?", "V")
			
			Binesh.AddToHTML("C<sub>p</sub> = <span>"..Q.."/"..n.."*".._DeltaT.."</span> &#8658; C<sub>p</sub> = "..CP.." J/mol.K")
			Web.Refresh("Web1");
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«ÌÌ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "CP");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindDeltaT = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«");
	if FindDeltaT ~= -1 and ListBox.GetItemData("unknowns", FindDeltaT) == "DeltaT" and (ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta2") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaT") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T2") ~= -1) then
		if Q ~= nil and CP ~= nil and n ~= nil then
			Binesh.CreateHTMLFile("Q = nC<sub>p</sub>DeltaT", "DeltaT = <span>Q/nC<sub>p</sub></span>")
			_DeltaT = Q/n*CP
			
			Binesh.AddToHTML("Q: "..Q.." J", "V")
			Binesh.AddToHTML("n: "..n.." mol", "V")
			Binesh.AddToHTML("C<sub>P</sub>: "..CP.." J/mol.K", "V")
			Binesh.AddToHTML("DeltaT: ?", "V")
			
			Binesh.AddToHTML("DeltaTets = <span>"..Q.."/"..n.."*"..CP.."</span> &#8658; DeltaT = ".._DeltaT.."<sup>o</sup>K")
			Web.Refresh("Web1");
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œ„«");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaT");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end