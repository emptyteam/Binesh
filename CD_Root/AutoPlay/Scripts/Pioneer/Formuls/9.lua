if P_Power == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " Ê«‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'P' then
		ListBox.AddItem("unknowns", " Ê«‰", "P");
	end
end

if W == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ «·ò —ÌòÌ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'W' then
		ListBox.AddItem("unknowns", "«‰—éÌ «·ò —ÌòÌ", "W");
	end
end

if t == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 't' then
		ListBox.AddItem("unknowns", "“„«‰", "t");
	end
end

FindP_Power = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " Ê«‰")
FindW = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ «·ò —ÌòÌ");
Findt = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰")

if FindP_Power ~= -1 and ListBox.GetItemData("unknowns", FindP_Power) == "P" and ListBox.FindItem("Words", -1, LB_BYTEXT, " Ê«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1 then
	if W ~= nil and t ~= nil then
		Binesh.CreateHTMLFile("P = <span>W/t</span>")
		P_Power = W/t
		
		Binesh.AddToHTML("P = <span>"..W.."/"..t.."</span> &#8658; P = "..P.." W")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("W = "..W.." J" ,"V")
		Binesh.AddToHTML("t = "..t.." s" ,"V")
		Binesh.AddToHTML("P = "..P_Power.." W" ,"V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " Ê«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "P");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindW ~= -1 and ListBox.GetItemData("unknowns", FindW) == "W" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ «·ò —ÌòÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1 then
	if P_Power ~= nil and t ~= nil then
		Binesh.CreateHTMLFile("P = W/t", "W = Pt")
		W = P_Power*t
		
		Binesh.AddToHTML("W = "..P.."*"..t.." &#8658; W = "..W.." J")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("P = "..P_Power.." W" ,"V")
		Binesh.AddToHTML("t = "..t.." s" ,"V")
		Binesh.AddToHTML("W = "..W.." J" ,"V")
		
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ «·ò —ÌòÌ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "W");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findt ~= -1 and ListBox.GetItemData("unknowns", Findt) == "t" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1 then
	if P_Power ~= nil and W ~= nil then
		Binesh.CreateHTMLFile("P = <span>W/t</span>", "t = <span>W/P</span>")
		t = W/P_Power
		
		Binesh.AddToHTML("t = <span>"..W.."/"..P.."</span> &#8658; t = "..t.."s")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("W = "..W.." J" ,"V")
		Binesh.AddToHTML("P = "..P_Power.." W" ,"V")
		Binesh.AddToHTML("t = "..t.." s" ,"V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "t");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end