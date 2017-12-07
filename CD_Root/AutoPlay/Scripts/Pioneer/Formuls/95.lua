if C_Condenser == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'C' then
		ListBox.AddItem("unknowns", "�����", "C");
	end
end

-- q_95 = Binesh.Genesis("���", "q", "", "", 1, "C", "����", false);
if q == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'q' then
		ListBox.AddItem("unknowns", "���", "q");
	end
end

-- V_Electric_95 = Binesh.Genesis("���ǎ", "V", "", "", 1, "V", "���", false);
if V_Electric == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���ǎ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'V' then
		ListBox.AddItem("unknowns", "���ǎ", "V");
	end
end

FindC_Condenser = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����")
if FindC_Condenser ~= -1 and ListBox.GetItemData("unknowns", FindC_Condenser) == "C" and ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "C") ~= -1 then
	if q ~= nil and V_Electric ~= nil then
		C_Condenser = q/V_Electric
		
		Binesh.CreateHTMLFile("C = <span>q/V</span>")
		Binesh.AddToHTML("C = <span>"..q.."/"..V_Electric.."</span> &#8658; C = "..C_Condenser.." F")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "C");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findq = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
if Findq ~= -1 and ListBox.GetItemData("unknowns", Findq) == "q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
	if C_Condenser ~= nil and V_Electric ~= nil then
		q = C_Condenser*V_Electric
		
		Binesh.CreateHTMLFile("C = <span>q/V</span>", "q =  CV")
		Binesh.AddToHTML("q = "..C_Condenser.."*"..V_Electric.."&#8658; q = "..q.." C")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindV_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���ǎ");
if FindV_Electric ~= -1 and ListBox.GetItemData("unknowns", FindV_Electric) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���ǎ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
	if q ~= nil and C_Condenser ~= nil then
		V_Electric = q/C_Condenser
		
		Binesh.CreateHTMLFile("C = <span>q/V</span>", "V = <span>q/C</span>")
		Binesh.AddToHTML("V = <span>"..q.."/"..C_Condenser.."</span> &#8658; V = "..V_Electric.." V")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���ǎ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end