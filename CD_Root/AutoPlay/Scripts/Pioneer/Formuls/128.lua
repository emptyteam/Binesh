if F == nil then
	Binesh.AddUnknown("����", "F")
end

if B == nil then
	Binesh.AddUnknown("����� ��������", "B")
end

if I == nil then
	Binesh.AddUnknown("�����", "I")
end

if l == nil then
	Binesh.AddUnknown("���", "l")
end

if Teta == nil and Teta_Radian == nil then
	Binesh.AddUnknown("�����", "Teta")
end

FindF = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
if FindF ~= -1 and ListBox.GetItemData("unknowns", FindF) == "F" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1 then
	if B ~= nil and I ~= nil and l ~= nil and Teta ~= nil then
		Binesh.CreateHTMLFile("F = BIlSinTeta")
		F = B*I*l*Math.Sin(Math.Rad(Teta))
		
		Binesh.AddToHTML("B: "..B.." T", "V")
		Binesh.AddToHTML("I: "..I.." A", "V")
		Binesh.AddToHTML("l: "..l.." m", "V")
		Binesh.AddToHTML("Teta: "..Teta, "V")
		Binesh.AddToHTML("F: ?", "V")
		
		Binesh.AddToHTML("F = "..B.."*"..I.."*"..l.."*sin"..Teta.."<sup>o</sup> &#8658; F = "..F.." N")
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
		
		Binesh.AddToHTML("F: "..F.." N", "V")
		Binesh.AddToHTML("I: "..I.." A", "V")
		Binesh.AddToHTML("l: "..l.." m", "V")
		Binesh.AddToHTML("Teta: "..Teta, "V")
		Binesh.AddToHTML("B: ?", "V")
		
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
		
		Binesh.AddToHTML("F: "..F.." N", "V")
		Binesh.AddToHTML("B: "..B.." T", "V")
		Binesh.AddToHTML("l: "..l.." m", "V")
		Binesh.AddToHTML("Teta: "..Teta, "V")
		Binesh.AddToHTML("I: ?", "V")
		
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
		
		Binesh.AddToHTML("F: "..F.." N", "V")
		Binesh.AddToHTML("I: "..I.." A", "V")
		Binesh.AddToHTML("B: "..B.." T", "V")
		Binesh.AddToHTML("Teta: "..Teta, "V")
		Binesh.AddToHTML("l: ?", "V")
		
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
		
		Binesh.AddToHTML("F: "..F.." N", "V")
		Binesh.AddToHTML("I: "..I.." A", "V")
		Binesh.AddToHTML("l: "..l.." m", "V")
		Binesh.AddToHTML("B: "..B.." T", "V")
		Binesh.AddToHTML("Teta: ?", "V")
		
		Binesh.AddToHTML("SinTeta = <span>"..F.."/"..I.."*"..l.."*"..B.." </span> &#8658; Teta = "..Teta)
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Teta");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end