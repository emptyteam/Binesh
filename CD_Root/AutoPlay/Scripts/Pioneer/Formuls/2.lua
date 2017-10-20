if U == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ Å «‰”Ì·")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'U' then
		ListBox.AddItem("unknowns", "«‰—éÌ Å «‰”Ì·", "U");
	end
end

-- m = Binesh.Genesis("Ã—„", "m", "Kg", "òÌ·Ê", 10^3, "g", "ê—„", false);
if m == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'm' then
		ListBox.AddItem("unknowns", "Ã—„", "m");
	end
end

if h == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«— ›«⁄")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'h' then
		ListBox.AddItem("unknowns", "«— ›«⁄", "h");
	end
end

FindU = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ Å «‰”Ì·")
Findm = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„");
Findh = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«— ›«⁄")

if FindU ~= -1 and ListBox.GetItemData("unknowns", FindU) == "U" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ Å «‰”Ì·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1 then
	if m ~= nil and h ~= nil then
		Binesh.CreateHTMLFile("U = mgh")
		U = m*Zarib.ga*h
		
		Binesh.AddToHTML("U = "..m.."*"..Zarib.ga.."*"..h.." &#8658; U = "..U.." J")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("m = "..m.." Kg" ,"V")
		Binesh.AddToHTML("h = "..h.." m" ,"V")
		Binesh.AddToHTML("U = "..U.." J" ,"V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ Å «‰”Ì·");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "U");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findm ~= -1 and ListBox.GetItemData("unknowns", Findm) == "m" and String.Find(InputQuiz, "Ã—„", 1, false) and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1 then
	if U ~= nil and h ~= nil then
		Binesh.CreateHTMLFile("U = mgh", "m = <span>U/gh</span>")
		m = U/Zarib.ga*h
		
		Binesh.AddToHTML("m = <span>"..U.."/"..Zarib.ga.."*"..h.."</span> &#8658; m = "..m.." Kg")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("U = "..U.." J" ,"V")
		Binesh.AddToHTML("h = "..h.." m" ,"V")
		Binesh.AddToHTML("m = "..m.." Kg" ,"V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "m");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findh ~= -1 and ListBox.GetItemData("unknowns", Findh) == "h" and String.Find(InputQuiz, "«— ›«⁄", 1, false) and ListBox.FindItem("Words", -1, LB_BYTEXT, "«— ›«⁄") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "h") ~= -1 then
	if U ~= nil and m ~= nil then
		Binesh.CreateHTMLFile("U = mgh", "h = <span>U/mg</span>")
		h = U/m*Zarib.ga
		
		Binesh.AddToHTML("h = <span>"..U.."/"..Zarib.ga.."*"..m.."</span> &#8658; h = "..h.." m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("U = "..U.." J" ,"V")
		Binesh.AddToHTML("m = "..m.." Kg" ,"V")
		Binesh.AddToHTML("h = "..h.." m" ,"V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«— ›«⁄");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "h");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end