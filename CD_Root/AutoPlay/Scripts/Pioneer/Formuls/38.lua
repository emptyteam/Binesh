function Binesh.F38()
	if V1_Speed == nil then
		Binesh.AddUnknown("«Ê·Ì‰ ”—⁄ ", "V1")
	end
	
	if V2_Speed == nil then
		Binesh.AddUnknown("œÊ„Ì‰ ”—⁄ ", "V2")
	end
	
	if _Deltax == nil then
		Binesh.AddUnknown(" €ÌÌ— Ã«»Ã«ÌÌ", "Deltax")
	end
	if _x1 == nil then
		Binesh.AddUnknown("«Ê·Ì‰ Ã«»Ã«ÌÌ", "x1")
	end
	if _x2 == nil then
		Binesh.AddUnknown("œÊ„Ì‰ Ã«»Ã«ÌÌ", "x2")
	end
	
	if _Deltat == nil then
		Binesh.AddUnknown(" €ÌÌ— “„«‰", "Deltat")
	end
	if _t1 == nil then
		Binesh.AddUnknown("«Ê·Ì‰ “„«‰", "t1")
	end
	if _t2 == nil then
		Binesh.AddUnknown("œÊ„Ì‰ “„«‰", "t2")
	end
	
	--------------------------{DELTA}--------------------------
	FindDeltax = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— Ã«»Ã«ÌÌ");
	if FindDeltax ~= -1 and ListBox.GetItemData("unknowns", FindDeltax) == "Deltax" then
		if _x1 ~= nil and _x2 ~= nil then
			Binesh.CreateHTMLFile("Deltax = x<sub>2</sub>-x<sub>1</sub>")
			_Deltax = _x2 - _x1
			Binesh.AddToHTML("Deltax = ".._x2.."-".._x1.." &#8658; Deltax = ".._Deltax.." m")
			Binesh.AddToHTML("<br>") -- Create ENTER in HTML
			Web.Refresh("Web1");
				
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— Ã«»Ã«ÌÌ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Deltax");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findx1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Ã«»Ã«ÌÌ");
	if Findx1 ~= -1 and ListBox.GetItemData("unknowns", Findx1) == "x1" then
		if _Deltax ~= nil and _x2 ~= nil then
			Binesh.CreateHTMLFile("Deltax = x<sub>2</sub>-x<sub>1</sub>", "x<sub>1</sub> = x<sub>2</sub>-Deltax")
			_x1 = _x2-_Deltax
			Binesh.AddToHTML("x<sub>1</sub> = ".._x2.."-".._Deltax.." &#8658; x<sub>1</sub> = ".._x1.." m")
			Binesh.AddToHTML("<br>") -- Create ENTER in HTML
			Web.Refresh("Web1");
				
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Ã«»Ã«ÌÌ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "x1");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findx2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ Ã«»Ã«ÌÌ");
	if Findx2 ~= -1 and ListBox.GetItemData("unknowns", Findx2) == "x2" then
		if _Deltax ~= nil and _x1 ~= nil then
			Binesh.CreateHTMLFile("Deltax = x<sub>2</sub>-x<sub>1</sub>", "x<sub>2</sub> = Deltax+x<sub>1</sub>")
			_x2 = _x1+_Deltax
			Binesh.AddToHTML("x<sub>2</sub> = ".._Deltax.."+".._x1.." &#8658; x<sub>2</sub> = ".._x2.." m")
			Binesh.AddToHTML("<br>") -- Create ENTER in HTML
			Web.Refresh("Web1");
				
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ Ã«»Ã«ÌÌ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "x2");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindDeltat = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— “„«‰");
	if FindDeltat ~= -1 and ListBox.GetItemData("unknowns", FindDeltat) == "Deltat" then
		if _t1 ~= nil and _t2 ~= nil then
			Binesh.CreateHTMLFile("Deltax = t<sub>2</sub>-t<sub>1</sub>")
			_Deltat = _t2 - _t1
			Binesh.AddToHTML("Deltat = ".._t2.."-".._t1.." &#8658; Deltat = ".._Deltat.." s")
			Binesh.AddToHTML("<br>") -- Create ENTER in HTML
			Web.Refresh("Web1");
				
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— “„«‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Deltat");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findt1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ “„«‰");
	if Findt1 ~= -1 and ListBox.GetItemData("unknowns", Findt1) == "t1" then
		if _Deltat ~= nil and _t2 ~= nil then
			Binesh.CreateHTMLFile("Deltat = t<sub>2</sub>-t<sub>1</sub>", "t<sub>1</sub> = t<sub>2</sub>-Deltat")
			_t1 = _t2-_Deltat
			Binesh.AddToHTML("t<sub>1</sub> = ".._t2.."-".._Deltat.." &#8658; t<sub>1</sub> = ".._t1.." s")
			Binesh.AddToHTML("<br>") -- Create ENTER in HTML
			Web.Refresh("Web1");
				
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ “„«‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "t1");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findt2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ “„«‰");
	if Findt2 ~= -1 and ListBox.GetItemData("unknowns", Findt2) == "t2" then
		if _Deltat ~= nil and _t1 ~= nil then
			Binesh.CreateHTMLFile("Deltat = t<sub>2</sub>-t<sub>1</sub>", "t<sub>2</sub> = Deltat+t<sub>1</sub>")
			_t2 = _t1+_Deltat
			Binesh.AddToHTML("t<sub>2</sub> = ".._Deltat.."+".._t1.." &#8658; t<sub>2</sub> = ".._t2.." s")
			Binesh.AddToHTML("<br>") -- Create ENTER in HTML
			Web.Refresh("Web1");
				
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ “„«‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "t2");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	--------------------------END {DELTA}--------------------------
	
	FindDeltat = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— “„«‰");
	if FindDeltat ~= -1 and ListBox.GetItemData("unknowns", FindDeltat) == "Deltat" and (ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— “„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ “„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ “„«‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltat") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t2") ~= -1) then
		if V2_Speed ~= nil and V1_Speed ~= nil and _Deltax ~= nil then
			Binesh.CreateHTMLFile("Deltax = <span>V<sub>1</sub>+V<sub>2</sub>/2</span>Deltat", "Deltat = <span>2Deltax/V<sub>1</sub>+V<sub>2</sub></span>")
			_Deltat = 2*_Deltax/(V1_Speed+V2_Speed)
			
			Binesh.AddToHTML("Deltat = <span>2*".._Deltax.."/"..V1_Speed.."+"..V2_Speed.."</span> &#8658; Deltat = ".._Deltat.." s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("V<sun>2</sub>: "..V2_Speed.." m/s", "V")
			Binesh.AddToHTML("V<sub>1</sub>: "..V1_Speed.." m/s", "V")
			Binesh.AddToHTML("Deltax: ".._Deltax.." m", "V")
			Binesh.AddToHTML("Deltat: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— “„«‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Deltat");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindV1_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ");
	if FindV1_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV1_Speed) == "V1" or ListBox.GetItemData("unknowns", FindV1_Speed) == "V0" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1 then
		if V2_Speed ~= nil and _Deltat ~= nil and _Deltax ~= nil then
			Binesh.CreateHTMLFile("Deltax = <span>V<sub>1</sub>+V<sub>2</sub>/2</span>Deltat", "V<sub>1</sub> = <span>2Deltax-V<sub>2</sub>Deltat/Deltat</span>")
			V1_Speed = _Deltax*2-V2_Speed*_Deltat/_Deltat
			
			Binesh.AddToHTML("V<sub>1</sub> = <span>".._Deltax.."*2-"..V2_Speed.."*".._Deltat.."/".._Deltat.."</span> &#8658; V<sub>1</sub> = "..V1_Speed.." m/s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("Deltat: ".._Deltat.." s", "V")
			Binesh.AddToHTML("V<sun>2</sub>: "..V2_Speed.." m/s", "V")
			Binesh.AddToHTML("Deltax: ".._Deltax.." m", "V")
			Binesh.AddToHTML("V<sub>1</sub>: ?", "V")
					
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V1");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindV2_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ”—⁄ ");
	if FindV2_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV2_Speed) == "V2" and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V2") ~= -1 then
		if V1_Speed ~= nil and _Deltat ~= nil and _Deltax ~= nil then
			Binesh.CreateHTMLFile("Deltax = <span>V<sub>1</sub>+V<sub>2</sub>/2</span>Deltat", "V<sub>2</sub> = <span>2*Deltax-V<sub>1</sub>Deltat/Deltat</span>")
			V2_Speed = _Deltax*2-V1_Speed*_Deltat/_Deltat
			
			Binesh.AddToHTML("V<sub>2</sub> = <span>".._Deltax.."*2-"..V1_Speed.."*".._Deltat.."/".._Deltat.."</span> &#8658; V<sub>2</sub> = "..V2_Speed.." m/s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("Deltat: ".._Deltat.." s", "V")
			Binesh.AddToHTML("V<sub>1</sub>: "..V1_Speed.." m/s", "V")
			Binesh.AddToHTML("Deltax: ".._Deltax.." m", "V")
			Binesh.AddToHTML("V<sun>2</sub>: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ”—⁄ ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V2");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindDeltax = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— Ã«»Ã«ÌÌ");
	if FindDeltax ~= -1 and ListBox.GetItemData("unknowns", FindDeltax) == "Deltax" and (ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— Ã«»Ã«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ Ã«»Ã«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ Ã«»Ã«ÌÌ") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltax") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "x1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "x2") ~= -1) then
		if V2_Speed ~= nil and _Deltat ~= nil and V1_Speed ~= nil then
			Binesh.CreateHTMLFile("Deltax = <span>V<sub>1</sub>+V<sub>2</sub>/2</span>Deltat")
			_Deltax = ((V1+V2)/2)*_Deltat
			
			Binesh.AddToHTML("Deltax = <span>"..V1.."+"..V2.."/2</span>*".._Deltat.." &#8658; Deltax = ".._Deltax.." m")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("Deltat: ".._Deltat.." s", "V")
			Binesh.AddToHTML("V<sun>2</sub>: "..V2_Speed.." m/s", "V")
			Binesh.AddToHTML("V<sub>1</sub>: "..V1_Speed.." m/s", "V")
			Binesh.AddToHTML("Deltax: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— Ã«»Ã«ÌÌ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Deltax");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end