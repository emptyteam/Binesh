if EtaK == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� �����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Eta_max' then
		ListBox.AddItem("unknowns", "����� �����", "Eta_max");
	end
end

if QC == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'QC' then
		ListBox.AddItem("unknowns", "���� ���", "QC");
	end
end

if QH == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'QH' then
		ListBox.AddItem("unknowns", "���� ���", "QH");
	end
end

FindEtaK = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� �����")
FindQC = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ���");
FindQH = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ���")

if FindEtaK ~= -1 and ListBox.GetItemData("unknowns", FindEtaK) == "Eta_max" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Eta_max") ~= -1 then 
	if QC ~= nil and QH ~= nil then
		Binesh.CreateHTMLFile("Eta<sub>max</sub> = 1-<span>|Q<sub>C</sub>|/Q<sub>H</sub></span>")
		EtaK = 1-Math.Abs(QC)/QH
		
		Binesh.AddToHTML("Eta<sub>max</sub> = 1-<span>"..Math.Abs(QC).."/"..QH.."</span> &#8658; Eta<sub>max</sub> = "..EtaK)
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� �����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Eta_max");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindQC ~= -1 and ListBox.GetItemData("unknowns", FindQH) == "QH" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "QH") ~= -1 then 
	if EtaK ~= nil and QH ~= nil then
		Binesh.CreateHTMLFile("Eta<sub>max</sub> = 1-<span>|Q<sub>C</sub>|/Q<sub>H</sub></span>", "Q<sub>C</sub> = |-(-1+Eta<sub>max</sub>)*Q<sub>H</sub>|")
		QC = Math.Abs(-(-1+EtaK)*QH)
		
		Binesh.AddToHTML("Q<sub>C</sub> = -(-1+"..EtaK..")*"..QH.." &#8658; Q<sub>C</sub> = "..QC.."K")
		Web.Refresh("Web1");

		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "QC");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindQH ~= -1 and ListBox.GetItemData("unknowns", FindQH) == "QH" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "QH") ~= -1 then 
	if EtaK ~= nil and QC ~= nil then
		Binesh.CreateHTMLFile("Eta<sub>max</sub> = 1-<span>|Q<sub>C</sub>|/Q<sub>H</sub></span>", "Q<sub>H</sub> = <span>-|Q<sub>C</sub>|/Eta<sub>max</sub>-1</span>")
		QH = -Math.Abs(QC)/(EtaK-1)
		
		Binesh.AddToHTML("Q<sub>H</sub> = -<span>"..Math.Abs(QC).."/("..EtaK.."-1)</span> &#8658; Q<sub>H</sub> = "..QH.."J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "QH");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end