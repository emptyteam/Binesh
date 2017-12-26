function Binesh.F55()
	if P_Power_Bar == nil then
		Binesh.AddUnknown(" Ê«‰ „ Ê”ÿ", "PBar")
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
	FindDeltat = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— “„«‰");
	if FindDeltat ~= -1 and ListBox.GetItemData("unknowns", FindDeltat) == "Deltat" then
		if _t1 ~= nil and _t2 ~= nil then
			Binesh.CreateHTMLFile("Deltat = t<sub>2</sub>-t<sub>1</sub>")
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
	--------------------------END {DELTA}-------------------------
	
	FindP_Power_Bar = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " Ê«‰ „ Ê”ÿ");
	if FindP_Power_Bar ~= -1 and ListBox.GetItemData("unknowns", FindP_Power_Bar) == "PBar" and ListBox.FindItem("Words", -1, LB_BYTEXT, " Ê«‰ „ Ê”ÿ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "PBar") ~= -1 then
		if W ~= nil and _Deltat ~= nil then
			Binesh.CreateHTMLFile("P = <span>W/Deltat</span>")
			P_Power_Bar = W/_Deltat
			
			Binesh.AddToHTML("P = <span>"..W.."/".._Deltat.."</span> &#8658; P = "..P_Power_Bar.." W")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("W: "..W.." J", "V")
			Binesh.AddToHTML("Deltat: ".._Deltat.." ", "V")
			Binesh.AddToHTML("P: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " Ê«‰ „ Ê”ÿ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "PBar");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindW = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ «·ò —ÌòÌ");
	if FindW ~= -1 and ListBox.GetItemData("unknowns", FindW) == "W" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ò«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1 then
		if P_Power_Bar ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("P = <span>W/Deltat</span>", "W = Pt")
			W = P_Power_Bar*t
			
			Binesh.AddToHTML("W = "..P_Power_Bar.."*"..t.." &#8658; W = "..W.." J")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("P: "..P.." Pa", "V")
			Binesh.AddToHTML("Deltat: ".._Deltat.." ", "V")
			Binesh.AddToHTML("W: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ «·ò —ÌòÌ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "W");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindDeltat = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— “„«‰");
	if Findt ~= -1 and ListBox.GetItemData("unknowns", Findt) == "t" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1 then
		if P_Power_Bar ~= nil and W ~= nil then
			Binesh.CreateHTMLFile("P = <span>W/t</span>", "Deltat = <span>W/P</span>")
			_Deltat = W/P_Power_Bar
			
			Binesh.AddToHTML("Deltat = <span>"..W.."/"..P_Power_Bar.."</span> &#8658; Deltat = ".._Deltat.." s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("P: "..P.." Pa", "V")
			Binesh.AddToHTML("W: "..W.." J", "V")
			Binesh.AddToHTML("Deltat: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— “„«‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Deltat");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end