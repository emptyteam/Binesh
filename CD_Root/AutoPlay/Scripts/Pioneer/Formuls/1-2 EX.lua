function Binesh.F1_2EX()
	if U == nil then
		Binesh.AddUnknown("«‰—éÌ", "U")
	end
	
	if m == nil and m_Ton == nil then
		Binesh.AddUnknown("Ã—„", "m")
	end
	
	if V_Speed == nil and V_Speed_mh == nil and V_Speed_miles == nil and V_Speed_mileh == nil then
		Binesh.AddUnknown("”—⁄ ", "V")
	end
	
	if K == nil then
		Binesh.AddUnknown("«‰—éÌ", "K")
	end
	
	if h == nil then
		Binesh.AddUnknown("«— ›«⁄", "h")
	end
	
	--[[
	
	- Name: Section 1
	- Function 1: U = 1/2 * m * V^2
	- Function 2: m = 2 * U / V^2
	- Function 3: V = Sqrt(2 * U / m)
	 
	]]--
	
	FindU = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ");
	if FindU ~= -1 and ListBox.GetItemData("unknowns", FindU) == "U" and String.Find(Input.GetText("Input1"), "«‰—éÌ Å «‰”Ì·", 1, false) ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1 then
		if m ~= nil and V_Speed ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span>mV<sup>2</sup>")
			U = 0.5*m*(V_Speed^2)
			
			Binesh.AddToHTML("U = <span>1/2</span>*"..m.."*"..V_Speed.."<sup>2</sup> &#8658; U = "..U.." J")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("m: "..m.." Kg", "V")
			Binesh.AddToHTML("V: "..V_Speed.." m/s", "V")
			Binesh.AddToHTML("U: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "U");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findm = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„");
	if Findm ~= -1 and ListBox.GetItemData("unknowns", Findm) == "m" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1 then
		if U ~= nil and V_Speed ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span>mV<sup>2</sup>", "m = <span>2U/V<sup>2</sup></span>")
			m = 2*U/(V_Speed^2)
			
			Binesh.AddToHTML("m = <span>2*"..U.."/"..V_Speed.."<sup>2</sup></span> &#8658; m = "..m.." Kg")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("U: "..U.." J", "V")
			Binesh.AddToHTML("V: "..V_Speed.." m/s", "V")
			Binesh.AddToHTML("m: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "m");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindV_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”—⁄ ");
	if FindV_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV_Speed) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
		if U ~= nil and m ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span>mV<sup>2</sup>", "V = sqrt(<span>2U/m</span>)")
			V_Speed = Math.Sqrt(2*U/m);
			
			Binesh.AddToHTML("V = sqrt(<span>2*"..U.."/"..m.."</span>) &#8658; V = "..V_Speed.." m/s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("U: "..U.." J", "V")
			Binesh.AddToHTML("m: "..m.." Kg", "V")
			Binesh.AddToHTML("V: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«— ›«⁄");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "h");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	--[[
	
	- Name: Section 2
	- Function 1: K = m * g * h
	- Function 2: m = K / g * h
	- Function 3: h = K / m * g
	 
	]]--
	
	FindK = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ");
	if FindK ~= -1 and ListBox.GetItemData("unknowns", FindK) == "K" and String.Find(Input.GetText("Input1"), "«‰—éÌ Ã‰»‘Ì", 1, false) ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "K") ~= -1 then
		if h ~= nil and m ~= nil then
			Binesh.CreateHTMLFile("K = mgh")
			U = m*9.8*h
			
			Binesh.AddToHTML("K = "..m.."*9.8*"..h.." &#8658; K = "..K.." J")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("m: "..m.." Kg", "V")
			Binesh.AddToHTML("h: "..h.." m", "V")
			Binesh.AddToHTML("K: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "K");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findm = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„");
	if Findm ~= -1 and ListBox.GetItemData("unknowns", Findm) == "m" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1 then
		if K ~= nil and h ~= nil then
			Binesh.CreateHTMLFile("K = mgh", "m = <span>K/gh</span>")
			m = K/(9.8*h)
			
			Binesh.AddToHTML("m = <span>"..K.."/9.8*"..h.."</span> &#8658; m = "..m.." Kg")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("K: "..K.." J", "V")
			Binesh.AddToHTML("h: "..h.." m", "V")
			Binesh.AddToHTML("m: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "m");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findh = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«— ›«⁄");
	if Findh ~= -1 and ListBox.GetItemData("unknowns", Findh) == "h" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«— ›«⁄") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "h") ~= -1 then
		if K ~= nil and m ~= nil then
			Binesh.CreateHTMLFile("K = mgh", "h = <span>K/mg</span>")
			h = K/(m*9.8)
			
			Binesh.AddToHTML("h = <span>"..K.."/"..m.."*9.8</span> &#8658; h = "..h.." m")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("m: "..m.." Kg", "V")
			Binesh.AddToHTML("K: "..K.." J", "V")
			Binesh.AddToHTML("h: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«— ›«⁄");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "h");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	--[[
	
	- Name: Section 3
	- Function 1: h = V^2 / 2 * g
	- Function 2: V = sqrt(2 * g * h)
	 
	]]--
	
	Findh = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«— ›«⁄");
	if Findh ~= -1 and ListBox.GetItemData("unknowns", Findh) == "h" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«— ›«⁄") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "h") ~= -1 then
		if V_Speed ~= nil then
			Binesh.CreateHTMLFile("<strike>m</strike>gh = <span>1/2</span> <strike>m</strike>V<sup>2</sup>", "gh = <span>1/2</span>V<sup>2</sup>")
			Binesh.AddToHTML("h = <span>V<sup>2</sup>/2g</span> &#8658; ")
			h = (V_Speed^2)/(2*9.8)
			
			Binesh.AddToHTML("h = <span>"..V_Speed.."<sup>2</sup>/2*9.8</span> &#8658; h = "..h.." m")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("V: "..V_Speed.." m/s", "V")
			Binesh.AddToHTML("h: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«— ›«⁄");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "h");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindV_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”—⁄ ");
	if FindV_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV_Speed) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
		if h ~= nil then
			Binesh.CreateHTMLFile("<strike>m</strike>gh = <span>1/2</span> <strike>m</strike>V<sup>2</sup>", "gh = <span>1/2</span>V<sup>2</sup>")
			Binesh.AddToHTML("V = sqrt(2gh) &#8658; ")
			V_Speed = Math.Sqrt(2*9.8*h)
			
			Binesh.AddToHTML("V = sqrt(2*9.8*"..h..") &#8658; V = "..V_Speed.." m/s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("h: "..h.." m", "V")
			Binesh.AddToHTML("V: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«— ›«⁄");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "h");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end