-- Q_64 = Binesh.Genesis("����", "Q", "", "", 1, "J", "���", false);
if Q == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Q' then
		ListBox.AddItem("unknowns", "����", "Q");
	end
end

-- m_64 = Binesh.Genesis("���", "m", "K", "����", 10^3, "g", "���", false);
if m == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'm' then
		ListBox.AddItem("unknowns", "���", "m");
	end
end

if L_F == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'LF' then
		ListBox.AddItem("unknowns", "���", "LF");
	end
end


FindQ = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
if Q ~= -1 and ListBox.GetItemData("unknowns", FindQ) == "Q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Q") ~= -1 then
	if m ~= nil and L_F ~= nil then
		Q =  m*L_F
		
		Binesh.CreateHTMLFile("Q =  mL<sub>F</sub>")
		Binesh.AddToHTML("Q = "..m.."*"..L_F.." &#8658; Q = "..Q.." J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findm = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
if Findm ~= -1 and ListBox.GetItemData("unknowns", Findm) == "m" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1 then
	if Q ~= nil and L_F ~= nil then
		m = Q/L_F
		
		Binesh.CreateHTMLFile("Q =  mL<sub>F</sub>", "m = <span>Q/L<sub>F</sub></span>")
		Binesh.AddToHTML("m = <span>"..Q.."/"..L_F.."</span> &#8658; m = "..m.." Kg")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "m");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindL_F = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
if FindL_F ~= -1 and ListBox.GetItemData("unknowns", FindL_F) == "LF" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "LF") ~= -1 then
	if Q ~= nil and m ~= nil then
		L_F = Q/m
		
		Binesh.CreateHTMLFile("Q =  mL<sub>F</sub>", "L<sub>F</sub> = <span>Q/m</span>")
		Binesh.AddToHTML("L<sub>F</sub> = <span>"..Q.."/"..m.."</span> &#8658; L<sub>F</sub>= "..L_F.." J/Kg")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "LF");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end