-- B_132 = Binesh.Genesis("�����", "B", "", "", 1, "T", "����", false);
if B == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'B' then
		ListBox.AddItem("unknowns", "�����", "B");
	end
end
-- N_Ring_132 = Binesh.Genesis("����", "N", "", "", 1, "", "���", false);
if N_Ring == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'N' then
		ListBox.AddItem("unknowns", "����", "N");
	end
end
-- l_132 = Binesh.Genesis("���", "l", "", "", 1, "m", "���", false);
if l == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'l' then
		ListBox.AddItem("unknowns", "���", "l");
	end
end
-- I_132 = Binesh.Genesis("�����", "I", "", "", 1, "A", "���", false);
if I == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'I' then
		ListBox.AddItem("unknowns", "�����", "I");
	end
end

FindB = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����")
FindN_Ring = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
Findl = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���")
FindI = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����")

if FindB ~= -1 and ListBox.GetItemData("unknowns", FindB) == "B" and ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1 then
	if l ~= nil and I ~= nil and N_Ring ~= nil then
		Binesh.CreateHTMLFile("B = Mu<sub>0</sub>*<span>N/l</span>*I")
		B = 4*Zarib.Pi*10^-7*(N_Ring/l)*I
		
		Binesh.AddToHTML("B = Mu<sub>0</sub>*<span>"..N_Ring.."/"..l.."</span>*"..I.." &#8658; B = "..B.."T")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "B");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findl ~= -1 and ListBox.GetItemData("unknowns", Findl) == "l" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "l") ~= -1 then
	if I ~= nil and B ~= nil and N_Ring ~= nil then
		Binesh.CreateHTMLFile("B = Mu<sub>0</sub>*<span>N/l</span>*I", "l = <span>Mu<sub>0</sub><span>N/B</span>*I</span>")
		l = 4*Zarib.Pi*10^-7*(N_Ring/B)*I
		
		Binesh.AddToHTML("l = Mu<sub>0</sub>*<span>"..N_Ring.."/"..B.."</span>*"..I.." &#8658; l = "..l.."m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "l");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindI ~= -1 and ListBox.GetItemData("unknowns", FindI) == "I" and ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
	if B ~= nil and l ~= nil and I ~= nil then
		Binesh.CreateHTMLFile("B = Mu<sub>0</sub>*<span>N/l</span>*I", "I = <span>B*l/Mu<sub>0</sub>*N</span>")
		I = (B*l)/(4*Zarib.Pi*10^-7*N_Ring)
		
		Binesh.AddToHTML("I = <span>"..B.."*"..l.."/Mu<sub>0</sub>*"..N_Ring.."</span> &#8658; I = "..I.."A")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "I");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindN_Ring ~= -1 and ListBox.GetItemData("unknowns", FindN_Ring) == "N" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1 then
	if B ~= nil and l ~= nil and I ~= nil then
		Binesh.CreateHTMLFile("B = Mu<sub>0</sub>*<span>N/l</span>*I", "N = <span>B*l/u<sub>0</sub>*I</span>")
		N_Ring = (B*l)/(4*Zarib.Pi*10^-7*I)
		
		Binesh.AddToHTML("N = <span>"..B.."*"..l.."/Mu<sub>0</sub>*"..I.."</span> &#8658; N = "..N_Ring)
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "N");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end