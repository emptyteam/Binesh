if F == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'F' then
		ListBox.AddItem("unknowns", "����", "F");
	end
end

if B == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ��������")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'B' then
		ListBox.AddItem("unknowns", "����� ��������", "B");
	end
end

if I == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'I' then
		ListBox.AddItem("unknowns", "�����", "I");
	end
end

if l == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'l' then
		ListBox.AddItem("unknowns", "���", "l");
	end
end

if Teta == nil and Teta_Radian == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Teta' then
		ListBox.AddItem("unknowns", "�����", "Teta");
	end
end

if Teta_Radian ~= nil then
	Binesh.CreateHTMLFile("<span>R/Pi</span> = <span>D/180</span>", "D = <span>R*180/Pi</span>")
	Teta = Math.RadToDeg(Teta_Radian)
	Binesh.AddToHTML("D<sub>Teta</sub> = <span>"..Teta_Radian.."*180/"..Zarib.Pi.."</span> &#8658; D<sub>Teta</sub> = "..Teta.."<sup>o</sup>")
end

FindF = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
if FindF ~= -1 and ListBox.GetItemData("unknowns", FindF) == "F" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1 then
	if B ~= nil and I ~= nil and l ~= nil and Teta ~= nil then
		Binesh.CreateHTMLFile("F = BIlSinTeta")
		F = B*I*l*Math.Sin(Math.Rad(Teta))
		
		Binesh.AddToHTML("F = "..B.."*"..I.."*"..l.."*Sin"..Teta.."<sup>o</sup> &#8658; F = "..F.." N")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "F");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindB = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ��������");
if FindB ~= -1 and ListBox.GetItemData("unknowns", FindB) == "B" and ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1 then
	if F ~= nil and I ~= nil and l ~= nil and Teta ~= nil then
		Binesh.CreateHTMLFile("F = BIlSinTeta", "B = <span>F/IlSinTeta</span>")
		B = F/(I*l*Math.Sin(Math.Rad(Teta)))
		
		Binesh.AddToHTML("B = <span>"..F.."/"..I.."*"..l.."*Sin"..Teta.."</span> &#8658; B = "..B.." T")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ��������");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "B");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindI = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����");
if FindI ~= -1 and ListBox.GetItemData("unknowns", FindI) == "I" and ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
	if F ~= nil and B ~= nil and l ~= nil and Teta ~= nil then
		Binesh.CreateHTMLFile("F = BIlSinTeta", "I = <span>F/BlSinTeta</span>")
		I = F/(B*l*Math.Sin(Math.Rad(Teta)))
		
		Binesh.AddToHTML("I = <span>"..F.."/"..B.."*"..l.."*Sin"..Teta.."</span> &#8658; I = "..I.." A")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "I");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findl = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
if Findl ~= -1 and ListBox.GetItemData("unknowns", Findl) == "l" or ListBox.GetItemData("unknowns", Findl) == "L" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "l") ~= -1 then
	if F ~= nil and B ~= nil and I ~= nil and Teta ~= nil then
		Binesh.CreateHTMLFile("F = BIlSinTeta", "l = <span>F/IBSinTeta</span>")
		l = F/(I*B*Math.Sin(Math.Rad(Teta)))
		
		Binesh.AddToHTML("l = <span>"..F.."/"..I.."*"..B.."*Sin"..Teta.."</span> &#8658; l = "..l.." m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "l");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindTeta = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����");
if FindTeta ~= -1 and ListBox.GetItemData("unknowns", FindTeta) == "Teta"or ListBox.GetItemData("unknowns", FindTeta) == "Alpha" and ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta") ~= -1 then
	if F ~= nil and I ~= nil and l ~= nil and B ~= nil then
		Binesh.CreateHTMLFile("F = BIlSinTeta", "SinTeta = <span>F/IlB</span>")
		Teta = F/(I*l*B)
		Binesh.AddToHTML("SinTeta = <span>"..F.."/"..I.."*"..l.."*"..B.." </span> &#8658; Teta = "..Teta)
			
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Teta");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end