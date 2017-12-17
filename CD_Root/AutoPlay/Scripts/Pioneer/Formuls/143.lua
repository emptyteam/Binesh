if Fi == nil then
	Binesh.AddUnknown("���", "Fi")
end

if A == nil then
	Binesh.AddUnknown("���", "A")
	Binesh.AddUnknown("�����", "A")
end

if B == nil then
	Binesh.AddUnknown("����� ��������", "B")
end

if Omega == nil then
	Binesh.AddUnknown("�����", "Omega")
end

if t == nil then
	Binesh.AddUnknown("����", "t")
end

FindFi = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
if FindEpsilon ~= -1 and ListBox.GetItemData("unknowns", FindFi) == "Fi" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Fi") ~= -1 then
	if A ~= nil and B ~= nil and t ~= nil and Omega ~= nil then
		Binesh.CreateHTMLFile("Fi = ABcosOmegaTeta")
		Fi = A*B*Math.Cos(Omega*Teta)
		
		Binesh.AddToHTML("Fi = "..A.."*"..B.."*cos"..Omega.."*"..Teta.." &#8658; Fi = "..Fi.." Wb")
		
		Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
		Binesh.AddToHTML("B: "..B.." T", "V")
		Binesh.AddToHTML("Teta: "..Teta, "V")
		Binesh.AddToHTML("Fi: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Fi");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindA = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
FindA_2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����");
if FindA ~= -1 or FindA_2 ~= -1 and ListBox.GetItemData("unknowns", FindA) == "A" or ListBox.GetItemData("unknowns", FindA_2) == "A" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") or ListBox.FindItem("Words", -1, LB_BYTEXT, "A") ~= -1 then
	if Fi ~= nil and B ~= nil and t ~= nil and Omega ~= nil then
		Binesh.CreateHTMLFile("Fi = ABcosOmegaTeta", "A = <span>Fi/BcosOmegaTeta</span>")
		A = Fi/(B*Math.Cos(Omega*Teta))
		
		Binesh.AddToHTML("A = <span>"..Fi.."/"..B.."*cos"..Omega.."*"..Teta.."</span> &#8658; A = "..A.." m<sup>2</sup>")
		
		Binesh.AddToHTML("Fi: "..Fi.." Wb", "V")
		Binesh.AddToHTML("B: "..B.." T", "V")
		Binesh.AddToHTML("Teta: "..Teta, "V")
		Binesh.AddToHTML("A: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "A");
		if unknownPersianindex == unknownSymbolindex or ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����") == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindB = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ��������");
if FindB ~= -1 and ListBox.GetItemData("unknowns", FindB) == "B" and ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1 then
	if A ~= nil and Fi ~= nil and t ~= nil and Omega ~= nil then
		Binesh.CreateHTMLFile("Fi = ABcosOmegaTeta", "B = <span>Fi/AcosOmegaTeta</span>")
		B = Fi/(A*Math.Cos(Omega*Teta))
		
		Binesh.AddToHTML("B = <span>"..Fi.."/"..A.."*cos"..Omega.."*"..Teta.."</span> &#8658; B = "..B.." T")
		
		Binesh.AddToHTML("Fi: "..Fi.." Wb", "V")
		Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
		Binesh.AddToHTML("Teta: "..Teta, "V")
		Binesh.AddToHTML("B: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ��������");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "B");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end