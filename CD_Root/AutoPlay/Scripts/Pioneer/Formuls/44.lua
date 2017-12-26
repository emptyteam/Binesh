function Binesh.F44()
	if F == nil then
		Binesh.AddUnknown("‰Ì—Ê", "F")
	end
	
	if m == nil then
		Binesh.AddUnknown("Ã—„", "m")
	end
	
	if a == nil then
		Binesh.AddUnknown("‘ «»", "a")
	end
	
	FindF = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê");
	if FindF ~= -1 and ListBox.GetItemData("unknowns", FindF) == "F" and ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1 then
		if m ~= nil and a ~= nil then
			Binesh.CreateHTMLFile("F = ma")
			F = (m)*(a)
			
			Binesh.AddToHTML("F = "..m.."*"..a.." &#8658; F = "..F.." N")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("m: "..m.." Kg", "V")
			Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("F: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "F");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findm = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„");
	if Findm ~= -1 and ListBox.GetItemData("unknowns", Findm) == "m" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1 then
		if F ~= nil and a ~= nil then
			Binesh.CreateHTMLFile("F = ma", "m = <span>F/a</span>")
			m = (F)/(a)
			
			Binesh.AddToHTML("m = <span>"..F.."/"..a.."</span> &#8658; m = "..m.." Kg")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("F: "..F.." N", "V")
			Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("m: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "m");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Finda = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‘ «»");
	if Finda ~= -1 and ListBox.GetItemData("unknowns", Finda) == "a" and ListBox.FindItem("Words", -1, LB_BYTEXT, "‘ «»") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "a") ~= -1 then
		if F ~= nil and m ~= nil then
			Binesh.CreateHTMLFile("F = ma", "a = <span>F/m</span>")
			a = (F)/(m)
			
			Binesh.AddToHTML("a = <span>"..F.."/"..m.."</span> &#8658; a = "..a.." m/s<sup>2</sup>")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("F: "..F.." N", "V")
			Binesh.AddToHTML("m: "..m.." Kg", "V")
			Binesh.AddToHTML("a: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‘ «»");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "a");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end