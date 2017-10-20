if F == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'F' then
		ListBox.AddItem("unknowns", "‰Ì—Ê", "F");
	end
end

if q == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'q' then
		ListBox.AddItem("unknowns", "–—Â", "q");
	end
end

if V_Speed == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”—⁄ ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'V' then
		ListBox.AddItem("unknowns", "”—⁄ ", "V");
	end
end

if B == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'B' then
		ListBox.AddItem("unknowns", "„Ìœ«‰", "B");
	end
end

if Teta == nil and Teta_Radian ~= nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Teta' then
		ListBox.AddItem("unknowns", "“«ÊÌÂ", "Teta");
	end
end

FindPoroton = ListBox.FindItem("Words", -1, LB_BYTEXT, "Å—Ê Ê‰");
FindElectron = ListBox.FindItem("Words", -1, LB_BYTEXT, "«·ò —Ê‰");

if FindElectron ~= -1 and q ~= nil then
	q = -q
end

FindF = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê")
Findq = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â");
FindV_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”—⁄ ")
FindB = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰")
FindTeta = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ")

if Teta_Radian ~= nil then
	Binesh.CreateHTMLFile("<span>R/Pi</span> = <span>D/180</span>", "D = <span>R*180/Pi</span>")
	Teta = Math.RadToDeg(Teta_Radian)
	Binesh.AddToHTML("D<sub>Teta</sub> = <span>"..Teta_Radian.."*180/"..Zarib.Pi.."</span> &#8658; D<sub>Teta</sub> = "..Teta.."<sup>o</sup>")
end

if FindF ~= -1 and ListBox.GetItemData("unknowns", FindF) == "F" and ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1 then
	if q ~= nil and V_Speed ~= nil and B ~= nil and Teta ~= nil then
		Binesh.CreateHTMLFile("F = q*V*B*sinTeta")
		F = q*V_Speed*B*Math.Sin(Math.Rad(Teta))
		
		Binesh.AddToHTML("F = "..q.."*"..V_Speed.."*"..B.."*sin"..Teta.." &#8658; F = "..F.."N")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "F");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findq ~= -1 and ListBox.GetItemData("unknowns", Findq) == "q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
	if F ~= nil and V_Speed ~= nil and B ~= nil and Teta ~= nil then
		Binesh.CreateHTMLFile("F = q*V*B*sinTeta", "q = <span>F/V*B*sinTeta</span>")
		q = F/V_Speed*B*Math.Sin(Math.Rad(Teta))
		
		Binesh.AddToHTML("q = <span>"..F.."/"..V_Speed.."*"..B.."*sin"..Teta.."</span> &#8658; q = "..q.."C")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindV_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV_Speed) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
	if F ~= nil and q ~= nil and B ~= nil and Teta ~= nil then
		Binesh.CreateHTMLFile("F = q*V*B*sinTeta", "V = <span>F/q*B*sinTeta</span>")
		V_Speed = F/q*B*Math.Sin(Math.Rad(Teta))
		
		Binesh.AddToHTML("V = <span>"..F.."/"..q.."*"..B.."*sin"..Teta.."</span> &#8658; V = "..V_Speed.."m/s")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”—⁄ ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindB ~= -1 and ListBox.GetItemData("unknowns", FindB) == "B" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1 then
	if F ~= nil and q ~= nil and V_Speed ~= nil and Teta ~= nil then
		Binesh.CreateHTMLFile("F = q*V*B*sinTeta", "B = <span>F/q*V*sinTeta</span>")
		
		B = F/q*V_Speed*Math.Sin(Math.Rad(Teta))
		
		Binesh.AddToHTML("B = <span>"..F.."/"..q.."*"..V_Speed.."*sin"..Teta.."</span> &#8658; B = "..B.."T")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "B");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindTeta ~= -1 and ListBox.GetItemData("unknowns", FindTeta) == "Teta" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta") ~= -1 then
	if F ~= nil and q ~= nil and V_Speed ~= nil and B ~= nil then
		Binesh.CreateHTMLFile("F = q*V*B*sinTeta", "sinTeta = <span>F/q*V*B</span>")
		
		Teta = F/q*V*B
		
		Binesh.AddToHTML("sinTeta = <span>"..F.."/"..q.."*"..V_Speed.."*"..B.."</span> &#8658; sinTeta = "..Teta.." &#8658; Teta = "..Math.Asin(Teta).."<sup>o</sup>")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Ieta");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end