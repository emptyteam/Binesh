function Binesh.F35_1()
	if _DeltaV_Speed == nil then
		Binesh.AddUnknown(" €ÌÌ— ”—⁄ ", "V")
	end
	
	if _V1_Speed == nil then
		Binesh.AddUnknown("«Ê·Ì‰ ”—⁄ ", "V0")
	end
	
	if _V2_Speed == nil then
		Binesh.AddUnknown("œÊ„Ì‰ ”—⁄ ", "V")
	end
	
	if a == nil then
		Binesh.AddUnknown("‘ «»", "a")
	end
	
	if t == nil then
		Binesh.AddUnknown("“„«‰", "t")
	end
	
	--------------------------{DELTA}--------------------------
	FindDeltaV_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— ”—⁄ ");
	if FindDeltaV_Speed ~= -1 and ListBox.GetItemData("unknowns", FindDeltaV_Speed) == "DeltaV" then
		if _V1_Speed ~= nil and _V2_Speed ~= nil then
			Binesh.CreateHTMLFile("DeltaV = V<sub>2</sub>-V<sub>1</sub>")
			_DeltaV_Speed = _V2_Speed - _V1_Speed
			Binesh.AddToHTML("DeltaV = ".._V2_Speed.."-".._V1_Speed.." &#8658; DeltaV = ".._DeltaV_Speed.." m/s")
			Binesh.AddToHTML("<br>") -- Create ENTER in HTML
			Web.Refresh("Web1");
				
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— ”—⁄ ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaV");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindV1_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ");
	if FindV1_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV1_Speed) == "V1" then
		if _DeltaV_Speed ~= nil and _V2_Speed ~= nil then
			Binesh.CreateHTMLFile("DeltaV = V<sub>2</sub>-V<sub>1</sub>", "V<sub>1</sub> = V<sub>2</sub>-DeltaV")
			_V1_Speed = _V2_Speed-_DeltaV_Speed
			Binesh.AddToHTML("V<sub>1</sub> = ".._V2_Speed.."-".._DeltaV_Speed.." &#8658; V<sub>1</sub> = ".._V1_Speed.." m/s")
			Binesh.AddToHTML("<br>") -- Create ENTER in HTML
			Web.Refresh("Web1");
				
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V1");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindV2_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ”—⁄ ");
	if FindV2_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV2_Speed) == "V2" then
		if _DeltaV_Speed ~= nil and _V1_Speed ~= nil then
			Binesh.CreateHTMLFile("DeltaV = V<sub>2</sub>-V<sub>1</sub>", "V<sub>2</sub> = DeltaV+V<sub>1</sub>")
			_V2_Speed = _V1_Speed+_DeltaV_Speed
			Binesh.AddToHTML("V<sub>2</sub> = ".._DeltaV_Speed.."+".._V1_Speed.." &#8658; V<sub>2</sub> = ".._V2_Speed.." m/s")
			Binesh.AddToHTML("<br>") -- Create ENTER in HTML
			Web.Refresh("Web1");
				
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ”—⁄ ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V2");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	--------------------------END {DELTA}--------------------------
	
	FindDeltaV_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— ”—⁄ ");
	if FindDeltaV_Speed ~= -1 and ListBox.GetItemData("unknowns", FindDeltaV_Speed) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄   €ÌÌ—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then 
		if a ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("DeltaV = at")
			_DeltaV_Speed = a*t
			
			Binesh.AddToHTML("DeltaV = "..a.."*"..t.." &#8658; DeltaV = ".._DeltaV_Speed.." m/s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>" , "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("DeltaV: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— ”—⁄ ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaV");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Finda = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‘ «»");
	if Finda ~= -1 and ListBox.GetItemData("unknowns", Finda) == "a" and ListBox.FindItem("Words", -1, LB_BYTEXT, "‘ «»") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "a") ~= -1 then 
		if _DeltaV_Speed ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("DeltaV = at", "a = <span>DeltaV/t</span>")
			a = _DeltaV_Speed/t
			
			Binesh.AddToHTML("a = <span>".._DeltaV_Speed.."/"..t.."</span> &#8658; a = "..a.." m/s<sup>2</sup>")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("DeltaV: ".._DeltaV_Speed.." m/s", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("a: ?" , "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‘ «»");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "a");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findt = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
	if Findt ~= -1 and ListBox.GetItemData("unknowns", Findt) == "t" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1 then
		if _DeltaV_Speed ~= nil and a ~= nil then
			Binesh.CreateHTMLFile("DeltaV = at", "t = <span>DeltaV/a</span>")
			t = _DeltaV_Speed/a
			
			Binesh.AddToHTML("t = <span>".._DeltaV_Speed.."/"..a.."</span> &#8658; t = "..t.." s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("DeltaV: ".._DeltaV_Speed.." m/s", "V")
			Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>" , "V")
			Binesh.AddToHTML("t: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "s");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end