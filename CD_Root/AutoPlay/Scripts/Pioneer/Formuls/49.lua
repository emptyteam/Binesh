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


FindW = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«—")
FindF = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê");
Findd = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã«»Ã«ÌÌ")
FindTeta = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ")

if Teta_Radian ~= nil then
	Binesh.CreateHTMLFile("<span>R/Pi</span> = <span>D/180</span>", "D = <span>R*180/Pi</span>")
	Teta = Math.RadToDeg(Teta_Radian)
	Binesh.AddToHTML("D<sub>Teta</sub> = <span>"..Teta_Radian.."*180/"..Zarib.Pi.."</span> &#8658; D<sub>Teta</sub> = "..Teta.."<sup>o</sup>")
end

if FindW ~= -1 and ListBox.GetItemData("unknowns", FindW) == "W" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«— ›«⁄") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "h") ~= -1 then
	if F ~= nil and d ~= nil and Teta ~= nil then
		Binesh.CreateHTMLFile("W<sub>F</sub> = F*d*cosTeta")
		
		W = F*d*Math.Cos(Math.Rad(Teta))
		
		Binesh.AddToHTML("W<sub>F</sub> = "..F.."*"..d.."*cos"..Teta.." &#8658; W<sub>F</sub> = "..W.."J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«—");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "W");
		if unknownPersianindex ~= unknownSymbolindex and unknownSymbolindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindF ~= -1 and ListBox.GetItemData("unknowns", FindF) == "F" and ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1 then
	if W ~= nil and d ~= nil and Teta ~= nil then
		Binesh.CreateHTMLFile("W<sub>F</sub> = F*d*cosTeta", "F = <span>W<sub>F</sub>/d*cosTeta</span>")
		
		F = W/d*Math.Cos(Math.Rad(Teta))
		
		Binesh.AddToHTML("F = <span>"..W.."/"..d.."*cos"..Teta.."</span> &#8658; F = "..F.."N")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "F");
		if unknownPersianindex ~= unknownSymbolindex and unknownSymbolindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findd ~= -1 and ListBox.GetItemData("unknowns", Findd) == "d" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã«»Ã«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "d") ~= -1 then
	if W ~= nil and F ~= nil and Teta ~= nil then
		Binesh.CreateHTMLFile("W<sub>F</sub> = F*d*cosTeta", "d = <span>W<sub>F</sub>/F*cosTeta</span>")
		d = W/F*Math.Cos(Math.Rad(Teta))
		
		Binesh.AddToHTML("d = <span>"..W.."/"..F.."*cos"..Teta.."</span> &#8658; d = "..d.."m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã«»Ã«ÌÌ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "d");
		if unknownPersianindex ~= unknownSymbolindex and unknownSymbolindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindTeta ~= -1 and ListBox.GetItemData("unknowns", FindTeta) == "Teta" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta") ~= -1 then
	if W ~= nil and d ~= nil and F ~= nil then
		Binesh.CreateHTMLFile("W<sub>F</sub> = F*d*cosTeta", "cosTeta = W<sub>F</sub>/d*F")
		
		CosTeta = Math.Cos(W/d*F)
		
		Binesh.AddToHTML("cosTeta = "..W.."/"..d.."*"..F.." &#8658; cosTeta = "..CosTeta.." &#8658; Teta = "..Math.Acos(CosTeta).."<sup>o</sup>")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Teta");
		if unknownPersianindex ~= unknownSymbolindex and unknownSymbolindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end