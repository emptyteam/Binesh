if P_Power == nil then
	Binesh.AddUnknown(" Ê«‰", "P")
end

if W == nil then
	Binesh.AddUnknown("ò«—", "W")
end

if t == nil then
	Binesh.AddUnknown("“„«‰", "t")
end

FindP_Power = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " Ê«‰");
if FindP_Power ~= -1 and ListBox.GetItemData("unknowns", FindP_Power) == "P" and ListBox.FindItem("Words", -1, LB_BYTEXT, " Ê«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1 then
	if W ~= nil and t ~= nil then
		Binesh.CreateHTMLFile("P = <span>W/t</span>")
		P_Power = W/t
		
		Binesh.AddToHTML("P = <span>"..W.."/"..t.."</span> &#8658; P = "..P_Power.." W")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("W: "..W.." J", "V")
		Binesh.AddToHTML("t: "..t.." s", "V")
		Binesh.AddToHTML("P: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " Ê«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "P");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindW = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«—");
if FindW ~= -1 and ListBox.GetItemData("unknowns", FindW) == "W" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ò«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1 then
	if P_Power ~= nil and t ~= nil then
		Binesh.CreateHTMLFile("P = <span>W/t</span>", "W = Pt")
		W = P_Power*t
		
		Binesh.AddToHTML("W = "..P_Power.."*"..t.." &#8658; W = "..W.." J")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("P: "..P_Power.." W", "V")
		Binesh.AddToHTML("t: "..t.." s", "V")
		Binesh.AddToHTML("W: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«—");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "W");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findt = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
if Findt ~= -1 and ListBox.GetItemData("unknowns", Findt) == "t" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1 then
	if P_Power ~= nil and W ~= nil then
		Binesh.CreateHTMLFile("P = <span>W/t</span>", "t = <span>W/P</span>")
		t = W/P_Power
		
		Binesh.AddToHTML("t = <span>"..W.."/"..P_Power.."</span> &#8658; t = "..t.." s")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("P: "..P_Power.." W", "V")
		Binesh.AddToHTML("W: "..W.." V", "J")
		Binesh.AddToHTML("t: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "t");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end