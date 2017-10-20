if P == nil and Pa == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›‘«—")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'P' then
		ListBox.AddItem("unknowns", "›‘«—", "P");
	end
end

if Ru == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "çê«·Ì")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Ru' then
		ListBox.AddItem("unknowns", "çê«·Ì", "Ru");
	end
end

if h == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«— ›«⁄")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'h' then
		ListBox.AddItem("unknowns", "«— ›«⁄", "h");
	end
end

FindP = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›‘«—")
FindRu = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "çê«·Ì");
Findh = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«— ›«⁄")

if FindP ~= -1 and ListBox.GetItemData("unknowns", FindP) == "P" and ListBox.FindItem("Words", -1, LB_BYTEXT, "›‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1 then
	if Ru ~= nil and h ~= nil then
		Binesh.CreateHTMLFile("P = Ru*g*h")
		P = Ru*Zarib.g*h
		
		Binesh.AddToHTML("P = "..Ru.."*"..Zarib.g.."*"..h.." &#8658; P = "..P.."Pa")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›‘«—");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "P");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindRu ~= -1 and ListBox.GetItemData("unknowns", FindRu) == "Ru" and ListBox.FindItem("Words", -1, LB_BYTEXT, "çê«·Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ru") ~= -1 then
	if P ~= nil and h ~= nil then
		Binesh.CreateHTMLFile("P = Ru*g*h", "Ru = <span>P/g*h</span>")
		Ru = P/Zarib.g*h
		
		Binesh.AddToHTML("Ru = <span>"..P.."/"..Zarib.g.."*"..h.."</span> &#8658; Ru = "..Ru.."g/m<sup>3</sup>")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "çê«·Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Ru");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findh ~= -1 and ListBox.GetItemData("unknowns", Findh) == "h" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«— ›«⁄") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "h") ~= -1 then
	if Ru ~= nil and P ~= nil then
		Binesh.CreateHTMLFile("P = Ru*g*h", "h = <span>P/g*Ru</span>")
		h = P/Zarib.g*Ru
		
		Binesh.AddToHTML("h = <span>"..P.."/"..Zarib.g.."*"..Ru.."</span> &#8658; h = "..h.."m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«— ›«⁄");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "h");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end