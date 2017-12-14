if P_Power == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " Ê«‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'P' then
		ListBox.AddItem("unknowns", " Ê«‰", "P");
	end
end

if V_Electric == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'V' then
		ListBox.AddItem("unknowns", "Ê· «é", "V");
	end
end

if I == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'I' then
		ListBox.AddItem("unknowns", "Ã—Ì«‰", "I");
	end
end

FindP_Power = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " Ê«‰");
if FindP_Power ~= -1 and ListBox.GetItemData("unknowns", FindP_Power) == "P" and ListBox.FindItem("Words", -1, LB_BYTEXT, " Ê«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1 then
	if V_Electric ~= nil and I ~= nil then
		Binesh.CreateHTMLFile("P = IV")
		P_Power = (V_Electric*I)
		
		Binesh.AddToHTML("P = "..V_Electric.."*"..I.." &#8658; P = "..P_Power.." W")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " Ê«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "P");
		if unknownPersianindex == unknownSymbolindex then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindV_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é");
if FindV_Electric ~= -1 and ListBox.GetItemData("unknowns", FindV_Electric) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
	if P_Power ~= nil and I ~= nil then
		Binesh.CreateHTMLFile("P = IV", "V = <span>P/I</span>")
		V_Electric = P_Power/I
		
		Binesh.AddToHTML("V = <span>"..P_Power.."/"..I.."<sup>2</sup></span> &#8658; V = "..V_Electric.." V")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
		if unknownPersianindex == unknownSymbolindex then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindI = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
if FindI ~= -1 and ListBox.GetItemData("unknowns", FindI) == "I" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
	if P_Power ~= nil and V_Electric ~= nil then
		Binesh.CreateHTMLFile("P = IV", "I = <span>P/V</span>")
		I = P_Power/V_Electric
		
		Binesh.AddToHTML("I = <span>"..P_Power.."/"..V_Electric.."</span> &#8658; I = "..I.." A")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "I");
		if unknownPersianindex == unknownSymbolindex then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end