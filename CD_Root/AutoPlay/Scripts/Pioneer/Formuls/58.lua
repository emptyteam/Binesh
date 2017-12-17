if P == nil and Pa == nil then
	Binesh.AddUnknown("����", "L")
end

if F == nil then
	Binesh.AddUnknown("����", "F")
end

if A == nil then
	Binesh.AddUnknown("���", "A")
end

if Pa ~= nil then
	Binesh.CreateHTMLFile("P<sub>Pascal</sub> = P<sub>atm</sub>*10<sup>5</sup>")
	P = Pa*10^5
	Binesh.AddToHTML("P<sub>Pascal</sub> = "..Pa.."*10<sup>5</sup> &#8658; P<sub>Pascal</sub> = "..P.."Pa")
	Binesh.AddToHTML("<br>") -- Create ENTER in HTML
end

FindP = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
if FindP ~= -1 and ListBox.GetItemData("unknowns", FindP) == "P" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1 then
	if F ~= nil and A ~= nil then
		Binesh.CreateHTMLFile("P = <span>F/A</span>")
		P = F/A
		
		Binesh.AddToHTML("P = "..F.."*"..A.." &#8658; P = "..P.." Pa")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("F: "..F.." N", "V")
		Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
		Binesh.AddToHTML("P: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "P");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindF = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
if FindF ~= -1 and ListBox.GetItemData("unknowns", FindF) == "F" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1 then
	if P ~= nil and A ~= nil then
		Binesh.CreateHTMLFile("P = <span>F/A</span>", "F = PA")
		F = P*A
		
		Binesh.AddToHTML("F = <span>"..P.."*"..A.."</span> &#8658; F = "..F.." N")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("P: "..P.." Pa", "V")
		Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
		Binesh.AddToHTML("F: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "F");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindA = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
if FindA ~= -1 or FindA_2 ~= -1 and ListBox.GetItemData("unknowns", FindA) == "A" or ListBox.GetItemData("unknowns", FindA_2) == "A" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") or ListBox.FindItem("Words", -1, LB_BYTEXT, "A") ~= -1 then
	if P ~= nil and F ~= nil then
		Binesh.CreateHTMLFile("P = <span>F/A</span>", "A = <span>F/P</span>")
		A = F/P
		
		Binesh.AddToHTML("A = <span>"..F.."/"..P.."</span> &#8658; A = "..A.." m<sup>2</sup>")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("P: "..P.." Pa", "V")
		Binesh.AddToHTML("F: "..F.." N", "V")
		Binesh.AddToHTML("A: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "A");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end