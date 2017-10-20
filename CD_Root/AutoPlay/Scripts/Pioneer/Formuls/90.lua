if SSigma == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'SSigma' then
		ListBox.AddItem("unknowns", "����� ����", "SSigma");
	end
end

-- q_90 = Binesh.Genesis("���", "q", "", "", 1, "C", "����", false);
if q == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'q' then
		ListBox.AddItem("unknowns", "���", "q");
	end
end

-- A_90 = Binesh.Genesis("���", "A", "", "", 1, "m^2", "��� ����", false);
if A == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'A' then
		ListBox.AddItem("unknowns", "���", "A");
	end
end

FindSSigma = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����")
Findq = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
FindA = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���")

if FindSSigma ~= -1 and ListBox.GetItemData("unknowns", FindSSigma) == "SSigma" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "SSigma") ~= -1 then
	if q ~= nil and A ~= nil then
		Binesh.CreateHTMLFile("SSigma = <span>q/A</span>")
		SSigma = q/A
	
		Binesh.AddToHTML("SSigma = <span>"..q.."/"..A.."</span> &#8658; SSigma = "..SSigma.."<span>C/m<sup>2</sup></span>")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "SSigma");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findq ~= -1 and ListBox.GetItemData("unknowns", Findq) == "q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
	if SSigma ~= nil and A ~= nil then
		Binesh.CreateHTMLFile("SSigma = <span>q/A</span>", "q = SSigma*A")
		q = SSigma*A

		
		Binesh.AddToHTML("q = "..SSigma.."*"..A.." &#8658; q = "..q.."C")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindA ~= -1 and ListBox.GetItemData("unknowns", FindA) == "A" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "A") ~= -1 then
	if SSigma ~= nil and q ~= nil then
		Binesh.CreateHTMLFile("SSigma = <span>q/A</span>", "A = <span>q/SSigma</span>")
		
		A = q/SSigma
		
		Binesh.AddToHTML("A = <span>"..q.."/"..SSigma.."</span> &#8658; A = "..A.."m<sup>2</sup>")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "A");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end