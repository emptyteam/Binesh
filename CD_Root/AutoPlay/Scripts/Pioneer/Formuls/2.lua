function Binesh.F2()
	if U == nil then
		Binesh.AddUnknown("ÇäÑŽí", "U")
	end
	
	if m == nil then
		Binesh.AddUnknown("ÌÑã", "m")
	end
	
	if h == nil then
		Binesh.AddUnknown("ÇÑÊÝÇÚ", "h")
	end
	
	FindU = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÇäÑŽí");
	if FindU ~= -1 and ListBox.GetItemData("unknowns", FindU) == "U" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÇäÑŽí") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1 then
		if m ~= nil and h ~= nil then
			Binesh.CreateHTMLFile("U = mgh")
			U = m*9.8*h
			
			Binesh.AddToHTML("U = "..m.."*9.8*"..h.." &#8658; U = "..U.." J")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("m: "..m.." Kg", "V")
			Binesh.AddToHTML("h: "..h.." m", "V")
			Binesh.AddToHTML("U: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÇäÑŽí");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "U");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findm = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÌÑã");
	if Findm ~= -1 and ListBox.GetItemData("unknowns", Findm) == "m" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÌÑã") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1 then
		if U ~= nil and h ~= nil then
			Binesh.CreateHTMLFile("U = mgh", "m = <span>U/gh</span>")
			m = U/(9.8*h)
			
			Binesh.AddToHTML("m = <span>"..U.."/9.8*"..h.."</span> &#8658; m = "..m.." Kg")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("h: "..h.." m", "V")
			Binesh.AddToHTML("U: "..U.." J", "V")
			Binesh.AddToHTML("m: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÌÑã");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "m");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findh = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÇÑÊÝÇÚ");
	if Findh ~= -1 and ListBox.GetItemData("unknowns", Findh) == "h" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÇÑÊÝÇÚ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "h") ~= -1 then
		if U ~= nil and m ~= nil then
			Binesh.CreateHTMLFile("U = mgh", "h = <span>U/mg</span>")
			h = U/(m*9.8)
			
			Binesh.AddToHTML("h = <span>"..U.."/"..m.."*9.8</span> &#8658; h = "..h.." m")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("m: "..m.." Kg", "V")
			Binesh.AddToHTML("U: "..U.." J", "V")
			Binesh.AddToHTML("h: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÇÑÊÝÇÚ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "h");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end