if fs_max == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��ؘǘ �� ������ �ј�")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'fs,max' then
		ListBox.AddItem("unknowns", "��ؘǘ �� ������ �ј�", "fs,max");
	end
end

if fk == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��ؘǘ �����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'fk' then
		ListBox.AddItem("unknowns", "��ؘǘ �����", "fk");
	end
end

if N == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'N' then
		ListBox.AddItem("unknowns", "����", "N");
	end
end

if Muk == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ��ؘǘ �����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Muk' then
		ListBox.AddItem("unknowns", "���� ��ؘǘ �����", "Muk");
	end
end

if Mus == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ��ؘǘ �������")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Mus' then
		ListBox.AddItem("unknowns", "���� ��ؘǘ �������", "Mus");
	end
end

Findfs_max = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��ؘǘ �� ������ �ј�")
Findfk = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��ؘǘ �����");
FindN = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����")
FindMuk = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ��ؘǘ �����")
FindMus = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ��ؘǘ �������")

if Findfs_max ~= -1 and ListBox.GetItemData("unknowns", Findfs_max) == "fs,max" and ListBox.FindItem("Words", -1, LB_BYTEXT, "������") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "h") ~= -1 then
	if N ~= nil and Mus ~= nil then
		Binesh.CreateHTMLFile("f<sub>s,max</sub> = Mu<sub>s</sub>*N")
		fs_max = Mus*N
		
		Binesh.AddToHTML("f<sub>s,max</sub> = "..Mus.."*"..N.." &#8658; f<sub>s,max</sub> = "..fs_max.."N")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��ؘǘ �� ������ �ј�");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "fs,max");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findfk ~= -1 and ListBox.GetItemData("unknowns", Findfk) == "fk" and ListBox.FindItem("Words", -1, LB_BYTEXT, "��ؘǘ �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "fk") ~= -1 then
	if N ~= nil and Muk ~= nil then
		Binesh.CreateHTMLFile("f<sub>k</sub> = Mu<sub>k</sub>*N")
		fk = Muk*N
		
		Binesh.AddToHTML("f<sub>k</sub> = "..Muk.."*"..N.." &#8658; f<sub>k</sub> = "..fk.."N")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��ؘǘ �����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "fk");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindN ~= -1 and ListBox.GetItemData("unknowns", FindN) == "N" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1 then
	if fs_max ~= nil and Mus ~= nil then
		Binesh.CreateHTMLFile("f<sub>s,max</sub> = Mu<sub>s</sub>*N", "N = <span>f<sub>s,max</sub>/Mu<sub>s</sub></span>")
		N = fs_max/Mus
		
		Binesh.AddToHTML("N = <span>"..fs_max.."/"..Mus.."</span> &#8658; N = "..N.."N")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "N");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	elseif fk ~= nil and Muk ~= nil then
		Binesh.CreateHTMLFile("f<sub>k</sub> = Mu<sub>k</sub>*N", "N = <span>f<sub>k</sub>/Mu<sub>k</sub></span>")
		N = fk/Muk
		
		Binesh.AddToHTML("N = <span>"..fk.."/"..Muk.."</span> &#8658; N = "..N.."N")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "N");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindMus ~= -1 and ListBox.GetItemData("unknowns", FindMus) == "Mus" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���� ��ؘǘ �������") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Mus") ~= -1 then
	if fs_max ~= nil and Mus ~= nil then
		Binesh.CreateHTMLFile("f<sub>s,max</sub> = Mu<sub>s</sub>*N", "Mu<sub>s</sub> = <span>f<sub>s,max</sub>/N</span>")
		N = fs_max/Mus
		
		Binesh.AddToHTML("Mu<sub>s</sub> = <span>"..fs,max.."/"..N.."</span> &#8658; Mu<sub>s</sub> = "..Mus)
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ��ؘǘ �������");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Mus");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	elseif fk ~= nil and Muk ~= nil then
		Binesh.CreateHTMLFile("f<sub>k</sub> = Mu<sub>k</sub>*N", "Mu<sub>k</sub> = <span>f<sub>k</sub>/N</span>")
		N = fk/Muk
		
		Binesh.AddToHTML("Mu<sub>k</sub> = <span>"..fk.."/"..N.."</span> &#8658; Mu<sub>k</sub> = "..Muk)
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ��ؘǘ �����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Muk");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end