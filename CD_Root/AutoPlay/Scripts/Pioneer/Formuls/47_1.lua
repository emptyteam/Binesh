if fs_max == nil then
	Binesh.AddUnknown("��ؘǘ �� ������ �ј�", "fs,max")
end

if N == nil then
	Binesh.AddUnknown("����", "N")
end

if Mus == nil then
	Binesh.AddUnknown("���� ��ؘǘ �������", "Mus")
end

Findfs_max = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��ؘǘ �� ������ �ј�");
if Findfs_max ~= -1 and ListBox.GetItemData("unknowns", Findfs_max) == "fs,max" and ListBox.FindItem("Words", -1, LB_BYTEXT, "��ؘǘ �� ������ �ј�") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "fs,max") ~= -1 then
	if N ~= nil and Mus ~= nil then
		Binesh.CreateHTMLFile("f<sub>s,max</sub> = Mu<sub>s</sub>N")
		fs_max = Mus*N
		
		Binesh.AddToHTML("f<sub>s,max</sub> = "..Mus.."*"..N.." &#8658; f<sub>s,max</sub> = "..fs_max.." N")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("N: "..N.." N", "V")
		Binesh.AddToHTML("Mu<sub>s</sub>: "..Mus, "V")
		Binesh.AddToHTML("f<sub>s,max</sub>: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��ؘǘ �� ������ �ј�");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "fs,max");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindN = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
if FindN ~= -1 and ListBox.GetItemData("unknowns", FindN) == "N" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1 then
	if fs_max ~= nil and Mus ~= nil then
		Binesh.CreateHTMLFile("f<sub>s,max</sub> = Mu<sub>s</sub>N", "N = <span>f<sub>s,max</sub>/Mu<sub>s</sub></span>")
		N = fs_max/Mus
		
		Binesh.AddToHTML("N = <span>"..fs_max.."/"..Mus.."</span> &#8658; N = "..N.." N")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("f<sub>s,max</sub>: "..fs,max.." N", "V")
		Binesh.AddToHTML("Mu<sub>s</sub>: "..Mus, "V")
		Binesh.AddToHTML("N: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "N");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindMus = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ��ؘǘ �������");
if FindMus ~= -1 and ListBox.GetItemData("unknowns", FindMus) == "Mus" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���� ��ؘǘ �������") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Mus") ~= -1 then
	if fs_max ~= nil and Mus ~= nil then
		Binesh.CreateHTMLFile("f<sub>s,max</sub> = Mu<sub>s</sub>N", "Mu<sub>s</sub> = <span>f<sub>s,max</sub>/N</span>")
		N = fs_max/Mus
		
		Binesh.AddToHTML("Mu<sub>s</sub> = <span>"..fs,max.."/"..N.."</span> &#8658; Mu<sub>s</sub> = "..Mus)
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("f<sub>s,max</sub>: "..fs,max.." N", "V")
		Binesh.AddToHTML("N: "..N.." N", "V")
		Binesh.AddToHTML("Mu<sub>s</sub>: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ��ؘǘ �������");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Mus");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end