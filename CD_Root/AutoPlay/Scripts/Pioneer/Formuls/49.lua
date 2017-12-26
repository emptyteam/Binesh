function Binesh.F49()
	if W == nil then
		Binesh.AddUnknown("ò«—", "W")
	end
	
	if F == nil then
		Binesh.AddUnknown("‰Ì—Ê", "F")
	end
	
	if d_Distance == nil then
		Binesh.AddUnknown("Ã«»Ã«ÌÌ", "d")
	end
	
	if Teta == nil then
		Binesh.AddUnknown("“«ÊÌÂ", "Teta")
	end
	
	if Teta_Radian ~= nil then
		Binesh.CreateHTMLFile("<span>R/Pi</span> = <span>D/180</span>", "D = <span>180R/Pi</span>")
		Teta = Math.RadToDeg(Teta_Radian)
		Binesh.AddToHTML("D<sub>Teta</sub> = <span>180*"..Teta_Radian.."/"..Zarib.Pi.."</span> &#8658; D<sub>Teta</sub> = "..Teta.."<sup>o</sup>")
	end
	
	FindW = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«—");
	if FindW ~= -1 and ListBox.GetItemData("unknowns", FindW) == "W" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ò«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1 then
		if F ~= nil and d_Distance ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("W<sub>F</sub> = FdcosTeta")
			
			W = F*d_Distance*Math.Cos(Math.Rad(Teta))
			
			Binesh.AddToHTML("W<sub>F</sub> = "..F.."*"..d_Distance.."*cos"..Teta.." &#8658; W<sub>F</sub> = "..W.." J")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("F: "..N.." N", "V")
			Binesh.AddToHTML("d: "..d_Distance.." m", "V")
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("W: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«—");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "W");
			if unknownPersianindex ~= unknownSymbolindex and unknownSymbolindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindF = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê");
	if FindF ~= -1 and ListBox.GetItemData("unknowns", FindF) == "F" and ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1 then
		if W ~= nil and d_Distance ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("W<sub>F</sub> = FdcosTeta", "F = <span>W<sub>F</sub>/dcosTeta</span>")
			
			F = W/(d_Distance*Math.Cos(Math.Rad(Teta)))
			
			Binesh.AddToHTML("F = <span>"..W.."/"..d_Distance.."*cos"..Teta.."</span> &#8658; F = "..F.." N")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("W: "..W.." N", "V")
			Binesh.AddToHTML("d: "..d_Distance.." m", "V")
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("F: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "F");
			if unknownPersianindex ~= unknownSymbolindex and unknownSymbolindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findd_Distance = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã«»Ã«ÌÌ");
	if Findd_Distance ~= -1 and ListBox.GetItemData("unknowns", Findd_Distance) == "d" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã«»Ã«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "d") ~= -1 then
		if W ~= nil and F ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("W<sub>F</sub> = F*d*cosTeta", "d = <span>W<sub>F</sub>/F*cosTeta</span>")
			
			d_Distance = W/(F*Math.Cos(Math.Rad(Teta)))
			
			Binesh.AddToHTML("d = <span>"..W.."/"..F.."*cos"..Teta.."</span> &#8658; d = "..d_Distance.." m")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("W: "..W.." N", "V")
			Binesh.AddToHTML("F: "..F.." N", "V")
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("d: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã«»Ã«ÌÌ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "d");
			if unknownPersianindex ~= unknownSymbolindex and unknownSymbolindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindTeta = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ");
	if FindTeta ~= -1 and ListBox.GetItemData("unknowns", FindTeta) == "Teta" or ListBox.GetItemData("unknowns", FindTeta) == "Alpha" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta") ~= -1 then
		if W ~= nil and d_Distance ~= nil and F ~= nil then
			Binesh.CreateHTMLFile("W<sub>F</sub> = FdcosTeta", "cosTeta = <span>W<sub>F</sub>/Fd</span>")
			
			CosTeta = W/(d_Distance*F)
			Teta_Radian = Math.Acos(Math.Acos(Math.Cos(CosTeta)))
			Teta = Math.RadToDeg(Teta_Radian)
			
			Binesh.AddToHTML("cosTeta = <span>"..W.."/"..d_Distance.."*"..F.."</span> &#8658; cosTeta = "..CosTeta.." &#8658; Teta<sub>Radian</sub> = "..Teta_Radian.." &#8658; Teta = "..Teta.."<sup>o</sup>")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("W: "..W.." N", "V")
			Binesh.AddToHTML("F: "..N.." N", "V")
			Binesh.AddToHTML("d: "..d_Distance.." m", "V")
			Binesh.AddToHTML("Teta: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Teta");
			if unknownPersianindex ~= unknownSymbolindex and unknownSymbolindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end