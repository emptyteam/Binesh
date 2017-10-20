if L_Self == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ���������")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'L' then
		ListBox.AddItem("unknowns", "���� ���������", "L");
	end
end

if k_Self == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'k' then
		ListBox.AddItem("unknowns", "����", "k");
	end
end

-- N_Ring_139 = Binesh.Genesis("����", "N", "", "", 1, "", "���", false);
if N_Ring == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'N' then
		ListBox.AddItem("unknowns", "����", "N");
	end
end

-- A_139 = Binesh.Genesis("�����", "A", "", "", 1, "m^2", "��� ����", false);
if A == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'A' then
		ListBox.AddItem("unknowns", "�����", "A");
	end
end

-- I_139 = Binesh.Genesis("�����", "I", "", "", 1, "A", "���", false);
if I == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'I' then
		ListBox.AddItem("unknowns", "�����", "I");
	end
end

FindL_Self = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ��� ������")
Findk_Self = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
FindN_Ring = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����")
FindA = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����")
FindI = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����")

if FindL_Self ~= -1 and ListBox.GetItemData("unknowns", FindL_Self) == "L" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���� ��� ������") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L") ~= -1 then
	if k_Self ~= nil and N_Ring ~= nil and A ~= nil and I ~= nil then
		Binesh.CreateHTMLFile("L = k*Mu<sub>0</sub>*N<sup>2<sup><span>A/I</span>")
		L_Self = k_Self*4*Zarib.Pi*10^(-7)*N_Ring^2*A/I
		
		Binesh.AddToHTML("L = <span>"..k_Self.."*Mu<sub>0</sub>*"..N_Ring.."<sup>2</sup>*"..A.."/"..I.."</span> &#8658; L = "..L_Self)
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ��� ������");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "L");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findk_Self ~= -1 and ListBox.GetItemData("unknowns", Findk_Self) == "k" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "k") ~= -1 then
	if L_Self ~= nil and N_Ring ~= nil and A ~= nil and I ~= nil then
		Binesh.CreateHTMLFile("L = k*Mu<sub>0</sub>*N<sup>2<sup><span>A/I</span>", "k = <span>I*L/Mu<sub>0</sub>*N<sup>2</sup>*A</span>")
		k_Self = I*L_Self/4*Zarib.Pi*10^(-7)*N_Ring^2*A
		
		Binesh.AddToHTML("k = <span>"..I.."*"..L_Self.."/Mu<sub>0</sub>*"..N_Ring.."<sup>2</sup>*"..A.."</span> &#8658; k = "..k_Self)
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "k");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindN_Ring ~= -1 and ListBox.GetItemData("unknowns", FindN_Ring) == "N" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1 then
	if I ~= nil and L_Self ~= nil and k_Self ~= nil and A ~= nil then
		Binesh.CreateHTMLFile("L = k*Mu<sub>0</sub>*N<sup>2<sup><span>A/I</span>", "N = <span>I*L/Mu<sub>0</sub>*k*A</span>")
		
		N_Ring = I*L_Self/4*Zarib.Pi*10^(-7)*k_Self*A
		
		Binesh.AddToHTML("N = <span>"..I.."*"..L_Self.."/Mu<sub>0</sub>*"..k_Self.."*"..A.."</span> &#8658; N = "..N_Ring)
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "N");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindA ~= -1 and ListBox.GetItemData("unknowns", FindA) == "A" and ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "A") ~= -1 then
	if k_Self ~= nil and I ~= nil and L_Self ~= nil and N_Ring ~= nil then
		Binesh.CreateHTMLFile("L = k*Mu<sub>0</sub>*N<sup>2<sup><span>A/I</span>", "A = <span>L*I/Mu<sub>0</sub>*k*N<sup>2<sup></span>")
		
		A = L_Self*I/4*Zarib.Pi*10^(-7)*k_Self*N_Ring^2
		
		Binesh.AddToHTML("A = <span>"..L_Self.."*"..I.."/Mu<sub>0</sub>*"..k_Self.."*"..N_Ring.."<sup>2</sup></span> &#8658; A = "..A.."m<sup>2</sup>")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "A");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindI ~= -1 and ListBox.GetItemData("unknowns", FindI) == "I" and ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
	if k_Self ~= nil and N_Ring ~= nil and L_Self ~= nil and A ~= nil then
		Binesh.CreateHTMLFile("L = k*Mu<sub>0</sub>*N<sup>2<sup><span>A/I</span>", "I = <span>Mu<sub>0</sub>*k*N<sup>2<sup>*A/L</span>")
		
		I = k_Self*4*Zarib.Pi*10^(-7)*N_Ring^2*A/L_Self
		
		Binesh.AddToHTML("A = <span>"..L_Self.."*"..I.."/Mu<sub>0</sub>*"..k_Self.."*"..N_Ring.."<sup>2</sup></span> &#8658; A = "..A.."m<sup>2</sup>")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "I");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end