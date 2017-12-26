function Binesh.F59()
	if P == nil and Pa == nil then
		Binesh.AddUnknown("›‘«—", "P")
	end
	
	if Ru == nil then
		Binesh.AddUnknown("çê«·Ì", "Ru")
	end
	
	if h == nil then
		Binesh.AddUnknown("«— ›«⁄", "h")
	end
	
	FindP = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›‘«—");
	if FindP ~= -1 and ListBox.GetItemData("unknowns", FindP) == "P" and ListBox.FindItem("Words", -1, LB_BYTEXT, "›‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1 then
		if Ru ~= nil and h ~= nil then
			Binesh.CreateHTMLFile("P = Rugh")
			P = Ru*Zarib.g*h
			
			Binesh.AddToHTML("Ru: "..Ru.." g/m<sup>3</sup>", "V")
			Binesh.AddToHTML("h: "..h.." m", "V")
			Binesh.AddToHTML("P: ?", "V")
			
			Binesh.AddToHTML("P = "..Ru.."*"..Zarib.g.."*"..h.." &#8658; P = "..P.." Pa")
			Web.Refresh("Web1");
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›‘«—");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "P");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindRu = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "çê«·Ì");
	if FindRu ~= -1 and ListBox.GetItemData("unknowns", FindRu) == "Ru" and ListBox.FindItem("Words", -1, LB_BYTEXT, "çê«·Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ru") ~= -1 then
		if P ~= nil and h ~= nil then
			Binesh.CreateHTMLFile("P = Ru*g*h", "Ru = <span>P/gh</span>")
			Ru = P/Zarib.g*h
			
			Binesh.AddToHTML("P: "..P.." Pa", "V")
			Binesh.AddToHTML("h: "..h.." m", "V")
			Binesh.AddToHTML("Ru: ?", "V")
			
			Binesh.AddToHTML("Ru = <span>"..P.."/"..Zarib.g.."*"..h.."</span> &#8658; Ru = "..Ru.." g/m<sup>3</sup>")
			Web.Refresh("Web1");
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "çê«·Ì");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Ru");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findh = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«— ›«⁄");
	if Findh ~= -1 and ListBox.GetItemData("unknowns", Findh) == "h" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«— ›«⁄") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "h") ~= -1 then
		if Ru ~= nil and P ~= nil then
			Binesh.CreateHTMLFile("P = Ru*g*h", "h = <span>P/gRu</span>")
			h = P/Zarib.g*Ru
			
			Binesh.AddToHTML("P: "..P.." Pa", "V")
			Binesh.AddToHTML("Ru: "..Ru.." g/m<sup>3</sup>", "V")
			Binesh.AddToHTML("h: ?", "V")
			
			Binesh.AddToHTML("h = <span>"..P.."/"..Zarib.g.."*"..Ru.."</span> &#8658; h = "..h.." m")
			Web.Refresh("Web1");
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«— ›«⁄");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "h");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end