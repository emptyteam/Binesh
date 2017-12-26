function Binesh.F77_2()
	if W == nil then
		Binesh.AddUnknown("ò«—", "W")
	end
	
	if n == nil then
		Binesh.AddUnknown("„Ê·", "n")
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
	FindW = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«—");
	if FindW ~= -1 and ListBox.GetItemData("unknowns", FindW) == "W" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ò«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1 then
		if n ~= nil and _DeltaT ~= nil then
			Binesh.CreateHTMLFile("W = nRDeltaT")
			W = n*Zarib.R*_DeltaT
			Binesh.AddToHTML("W = "..n.."*"..Zarib.R.."*".._DeltaT.." &#8658; W = "..W.." J")
			
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("n: "..n.." mol", "V")
			Binesh.AddToHTML("DeltaT: ".._DeltaT.."<sup>o</sup>K", "V")
			Binesh.AddToHTML("W: ?", "V")
				
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«—");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "W");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findn = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ê·");
	if Findn ~= -1 and ListBox.GetItemData("unknowns", Findn) == "n" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ê·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1 then 
		if W ~= nil and _DeltaTeta ~= nil then
			Binesh.CreateHTMLFile("W = nRDeltaT", "n = <span>W/DeltaTR</span>")
			n = W/_DeltaT*Zarib.R
			Binesh.AddToHTML("n = <span>"..W.."/".._DeltaT.."*"..Zarib.R.."</span> &#8658; n = "..n.." mol")
			
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("W: "..W.." J", "V")
			Binesh.AddToHTML("DeltaT: ".._DeltaT.."<sup>o</sup>K", "V")
			Binesh.AddToHTML("n: ?", "V")
			
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ê·");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "n");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindDeltaT = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«");
	if FindDeltaTeta ~= -1 and ListBox.GetItemData("unknowns", FindDeltaTeta) == "DeltaTeta" and (ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta2") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaT") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T2") ~= -1) then
		if n ~= nil and W ~= nil then
			Binesh.CreateHTMLFile("W = nRDeltaT", "DeltaT = <span>W/nR</span>")
			_DeltaT = W/n*Zarib.R
			Binesh.AddToHTML("DeltaT = <span>"..W.."/"..n.."*"..Zarib.R.."</span> &#8658; DeltaT = ".._DeltaT.."<sup>o</sup>K")
			
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("W: "..W.." J", "V")
			Binesh.AddToHTML("n: "..n.." mol", "V")
			Binesh.AddToHTML("DeltaT: ?", "V")
				
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œ„«");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaT");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end