-- U_97 = Binesh.Genesis("��ю� �������", "U", "", "", 1, "J", "���", false);
if U == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��ю� �������")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'U' then
		ListBox.AddItem("unknowns", "��ю� �������", "U");
	end
end

-- q_97 = Binesh.Genesis("���", "q", "", "", 1, "C", "����", false);
if q == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'q' then
		ListBox.AddItem("unknowns", "���", "q");
	end
end

-- V_Electric_97 = Binesh.Genesis("���ǎ", "V", "", "", 1, "V", "���", false);
if V_Electric == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���ǎ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'V' then
		ListBox.AddItem("unknowns", "���ǎ", "V");
	end
end

FindU = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��ю� �������")
Findq = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
FindV_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���ǎ")

if FindU ~= -1 and ListBox.GetItemData("unknowns", FindU) == "U" and ListBox.FindItem("Words", -1, LB_BYTEXT, "��ю� �������") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1 then
	if V_Electric ~= nil and q ~= nil then
		Binesh.CreateHTMLFile("U = <span>1/2</span>*q*V")
		U = 0.5*q*V_Electric
		
		Binesh.AddToHTML("U = <span>1/2</span>*"..q.."*"..V_Electric.." &#8658; U = "..U.."J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��ю� �������");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "U");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownindex);
		end
	end
elseif Findq ~= -1 and ListBox.GetItemData("unknowns", Findq) == "q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
	if V_Electric ~= nil and U ~= nil then
		Binesh.CreateHTMLFile("U = <span>1/2</span>*q*V", "q = <span>2*U/V</span>")
		q = (2*U)/V_Electric
		
		Binesh.AddToHTML("q = <span>2*"..U.."/"..V_Electric.."</span> &#8658; q = "..q.."C")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownindex);
		end
	end
elseif FindV_Electric ~= -1 and ListBox.GetItemData("unknowns", FindV_Electric) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���ǎ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
	if U ~= nil and q ~= nil then
		Binesh.CreateHTMLFile("U = <span>1/2</span>*q*V", "V = <span>2*U/q</span>")
		V_Electric = Math.Sqrt(2*U/C)
		
		Binesh.AddToHTML("V = Sqrt(2*"..U.."/"..q..") &#8658; V = "..V_Speed.."m/s")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���ǎ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownindex);
		end
	end
end