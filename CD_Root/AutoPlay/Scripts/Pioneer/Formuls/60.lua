-- P_60_1 = Binesh.Genesis("›‘«—", "P", "", "", 1, "atm", "« „”›—", false);
if P == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›‘«—")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'P' then
		ListBox.AddItem("unknowns", "›‘«—", "P");
	end
end

-- Ru_60 =  Binesh.Genesis("çê«·Ì", "Ru", "", "", 1, "g/m^3", "ê—„ »— „ — „ò⁄»", false);
if Ru == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "çê«·Ì")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Ru' then
		ListBox.AddItem("unknowns", "çê«·Ì", "Ru");
	end
end

-- h_60 = Binesh.Genesis("«— ›«⁄", "h", "", "", 1, "m", "„ —", false);
if h == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«— ›«⁄")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'h' then
		ListBox.AddItem("unknowns", "«— ›«⁄", "h");
	end
end

if P0 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«ÿ—«›")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'P0' then
		ListBox.AddItem("unknowns", "«ÿ—«› „«Ì⁄ ›‘«—", "P0");
	end
end

FindP = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›‘«—");
if FindP ~= -1 and ListBox.GetItemData("unknowns", FindP) == "P" and ListBox.FindItem("Words", -1, LB_BYTEXT, "›‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1 then
	if Ru ~= nil and P0 ~= nil and h ~= nil then
		Binesh.CreateHTMLFile("P = P<sub>0</sub>+(Rugh)")
		P = P0 + (Ru*Zarib.g*h)
		
		Binesh.AddToHTML("P = "..P0.."+("..Ru.."*"..Zarib.g.."*"..h..") &#8658; P = "..P.." atm")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›‘«—");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "P");
		if unknownPersianindex == unknownSymbolindex then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindRu = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "çê«·Ì");
if FindP0 ~= -1 and ListBox.GetItemData("unknowns", FindP0) == "P0" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«ÿ—«› „«Ì⁄ ›‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P0") ~= -1 then
	if P ~= nil and Ru ~= nil and h ~= nil then
		Binesh.CreateHTMLFile("P = P<sub>0</sub>+(Rugh)", "P<sub>0</sub> = P-Rugh")
		P0 = P-Ru*Zarib.g*h
		
		Binesh.AddToHTML("P<sub>0</sub> = "..P.."-"..Ru.."*"..Zarib.g.."*"..h.." &#8658; P<sub>0</sub> = "..P0.." atm")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«ÿ—«› „«Ì⁄ ›‘«—");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "P0");
		if unknownPersianindex == unknownSymbolindex then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findh = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«— ›«⁄");
if FindRu ~= -1 and ListBox.GetItemData("unknowns", FindRu) == "Ru" and ListBox.FindItem("Words", -1, LB_BYTEXT, "çê«·Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ru") ~= -1 then
	if P ~= nil and P0 ~= nil and h ~= nil then
		Binesh.CreateHTMLFile("P = P<sub>0</sub>+(Rugh)", "Ru = <span>P-P<sub>0</sub>/gh</span>")
		Ru = P-P0/Zarib.g*h
		
		Binesh.AddToHTML("Ru = <span>"..P.."-"..P0.."/"..Zarib.g.."*"..h.."</span> &#8658; Ru = "..Ru.." <span>g/m<sup>3</sup></span>")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "çê«·Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Ru");
		if unknownPersianindex == unknownSymbolindex then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindP0 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«ÿ—«› „«Ì⁄ ›‘«—");
if Findh ~= -1 and ListBox.GetItemData("unknowns", Findh) == "h" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«— ›«⁄") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "h") ~= -1 then
	if P ~= nil and P0 ~= nil and Ru ~= nil then
		Binesh.CreateHTMLFile("P = P<sub>0</sub>+(Rugh)", "h = <span>P-P<sub>0</sub>/Rug</span>")
		h = P-P0/Ru*Zarib.g
		
		Binesh.AddToHTML("h = <span>"..P.."-"..P0.."/"..Ru.."*"..Zarib.g.."</span> &#8658; h = "..h.." m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«— ›«⁄");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "h");
		if unknownPersianindex == unknownSymbolindex then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end