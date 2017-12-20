if W_Out == nil then
	
	Binesh.AddUnknown("ò«— Œ«—ÃÌ", "W")
end

if _DeltaV_Speed == nil then
	
	Binesh.AddUnknown(" €ÌÌ— ”—⁄ ", "DeltaV")
end
if _V1_Speed == nil then
	
	Binesh.AddUnknown("«Ê·Ì‰ ”—⁄ ", "V1")
end
if _V2_Speed == nil then
	
	Binesh.AddUnknown("œÊ„Ì‰ ”—⁄ ", "V2")
end

if q == nil then
	
	Binesh.AddUnknown("–—Â", "q")
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
FindW_Out = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«— Œ«—ÃÌ");
if FindW_Out ~= -1 and ListBox.GetItemData("unknowns", FindW_Out) == "W" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ò«— Œ«—ÃÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1 then
	if _DeltaV_Speed ~= nil and q ~= nil then
		Binesh.CreateHTMLFile("W = qDeltaV")
		W_Out = q*_DeltaV_Speed
		Binesh.AddToHTML("W = "..q.."*".._DeltaV_Speed.." &#8658; W = "..W_Out.." J")
		
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("q: "..q.." C", "V")
		Binesh.AddToHTML("DeltaV: ".._DeltaV_Speed.." V", "V")
		Binesh.AddToHTML("W: ?", "V")
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«— Œ«—ÃÌ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "W");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindDeltaV_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— ”—⁄ ");
if FindDeltaV_Speed ~= -1 and ListBox.GetItemData("unknowns", FindDeltaV_Speed) == "DeltaV" and (ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ”—⁄ ") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaV") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V2") ~= -1) then
	if q ~= nil and W_Out ~= nil then
		Binesh.CreateHTMLFile("W = qDeltaV", "DeltaV = <span>W/q</span>")
		_DeltaV_Speed = _V1_Speed*Beta*_DeltaTeta
		Binesh.AddToHTML("DeltaV = <span>"..W_out.."/"..q.."</span> &#8658; DeltaV = ".._DeltaV_Speed.." m/s")
		
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("q: "..q.." C", "V")
		Binesh.AddToHTML("DeltaV: ".._DeltaV_Speed.." V", "V")
		Binesh.AddToHTML("W: ?", "V")
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— ”—⁄ ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaV");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findq = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â");
if Findq ~= -1 and ListBox.GetItemData("unknowns", Findq) == "Deltaq" and ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltaq") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q2") ~= -1 then
	if W_Out ~= nil and _DetlaV ~= nil then
		Binesh.CreateHTMLFile("W = qDeltaV", "q = <span>W/DeltaV</span>")
		q = W_Out/_DeltaV_Speed
		Binesh.AddToHTML("q = <span>"..W_out.."/".._DeltaV_Speed.."</span> &#8658; q = "..q.." C")
		
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("W: "..W_Out.." J", "V")
		Binesh.AddToHTML("DeltaV: ".._DeltaV_Speed.." V", "V")
		Binesh.AddToHTML("q: ?", "V")
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end