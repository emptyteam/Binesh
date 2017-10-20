-- Q_65 = Binesh.Genesis("ê—„«", "Q", "", "", 1, "J", "éÊ·", false);
if Q == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Q' then
		ListBox.AddItem("unknowns", "ê—„«", "Q");
	end
end

-- m_65 = Binesh.Genesis("Ã—„", "m", "K", "òÌ·Ê", 10^3, "g", "ê—„", false);
if m == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'm' then
		ListBox.AddItem("unknowns", "Ã—„", "m");
	end
end

if LV == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " »ŒÌ—")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'LV' then
		ListBox.AddItem("unknowns", " »ŒÌ—", "LV");
	end
end

FindQ = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«")
Findm = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„");
FindLV = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " »ŒÌ—")

if FindQ ~= -1 and ListBox.GetItemData("unknowns", FindQ) == "Q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ê—„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Q") ~= -1 then
	if m ~= nil and LV ~= nil then
		Binesh.CreateHTMLFile("Q = m*L<sub>V</sub>")
		Q = m*LV
		
		Binesh.AddToHTML("Q = "..m.."*"..LV.." &#8658; Q = "..Q.."J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Q");
		if unknownPersianindex == unknownSymbolindex then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findm ~= -1 and ListBox.GetItemData("unknowns", Findm) == "m" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1 then
	if LV ~= nil and Q ~= nil then
		Binesh.CreateHTMLFile("Q = m*L<sub>V</sub>", "m = <span>Q/L<sub>V</sub></span>")
		m = Q/LV
		
		Binesh.AddToHTML("m = <span>"..Q.."/"..LV.."</span> &#8658; m = "..m.."kg")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "m");
		if unknownPersianindex == unknownSymbolindex then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindLV ~= -1 and ListBox.GetItemData("unknowns", FindLV) == "LV" and ListBox.FindItem("Words", -1, LB_BYTEXT, " »ŒÌ—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "LV") ~= -1 then
	if Q ~= nil and m ~= nil then
		Binesh.CreateHTMLFile("Q = m*L<sub>V</sub>", "L<sub>V</sub> = Q/m")
		LV = Q/m
		
		Binesh.AddToHTML("L<sub>V</sub> = <span>"..Q.."/"..m.."</span> &#8658; L<sub>V</sub> = "..LV.."<span>J/kg</span>")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " »ŒÌ—");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "LV");
		if unknownPersianindex == unknownSymbolindex then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end