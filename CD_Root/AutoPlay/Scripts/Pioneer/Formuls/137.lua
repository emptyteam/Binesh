-- Epsilon = Binesh.Genesis("���� ��ј�", "Epsilon", "", "", 1, "V", "���", false);
if Epsilon == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ��ј�")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Epsilon' then
		ListBox.AddItem("unknowns", "���� ��ј�", "Epsilon");
	end
end

-- B_137 = Binesh.Genesis("�����", "B", "", "", 1, "T", "����", false);
if B == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'B' then
		ListBox.AddItem("unknowns", "�����", "B");
	end
end

-- I_137 = Binesh.Genesis("�����", "I", "", "", 1, "A", "���", false);
if I == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'I' then
		ListBox.AddItem("unknowns", "�����", "I");
	end
end

-- V_Speed_137 = Binesh.Genesis("����", "V", "", "", 1, "m/s", "��� �� �����", false);
if V_Speed == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'V' then
		ListBox.AddItem("unknowns", "����", "V");
	end
end

FindEpsilon = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ��ј�")
FindB = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����");
FindI = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����")
FindV_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����")

if FindEpsilon ~= -1 and ListBox.GetItemData("unknowns", FindEpsilon) == "Epsilon" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���� ��ј�") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Epsilon") ~= -1 then
	if V_Speed ~= nil and B ~= nil and I ~= nil then
		Binesh.CreateHTMLFile("Epsilon = B*I*V")
		Epsilon = B*I*V_Speed
		
		Binesh.AddToHTML("Epsilon = "..B.."*"..I.."*"..V_Speed.." &#8658; Epsilon = "..Epsilon.."V")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ��ј�");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Epsilon");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindB ~= -1 and ListBox.GetItemData("unknowns", FindB) == "B" and ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1 then
	if V_Speed ~= nil and Epsilon ~= nil and I ~= nil then
		Binesh.CreateHTMLFile("Epsilon = B*I*V","B = <span>Epsilon/I*V</span>")
		B = Epsilon/I*V_Speed
		
		Binesh.AddToHTML("B = <span>"..Epsilon.."/"..I.."*"..V_Speed.."</span> &#8658; B = "..B.."T")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "B");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindI ~= -1 and ListBox.GetItemData("unknowns", FindI) == "I" and ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
	if V_Speed ~= nil and Epsilon ~= nil and B ~= nil then
		Binesh.CreateHTMLFile("Epsilon = B*I*V","I = <span>Epsilon/B*V</span>")
		I = Epsilon/B*V_Speed
		
		Binesh.AddToHTML("I = <span>"..Epsilon.."/"..B.."*"..V_Speed.."</span> &#8658; I = "..I.."A")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "I");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindV_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV_Speed) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
	if V_Speed ~= nil and B ~= nil and I ~= nil then
		Binesh.CreateHTMLFile("Epsilon = B*I*V","V = <span>Epsilon/I*B</span>")
		V_Speed = Epsilon/B*I
		
		Binesh.AddToHTML("V = <span>"..Epsilon.."/"..B.."*"..I.."</span> &#8658; V = "..V_Speed.."m/s")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end