function Binesh.F1()
	if K == nil then
		Binesh.AddUnknown("ÇäÑŽí", "K")
	end
	
	if m == nil and m_Ton == nil then
		Binesh.AddUnknown("ÌÑã", "m")
	end
	
	if V_Speed == nil and V_Speed_mh == nil and V_Speed_miles == nil and V_Speed_mileh == nil then
		Binesh.AddUnknown("ÓÑÚÊ", "V")
	end
	
	if m_Ton ~= nil then
		m = m_Ton * 1000
		Binesh.CreateHTMLFile("m<sub>Kg</sub> = m<sub>Ton</sub>*10<sup>3</sup>", "m<sub>Kg</sub> = "..m_Ton.."*10<sup>3</sup>")
		Binesh.AddToHTML("m<sub>Kg</sub> = "..m.." Kg");
		Binesh.AddToHTML("<br>");
	end
	
	if V_Speed_mh ~= nil then
		V_Speed = V_Speed_mh/3600
		Binesh.CreateHTMLFile("V<sub>m/s</sub> = <span>V<sub>m/h</sub>/3.6</span>", "V<sub>m/s</sub> = <span>"..V_Speed_mh*10^(-3).."/3.6</span>")
		Binesh.AddToHTML("V<sub>m/s</sub> = "..V_Speed.." m/s");
		Binesh.AddToHTML("<br>");
	end
	
	if V_Speed_miles ~= nil then
		V_Speed = V_Speed_miles*1609.3
		Binesh.CreateHTMLFile("V<sub>m/s</sub> = V<sub>mile/s</sub>*1609.3", "V<sub>m/s</sub> = "..V_Speed_miles.."*1609.3")
		Binesh.AddToHTML("V<sub>m/s></sub> = "..V_Speed.." m/s");
		Binesh.AddToHTML("<br>");
	end
	
	if V_Speed_mileh ~= nil then
		V_Speed = V_Speed_mileh*1609.3/3600
		Binesh.CreateHTMLFile("V<sub>m/s</sub> = V<sub>mile/h</sub>*<span>1609.3/3.6</span>", "V<sub>m/s</sub> = "..V_Speed_miles*10^(-3).."*<span>1609.3/3.6</span>")
		Binesh.AddToHTML("V<sub>m/s></sub> = "..V_Speed.." m/s");
		Binesh.AddToHTML("<br>");
	end
	
	FindK = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÇäÑŽí");
	if FindK ~= -1 and ListBox.GetItemData("unknowns", FindK) == "K" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÇäÑŽí") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "K") ~= -1 then
		if V_Speed ~= nil and m ~= nil then
			Binesh.CreateHTMLFile("K = <span>1/2</span>mV<sup>2</sup>")
			K = 0.5*(m*(V_Speed^2))
			
			Binesh.AddToHTML("K = <span>1/2</span>*"..m.."*"..V_Speed.."<sup>2</sup> &#8658; K = "..K.." J")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("V: "..V_Speed.." m/s", "V")
			Binesh.AddToHTML("m: "..m.." Kg", "V")
			Binesh.AddToHTML("K: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÇäÑŽí");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "K");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findm = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÌÑã");
	if Findm ~= -1 and ListBox.GetItemData("unknowns", Findm) == "m" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÌÑã") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1 then
		if K ~= nil and V_Speed ~= nil then
			Binesh.CreateHTMLFile("K = <span>1/2</span>mV<sup>2</sup>", "m = <span>2K/V<sup>2</sup></span>")
			m = (2*K)/(V_Speed^2)
			
			Binesh.AddToHTML("m = <span>2*"..K.."/"..V_Speed.."<sup>2</sup></span> &#8658; m = "..m.." Kg")
			Web.Refresh("Web1");
					
			Binesh.AddToHTML("K: "..K.." J", "V")
			Binesh.AddToHTML("V: "..V_Speed.." m/s", "V")
			Binesh.AddToHTML("m: ?", "V")
	
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÌÑã");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "m");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindV_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÓÑÚÊ");
	if FindV_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV_Speed) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÓÑÚÊ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
		if K ~= nil and m ~= nil then
			Binesh.CreateHTMLFile("K = <span>1/2</span>mV<sup>2</sup>", "V = Sqrt(<span>2K/m</span>)")
			V_Speed = Math.Sqrt(2*K/m)
			
			Binesh.AddToHTML("V = Sqrt(<span>2*"..K.."/"..m.."</span>) &#8658; V = "..V_Speed.." m/s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("m: "..m.." Kg", "V")
			Binesh.AddToHTML("K: "..K.." J", "V")
			Binesh.AddToHTML("V: ?", "V")
	
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÓÑÚÊ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end