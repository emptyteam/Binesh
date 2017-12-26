function Binesh.F93_1()
	if Teta == nil then -- «ê— “«ÊÌÂ œ«‘ Â »«‘œ »«Ìœ «“ ›—„Ê· »⁄œÌ »—Êœ
		if _DeltaV_Electric == nil then
		
			Binesh.AddUnknown(" €ÌÌ— Ê· «é", "DeltaV")
		end
		if _V1_Electric == nil then
			
			Binesh.AddUnknown("«Ê·Ì‰ Ê· «é", "V1")
		end
		if _V2_Electric == nil then
		
			Binesh.AddUnknown("œÊ„Ì‰ Ê· «é", "V2")
		end
		
		if E == nil then
		
			Binesh.AddUnknown("„Ìœ«‰", "E")
		end
		
		if d_Distance == nil then
			
			Binesh.AddUnknown("›«’·Â", "d")
		end
		
		--------------------------{DELTA}--------------------------
		FindDeltaV_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— Ê· «é");
		if FindDeltaV_Electric ~= -1 and ListBox.GetItemData("unknowns", FindDeltaV_Electric) == "DeltaV" then
			if _V1_Electric ~= nil and _V2_Electric ~= nil then
				Binesh.CreateHTMLFile("DeltaV = V<sub>2</sub>-V<sub>1</sub>")
				_DeltaV_Electric = _V2_Electric - _V1_Electric
				Binesh.AddToHTML("DeltaV = ".._V2_Electric.."-".._V1_Electric.." &#8658; DeltaV = ".._DeltaV_Electric.." V")
				Binesh.AddToHTML("<br>") -- Create ENTER in HTML
				Web.Refresh("Web1");
					
				unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— Ê· «é");
				unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaV");
				if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
					ListBox.DeleteItem("unknowns", unknownPersianindex);
				end
			end
		end
		
		FindV1_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Ê· «é");
		if FindV1_Electric ~= -1 and ListBox.GetItemData("unknowns", FindV1_Electric) == "V1" or ListBox.GetItemData("unknowns", FindV1_Electric) == "V1" then
			if _DeltaV_Electric ~= nil and _V2_Electric ~= nil then
				Binesh.CreateHTMLFile("DeltaV = V<sub>2</sub>-V<sub>1</sub>", "V<sub>1</sub> = V<sub>2</sub>-DeltaV")
				_V1_Electric = _V2_Electric-_DeltaV_Electric
				Binesh.AddToHTML("V<sub>1</sub> = ".._V2_Electric.."-".._DeltaV_Electric.." &#8658; V<sub>1</sub> = ".._V1_Electric.." V")
				Binesh.AddToHTML("<br>") -- Create ENTER in HTML
				Web.Refresh("Web1");
					
				unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Ê· «é");
				unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V1");
				if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
					ListBox.DeleteItem("unknowns", unknownPersianindex);
				end
			end
		end
		
		FindV2_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ Ê· «é");
		if FindV2_Electric ~= -1 and ListBox.GetItemData("unknowns", FindV2_Electric) == "V2" or ListBox.GetItemData("unknowns", FindV2_Electric) == "V2" then
			if _DeltaV_Electric ~= nil and _V1_Electric ~= nil then
				Binesh.CreateHTMLFile("DeltaV = V<sub>2</sub>-V<sub>1</sub>", "V<sub>2</sub> = DeltaV+V<sub>1</sub>")
				_V2_Electric = _V1_Electric+_DeltaV_Electric
				Binesh.AddToHTML("V<sub>2</sub> = ".._DeltaV_Electric.."+".._V1_Electric.." &#8658; V<sub>2</sub> = ".._V2_Electric.." V")
				Binesh.AddToHTML("<br>") -- Create ENTER in HTML
				Web.Refresh("Web1");
					
				unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ Ê· «é");
				unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V2");
				if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
					ListBox.DeleteItem("unknowns", unknownPersianindex);
				end
			end
		end
		--------------------------END {DELTA}--------------------------
		
		FindDeltaV_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— Ê· «é");
		if FindDeltaV_Electric ~= -1 and ListBox.GetItemData("unknowns", FindDeltaV_Electric) == "DeltaV" and (ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ Ê· «é") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaV") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V2") ~= -1) then
			if E_Electric ~= nil and d_Distance ~= nil then
				Binesh.CreateHTMLFile("DeltaV = Ed")
				_DeltaV_Electric = E_Electric*d_Distance
				Binesh.AddToHTML("DeltaV = "..E_Electric.."*"..d_Distance.." &#8658; DeltaV = ".._DeltaV_Electric.." V")
				
				Web.Refresh("Web1");
				
				Binesh.AddToHTML("E: "..E_Electric.." N/C", "V")
				Binesh.AddToHTML("d: "..d_Distance.." m", "V")
				Binesh.AddToHTML("DeltaV: ?", "V")
					
				unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— Ê· «é");
				unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaV");
				if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
					ListBox.DeleteItem("unknowns", unknownPersianindex);
				end
			end
		end
		
		FindE_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰");
		if FindE_Electric ~= -1 and ListBox.GetItemData("unknowns", FindE_Electric) == "E" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "E") ~= -1 then
			if _DeltaV_Electric ~= nil and d_Distance ~= nil then
				Binesh.CreateHTMLFile("DeltaV = Ed", "E = <span>DeltaV/d</span>")
				E_Electric = _DeltaV_Electric / d_Distance
				Binesh.AddToHTML("E = <span>".._DeltaV_Electric.."/"..d_Distance.."</span> &#8658; E = "..E_Electric.." N/C")
				
				Web.Refresh("Web1");
				
				Binesh.AddToHTML("DeltaV: ".._DeltaV_Electric.." N/C", "V")
				Binesh.AddToHTML("d: "..d_Distance.." m", "V")
				Binesh.AddToHTML("E: ?", "V")
					
				unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰");
				unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "E");
				if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
					ListBox.DeleteItem("unknowns", unknownPersianindex);
				end
			end
		end
		
		Findd_Distance = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â");
		if Findd_Distance ~= -1 and ListBox.GetItemData("unknowns", Findd_Distance) == "d" and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "d") ~= -1 then 
			if _DeltaV_Electric ~= nil and E_Electric ~= nil then
				Binesh.CreateHTMLFile("DeltaV = Ed", "d = <span>DeltaV/E</span>")
				d_Distance = _DeltaV_Electric / E_Electric
				Binesh.AddToHTML("d = <span>".._DeltaV_Electric.."/"..E_Electric.."</span> &#8658; d = "..d_Distance.." m")
				
				Web.Refresh("Web1");
				
				Binesh.AddToHTML("DeltaV: ".._DeltaV_Electric.." N/C", "V")
				Binesh.AddToHTML("E: "..E_Electric.." m", "V")
				Binesh.AddToHTML("d: ?", "V")
					
				unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â");
				unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "d");
				if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
					ListBox.DeleteItem("unknowns", unknownPersianindex);
				end
			end
		end
	end
end