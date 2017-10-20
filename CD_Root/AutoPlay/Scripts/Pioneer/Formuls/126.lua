-- V_Electric_126 = Binesh.Genesis("Ê· «é", "V", "", "", 1, "V", "Ê· ", false);
if V_Electric == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'V' then
		ListBox.AddItem("unknowns", "Ê· «é", "V");
	end
end

if Epsilon == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê „Õ—òÂ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Epsilon' then
		ListBox.AddItem("unknowns", "‰Ì—Ê „Õ—òÂ", "Epsilon");
	end
end

-- I_126 = Binesh.Genesis("Ã—Ì«‰", "I", "", "", 1, "A", "¬„Å—", false);
if I == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'I' then
		ListBox.AddItem("unknowns", "Ã—Ì«‰", "I");
	end
end

if r_Resistor == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'r' then
		ListBox.AddItem("unknowns", "„ﬁ«Ê„ ", "r");
	end
end


FindV_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é")
FindEpsilon = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê „Õ—òÂ");
Findr_Resistor = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ")
FindI = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰")

if FindV_Electric ~= -1 and ListBox.GetItemData("unknowns", FindV_Electric) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
	if Epsilon ~= nil and r_Resistor ~= nil and I ~= nil then
		Binesh.CreateHTMLFile("V = Epsilon-I*r")
		V_Electric = Epsilon-(I*r_Resistor)
		
		Binesh.AddToHTML("V = "..Epsilon.."-"..I.."*"..r_Resistor.." &#8658; V = "..V_Electric.."V")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindEpsilon ~= -1 and ListBox.GetItemData("unknowns", FindEpsilon) == "Epsilon" and ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê „Õ—òÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Epsilon") ~= -1 then
	if V_Electric ~= nil and r_Resistor ~= nil and I ~= nil then
		Binesh.CreateHTMLFile("V = Epsilon-I*r", "Epsilon = V+I*r")
		Epsilon = V_Electric + I*r_Resistor
		
		Binesh.AddToHTML("Epsilon = "..V_Electric.."+"..I.."*"..r_Resistor.." &#8658; Epsilon = "..Epsilon.."V")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê „Õ—òÂ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Epsilon");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindI ~= -1 and ListBox.GetItemData("unknowns", FindI) == "I" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
	if V_Electric ~= nil and r_Resistor ~= nil and Epsilon ~= nil  then
		Binesh.CreateHTMLFile("V = Epsilon-I*r", "I = <span>Epsilon-V/r</span>")
		I = (Epsilon-V_Electric)/r_Resistor
		
		Binesh.AddToHTML("I =<span>"..Epsilon.."-"..V_Electric.."/"..r_Resistor.."</span> &#8658; I = "..I.."A")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "I");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findr_Resistor ~= -1 and ListBox.GetItemData("unknowns", Findr_Resistor) == "R" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1 then
	if V_Electric ~= nil and Epsilon ~= nil and I ~= nil then
		Binesh.CreateHTMLFile("V = Epsilon-I*r", "r = <span>Epsilon-V/I<span>")
		r_Resistor = Epsilon-V_Electric/I
		
		Binesh.AddToHTML("r = <span>"..Epsilon.."/"..V_Electric.."/"..I.."</span>&#8658; r = "..r_Resistor.."ohm")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "r");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end