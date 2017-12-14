if W == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ «·ò —ÌòÌ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'W' then
		ListBox.AddItem("unknowns", "«‰—éÌ «·ò —ÌòÌ", "W");
	end
end

if R == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'R' then
		ListBox.AddItem("unknowns", "„ﬁ«Ê„ ", "R");
	end
end

if I == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'I' then
		ListBox.AddItem("unknowns", "Ã—Ì«‰", "I");
	end
end

if t == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 't' then
		ListBox.AddItem("unknowns", "“„«‰", "t");
	end
end

FindW = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ «·ò —ÌòÌ");
if FindW ~= -1 and ListBox.GetItemData("unknowns", FindW) == "W" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ «·ò —ÌòÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1 then
	if R ~= nil and I ~= nil and t ~= nil then
		Binesh.CreateHTMLFile("W = RI<sup>2</sup>t")
		W = R*(I^2)*t
		
		Binesh.AddToHTML("W = "..R.."*"..I.."<sup>2</sup>*"..t.." &#8658; W = "..W.." J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ «·ò —ÌòÌ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "W");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindR = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ");
if FindR ~= -1 and ListBox.GetItemData("unknowns", FindR) == "R" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1 then
	if W ~= nil and I ~= nil and t ~= nil then
		Binesh.CreateHTMLFile("W = RI<sup>2</sup>t", "R = <span>W/I<sup>2</sup>t</span>")
		R = W/((I^2)*t)
		
		Binesh.AddToHTML("R = <span>"..W.."/"..I.."<sup>2</sup>*"..t.."</span> &#8658; R = "..R.." Ohm")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "R");
		if unknownPersianindex == unknownSymbolindex then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindI = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
if FindI ~= -1 and ListBox.GetItemData("unknowns", FindI) == "I" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
	if W ~= nil and R ~= nil and t ~= nil then
		Binesh.CreateHTMLFile("W = RI<sup>2</sup>t", "I = sqrt(<span>W/Rt</span>)")
		I = Math.Sqrt(W/(R*t))
		
		Binesh.AddToHTML("I = Sqrt(<span>"..W.."/"..R.."</span>*"..t..") &#8658; I = "..I.." A")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "I");
		if unknownPersianindex == unknownSymbolindex then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findt = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
if Findt ~= -1 and ListBox.GetItemData("unknowns", Findt) == "t" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1 then
	if W ~= nil and R ~= nil and t ~= nil then
		Binesh.CreateHTMLFile("W = RI<sup>2</sup>t", "t = <span>W/RI<sup>2</sup></span>")
		t = W/(R*I^2)
		
		Binesh.AddToHTML("t = <span>"..W.."/"..R.."*"..I.."<sup>2</sup></span> &#8658; t = "..t.." s")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "t");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end