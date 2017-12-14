if W == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«—")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'W' then
		ListBox.AddItem("unknowns", "ò«—", "W");
	end
end

if F == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'F' then
		ListBox.AddItem("unknowns", "‰Ì—Ê", "F");
	end
end

if Teta == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Teta' then
		ListBox.AddItem("unknowns", "“«ÊÌÂ", "Teta");
	end
end

if Teta_Radian ~= nil then
	Binesh.CreateHTMLFile("<span>R/Pi</span> = <span>D/180</span>", "D = <span>R*180/Pi</span>")
	Teta = Math.RadToDeg(Teta_Radian)
	Binesh.AddToHTML("D<sub>Teta</sub> = <span>"..Teta_Radian.."*180/"..Zarib.Pi.."</span> &#8658; D<sub>Teta</sub> = "..Teta.."<sup>o</sup>")
end

FindW = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«—");
if FindW ~= -1 and ListBox.GetItemData("unknowns", FindW) == "W" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ò«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1 then
	if F ~= nil and d ~= nil and Teta ~= nil then
		Binesh.CreateHTMLFile("W<sub>F</sub> = FdcosTeta")
		
		W = F*d*Math.Cos(Math.Rad(Teta))
		
		Binesh.AddToHTML("W<sub>F</sub> = "..F.."*"..d.."*cos"..Teta.." &#8658; W<sub>F</sub> = "..W.." J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«—");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "W");
		if unknownPersianindex ~= unknownSymbolindex and unknownSymbolindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindF = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê");
if FindF ~= -1 and ListBox.GetItemData("unknowns", FindF) == "F" and ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1 then
	if W ~= nil and d ~= nil and Teta ~= nil then
		Binesh.CreateHTMLFile("W<sub>F</sub> = FdcosTeta", "F = <span>W<sub>F</sub>/dcosTeta</span>")
		
		F = W/(d*Math.Cos(Math.Rad(Teta)))
		
		Binesh.AddToHTML("F = <span>"..W.."/"..d.."*cos"..Teta.."</span> &#8658; F = "..F.." N")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "F");
		if unknownPersianindex ~= unknownSymbolindex and unknownSymbolindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findd = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã«»Ã«ÌÌ");
if Findd ~= -1 and ListBox.GetItemData("unknowns", Findd) == "d" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã«»Ã«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "d") ~= -1 then
	if W ~= nil and F ~= nil and Teta ~= nil then
		Binesh.CreateHTMLFile("W<sub>F</sub> = F*d*cosTeta", "d = <span>W<sub>F</sub>/F*cosTeta</span>")
		
		d = W/(F*Math.Cos(Math.Rad(Teta)))
		
		Binesh.AddToHTML("d = <span>"..W.."/"..F.."*cos"..Teta.."</span> &#8658; d = "..d.." m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã«»Ã«ÌÌ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "d");
		if unknownPersianindex ~= unknownSymbolindex and unknownSymbolindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindTeta = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ");
if FindTeta ~= -1 and ListBox.GetItemData("unknowns", FindTeta) == "Teta" or ListBox.GetItemData("unknowns", FindTeta) == "Alpha" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta") ~= -1 then
	if W ~= nil and d ~= nil and F ~= nil then
		Binesh.CreateHTMLFile("W<sub>F</sub> = FdcosTeta", "cosTeta = W<sub>F</sub>/dF")
		
		CosTeta = Math.Cos(W/(d*F))
		Teta = Math.Acos(CosTeta)
		
		Binesh.AddToHTML("cosTeta = "..W.."/"..d.."*"..F.." &#8658; cosTeta = "..CosTeta.." &#8658; Teta = "..Teta.."<sup>o</sup>")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Teta");
		if unknownPersianindex ~= unknownSymbolindex and unknownSymbolindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end