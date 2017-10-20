if K == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ Ã‰»‘Ì")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'K' then
		ListBox.AddItem("unknowns", "«‰—éÌ Ã‰»‘Ì", "K");
	end
end

if m == nil and m_Ton == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'm' then
		ListBox.AddItem("unknowns", "Ã—„", "m");
	end
end

if V_Speed == nil and V_Speed_mh == nil and V_Speed_miles == nil and V_Speed_mileh == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”—⁄ ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'V' then
		ListBox.AddItem("unknowns", "”—⁄ ", "V");
	end
end

FindK = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ Ã‰»‘Ì");
Findm = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„");
FindV_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”—⁄ ");

if m_Ton ~= nil then
	m = m_Ton * 1000
	Binesh.CreateHTMLFile('m<sub>Kg</sub> = m<sub>Ton</sub>*10<sup>3</sup>', 'm<sub>Kg</sub> = '..m_Ton..'*10<sup>3</sup>')
	Binesh.AddToHTML('m<sub>Kg</sub> = '..m..'Kg');
	Binesh.AddToHTML('<br>');
end

if V_Speed_mh ~= nil then
	V_Speed = V_Speed_mh/3.6
	Binesh.CreateHTMLFile("V<sub>m/s</sub> = <span>V<sub>m/h</sub>/3.6</span>", "V<sub>m/s</sub> = <span>"..V_Speed_mh.."/3.6</span>")
	Binesh.AddToHTML("V<sub>m/s</sub> = "..V_Speed.."m/s");
	Binesh.AddToHTML('<br>');
end

if V_Speed_miles ~= nil then
	V_Speed = V_Speed_miles*1609.3
	Binesh.CreateHTMLFile("V<sub>m/s</sub> = V<sub>mile/s</sub>*1609.3", "V<sub>m/s</sub> = "..V_Speed_miles.."*1609.3")
	Binesh.AddToHTML("V<sub>m/s></sub> = "..V_Speed.."m/s");
	Binesh.AddToHTML('<br>');
end

if V_Speed_mileh ~= nil then
	V_Speed = V_Speed_mileh*1609.3/3.6
	Binesh.CreateHTMLFile("V<sub>m/s</sub> = V<sub>mile/h</sub>*<span>1609.3/3.6</span>", "V<sub>m/s</sub> = "..V_Speed_miles.."*<span>1609.3/3.6</span>")
	Binesh.AddToHTML("V<sub>m/s></sub> = "..V_Speed.."m/s");
	Binesh.AddToHTML('<br>');
end

if FindK ~= -1 and ListBox.GetItemData("unknowns", FindK) == "K" and String.Find(InputQuiz, "«‰—éÌ Ã‰»‘Ì", 1, false) and ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ Ã‰»‘") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "K") ~= -1 then
	if V_Speed ~= nil and m ~= nil then
		Binesh.CreateHTMLFile("K = <span>1/2</span>mV<sup>2</sup>")
		K = 0.5*(m*(V_Speed^2))
		
		Binesh.AddToHTML("K = <span>1/2</span>*"..m.."*"..V_Speed.."<sup>2</sup> &#8658; K = "..K.." J")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("m = "..m.." Kg" ,"V")
		Binesh.AddToHTML("V = "..V.." m/s" ,"V")
		Binesh.AddToHTML("K = "..K.." J" ,"V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ Ã‰»‘Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "K");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findm ~= -1 and ListBox.GetItemData("unknowns", Findm) == "m" and String.Find(InputQuiz, "Ã—„", 1, false) and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1 then
	if K ~= nil and V_Speed ~= nil then
		Binesh.CreateHTMLFile("K = <span>1/2</span>mV<sup>2</sup>", "m = <span>2K/V<sup>2</sup></span>")
		m = (2*K)/(V_Speed^2)
		
		Binesh.AddToHTML("m = <span>2*"..K.."/"..V_Speed.."<sup>2</sup></span> &#8658; m = "..m.." Kg")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("K = "..K.." J" ,"V")
		Binesh.AddToHTML("V = "..V.." m/s" ,"V")
		Binesh.AddToHTML("m = "..m.." Kg" ,"V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "m");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindV_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV_Speed) == "V" and String.Find(InputQuiz, "”—⁄ ", 1, false) and ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
	if K ~= nil and m ~= nil then
		Binesh.CreateHTMLFile("K = <span>1/2</span>mV<sup>2</sup>", "V = Sqrt(<span>2K/m</span>)")
		V_Speed = Math.Sqrt(2*K/m)
		
		Binesh.AddToHTML("V = Sqrt(<span>2*"..K.."/"..m.."</span>) &#8658; V = "..V_Speed.."m/s")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("K = "..K.." J" ,"V")
		Binesh.AddToHTML("m = "..m.." Kg" ,"V")
		Binesh.AddToHTML("V = "..V.." m/s" ,"V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”—⁄ ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end