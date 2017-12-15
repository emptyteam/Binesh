if V_Speed == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÓÑÚÊ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'V' then
		ListBox.AddItem("unknowns", "ÓÑÚÊ", "V");
	end
end


if L == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Øæá")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'L' then
		ListBox.AddItem("unknowns", "Øæá", "L");
	end
end

if Alpha == nil and Alpha_Radian == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÒÇæíå")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Alpha' then
		ListBox.AddItem("unknowns", "ÒÇæíå", "Alpha");
	end
end

if Alpha_Radian ~= nil then
	Binesh.CreateHTMLFile("<span>R/Pi</span> = <span>D/180</span>", "D = <span>R*180/Pi</span>")
	Alpha = Math.RadToDeg(Alpha_Radian)
	Binesh.AddToHTML("D<sub>Alpha</sub> = <span>"..Alpha_Radian.."*180/"..Zarib.Pi.."</span> &#8658; D<sub>Alpha</sub> = "..Alpha.."<sup>o</sup>")
end

FindV_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÓÑÚÊ");
if FindV_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV_Speed) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÓÑÚÊ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
	if L ~= nil and Alpha ~= nil then
		Binesh.CreateHTMLFile("V = Sqrt(2gL(1-cosAlpha))")
		
		
		V_Speed = Math.Sqrt(2*9.8*L*(1-Math.Cos(Math.Rad(Alpha))))
	
		Binesh.AddToHTML("V = Sqrt(2*9.8*"..L.."*(1-cos"..Alpha..")) &#8658; V = "..V_Speed.." m/s")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÓÑÚÊ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
		if unknownPersianindex == unknownSymbolindex then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindL = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Øæá");
if FindL ~= -1 and ListBox.GetItemData("unknowns", FindL) == "L" or ListBox.GetItemData("unknowns", FindL) == "l" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Øæá") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L") ~= -1 then
	if V_Speed ~= nil and Alpha ~= nil then
		Binesh.CreateHTMLFile("V = Sqrt(2gL(1-cosAlpha))", "L = -<span>V<sup>2</sup>/2g(cosAlpha-1)</span>")
		
		L = -1*(V_Speed^2/(2*9.8*(Math.Cos(Math.Rad(Alpha))-1)))
		
		Binesh.AddToHTML("L = -<span>"..V_Speed.."<sup>2</sup>/2*9.8*cos"..Alpha.."-1</span> &#8658; L = "..L.." m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Øæá");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "L");
		if unknownPersianindex == unknownSymbolindex then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindAlpha = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÒÇæíå");
if FindAlpha ~= -1 and ListBox.GetItemData("unknowns", FindAlpha) == "Alpha" or ListBox.GetItemData("unknowns", FindAlpha) == "Teta" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÒÇæíå") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Alpha") ~= -1 then
	if V_Speed ~= nil and L ~= nil then
		Binesh.CreateHTMLFile("V = Sqrt(2gL(1-cosAlpha))", "cosAlpha = <span>2gL-V<sup>2</sup>/2gL</span>")
		
		CosAlpha = Math.Cos(1-((V_Speed^2)/(2*9.8*L)))
		
		Binesh.AddToHTML("cosAlpha = <span>2*9.8-"..V_Speed.."<sup>2</sup>/2*9.8*"..L.."</span> &#8658; cosAlpha = "..CosAlpha.." &#8658; Alpha = "..Math.Acos(CosAlpha).."<sup>o</sup>")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÒÇæíå");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Alpha");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end