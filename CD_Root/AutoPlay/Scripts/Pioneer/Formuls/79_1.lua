function Binesh.F79_1()
	if Q == nil then
		Binesh.AddUnknown("ê—„«", "Q")
	end
	
	if n == nil then
		Binesh.AddUnknown("„Ê·", "n")
	end
	
	if CV == nil then
		Binesh.AddUnknown("Ÿ—›Ì  ê—„«ÌÌ", "CV")
	end
	
	if _DeltaTeta == nil and _DeltaT == nil and _DeltaTF == nil then
		Binesh.AddUnknown(" €ÌÌ— œ„«", "DeltaT")
	end
	
	if _Teta1 == nil and _T1 == nil and _TF1 == nil then
		Binesh.AddUnknown("«Ê·Ì‰ œ„«", "T1")
	end
	
	if _Teta2 == nil and _T2 == nil and _TF2 == nil then
		Binesh.AddUnknown("œÊ„Ì‰ œ„«", "T")
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
		if n ~= nil and CV ~= nil and _DeltaT ~= nil then
			Binesh.CreateHTMLFile("Q = n*C<sub>V</sub>DeltaT")
			Q = n*CV*_DeltaT
			Binesh.AddToHTML("Q = "..n.."*"..CV.."*".._DeltaT.." &#8658; Q = "..Q.." J")
			
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("n: "..n.." mol", "V")
			Binesh.AddToHTML("DeltaTeta: ".._DeltaTeta.."<sup>o</sup>C", "V")
			Binesh.AddToHTML("C<sub>V</sub>: "..CV.." J/mol.K", "V")
			Binesh.AddToHTML("Q: ?", "V")
				
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Q");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findn = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ê·");
	if Findn ~= -1 and ListBox.GetItemData("unknowns", Findn) == "n" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ê·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1 then 
		if Q ~= nil and CV ~= nil and _DeltaT ~= nil then
			Binesh.CreateHTMLFile("Q = nC<sub>V</sub>DeltaT", "n = <span>Q/C<sub>V</sub>DeltaT</span>")
			n = Q/CV*_DeltaT
			Binesh.AddToHTML("n = <span>"..Q.."/"..CV.."*".._DeltaT.."</span> &#8658; n = "..n.." mol")
			
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("Q: "..Q.." J", "V")
			Binesh.AddToHTML("DeltaTeta: ".._DeltaTeta.."<sup>o</sup>C", "V")
			Binesh.AddToHTML("C<sub>V</sub>: "..CV.." J/mol.K", "V")
			Binesh.AddToHTML("n: ?", "V")
				
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ê·");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "n");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindCV = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«ÌÌ");
	if FindCV ~= -1 and ListBox.GetItemData("unknowns", FindCV) == "CV" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "CV") ~= -1 then
		if Q ~= nil and n ~= nil and _DeltaT ~= nil then
			Binesh.CreateHTMLFile("Q = nC<sub>V</sub>DeltaT", "C<sub>V</sub> = <span>Q/nDeltaT</span>")
			CV = Q/n*_DeltaT
			Binesh.AddToHTML("C<sub>V</sub> = <span>"..Q.."/"..n.."*".._DeltaT.."</span> &#8658; C<sub>V</sub> = "..CV.." J/mol.K")
			
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("Q: "..Q.." J", "V")
			Binesh.AddToHTML("n: "..n.." mol", "V")
			Binesh.AddToHTML("DeltaTeta: ".._DeltaTeta.."<sup>o</sup>C", "V")
			Binesh.AddToHTML("C<sub>V</sub>: ?", "V")
				
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«ÌÌ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "CV");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindDeltaT = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«");
	if FindDeltaT ~= -1 and ListBox.GetItemData("unknowns", FindDeltaT) == "DeltaT" and (ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta2") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaT") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T2") ~= -1) then
		if Q ~= nil and n ~= nil and CV ~= nil then
			Binesh.CreateHTMLFile("Q = nC<sub>V</sub>DeltaT", "DeltaT = <span>Q/nC<sub>V</sub></span>")
			_DeltaT = Q/n*CV
			Binesh.AddToHTML("DeltaT = <span>"..Q.."/"..n.."*"..CV.."</span> &#8658; DeltaT = ".._DeltaT.."<sup>o</sup>K")
			
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("Q: "..Q.." J", "V")
			Binesh.AddToHTML("n: "..n.." mol", "V")
			Binesh.AddToHTML("C<sub>V</sub>: "..CV.." J/mol.K", "V")
			Binesh.AddToHTML("DeltaTeta: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaT");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end