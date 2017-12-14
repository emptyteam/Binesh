if E_Electric == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'E' then
		ListBox.AddItem("unknowns", "�����", "E");
	end
end

if F == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'F' then
		ListBox.AddItem("unknowns", "����", "F");
	end
end

if q_0_87 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��� �����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'q0' then
		ListBox.AddItem("unknowns", "��� �����", "q0");
	end
end

FindE_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����");
if FindE_Electric ~= -1 and ListBox.GetItemData("unknowns", FindE_Electric) == "E" and ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "E") ~= -1 then
	if F ~= nil and q_0_87 ~= nil then
		E_Electric = F/q_0_87
		
		Binesh.CreateHTMLFile("E = <span>F/q<sub>0</sub></span>")
		Binesh.AddToHTML("E = <span>"..F.."/"..q_0_87.."</span> &#8658; E = "..E_Electric.." N/C")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "E");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindF = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
if FindF ~= -1 and ListBox.GetItemData("unknowns", FindF) == "F" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1 then
	if E_Electric ~= nil and q_0_87 ~= nil then
		F = E_Electric*q_0_87
		
		Binesh.CreateHTMLFile("E = <span>F/q<sub>0</sub></span>", "F = Eq<sub>0</sub>")
		Binesh.AddToHTML("F = "..E_Electric.."*"..q_0_87.." &#8658; F = "..F.." N")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "F");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findq_0_87 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��� �����");
if Findq_0_87 ~= -1 and ListBox.GetItemData("unknowns", Findq_0_87) == "q0" and ListBox.FindItem("Words", -1, LB_BYTEXT, "��� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q0") ~= -1 then
	if  E_Electric ~= nil and F ~= nil then
		q_0_87 = F/E_Electric
		
		Binesh.CreateHTMLFile("E = <span>F/q<sub>0</sub></span>", "q<sub>0</sub> = <span>F/E</span>")
		Binesh.AddToHTML("q<sub>0</sub> = <span>"..F.."/"..E_Electric.."</span> &#8658; q<sub>0</sub> = "..q_0_87.." C")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��� �����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q0");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end