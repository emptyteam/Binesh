if D == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'D' then
		ListBox.AddItem("unknowns", "���� ����", "D");
	end
end

if f == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ������")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'f' then
		ListBox.AddItem("unknowns", "����� ������", "f");
	end
end

Findf = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ������")
if FindD ~= -1 and ListBox.GetItemData("unknowns", FindD) == "D" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���� ����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "D") ~= -1 then
	if f ~= nil then
		Binesh.CreateHTMLFile("D = <span>1/f</span>")
		D = 1/f
		
		Binesh.AddToHTML("D = <span>1/"..f.."</span> &#8658; D = "..D.." diopter")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "D");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindD = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ����");
if Findf ~= -1 and ListBox.GetItemData("unknowns", Findf) == "f" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ������") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "f") ~= -1 then
	if D ~= nil then
		Binesh.CreateHTMLFile("D = <span>1/f</span>", "f = <span>1/D</span>")
		f = 1/D
		
		Binesh.AddToHTML("f = <span>1/"..D.."</span> &#8658; f = "..f.." m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ������");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "f");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end