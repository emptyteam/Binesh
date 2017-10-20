-- B_130 = Binesh.Genesis("�����", "B", "", "", 1, "T", "����", false);
if B == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'B' then
		ListBox.AddItem("unknowns", "�����", "B");
	end
end

-- I_130 = Binesh.Genesis("�����", "I", "", "", 1, "A", "���", false);
if I == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'I' then
		ListBox.AddItem("unknowns", "�����", "I");
	end
end

-- r_130 = Binesh.Genesis("�����", "r", "", "", 1, "m", "���", false);
if r_3 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'r' then
		ListBox.AddItem("unknowns", "�����", "r");
	end
end

FindB = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����")
FindI = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����");
Findr_3 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����")

if FindB ~= -1 and ListBox.GetItemData("unknowns", FindB) == "B" and ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1 then
	if I ~= nil and r_3 ~= nil then
		Binesh.CreateHTMLFile("B = <span>Mu<sub>0</sub>/2Pi</span>*<span>I/r</span>")
		B = 2*10^-7*I/r_3
		
		Binesh.AddToHTML("B = <span>4*"..Zarib.Pi.."*10<sup>-7</sup>/2*"..Zarib.Pi.."</span>*<span>"..I.."/"..r_3.."</span> &#8658; B = "..B.." T")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("I = "..I.." A" ,"V")
		Binesh.AddToHTML("r = "..r_3.." m" ,"V")
		Binesh.AddToHTML("B = "..B.." T" ,"V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "B");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindI ~= -1 and ListBox.GetItemData("unknowns", FindI) == "I" and ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
	if B ~= nil and r_3 ~= nil then
		Binesh.CreateHTMLFile("B = <span>Mu<sub>0</sub>/2Pi</span>*<span>I/r</span>", "I = <span>2PiBr/Mu<sub>0</sub></span>")
		I = B*r_3/2*10^-7
		
		Binesh.AddToHTML("I = <span>2*"..Zarib.Pi.."*"..B.."*"..r_3.."/4*"..Zarib.Pi.."*10<sup>-7</sup></span> &#8658; I = "..I.." A")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("B = "..B.." T" ,"V")
		Binesh.AddToHTML("r = "..r_3.." m" ,"V")
		Binesh.AddToHTML("I = "..I.." A" ,"V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "I");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findr_3 ~= -1 and ListBox.GetItemData("unknowns", Findr_3) == "r" and ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "r") ~= -1 then
	if B ~= nil and I ~= nil then
		Binesh.CreateHTMLFile("B = <span>Mu<sub>0</sub>/2Pi</span>*<span>I/r</span>", "r = <span>Mu<sub>0</sub>I/2PiB</span>")
		r_3 = 2*10^-7*I/B
		
		Binesh.AddToHTML("r = <span>4*"..Zarib.Pi.."*10<sup>-7</sup>*"..I.."/2*"..Zarib.Pi.."*"..B.."</span> &#8658; r = "..r_3.." m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("I = "..I.." A" ,"V")
		Binesh.AddToHTML("B = "..B.." T" ,"V")
		Binesh.AddToHTML("r = "..r_3.." m" ,"V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "r");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end