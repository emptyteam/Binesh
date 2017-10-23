-- W_77 = Binesh.Genesis("���", "W", "", "", 1, "J", "���", false);
if W == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'W' then
		ListBox.AddItem("unknowns", "���", "W");
	end
end

--n = Binesh.Genesis("���", "n", "", "", 1, "mol", "���", false);
if n == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'n' then
		ListBox.AddItem("unknowns", "���", "n");
	end
end

Findn = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���")
FindW = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���")
FindDeltaT = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")
FindT1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")
FindT2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ���")

if FindW ~= -1 and ListBox.GetItemData("unknowns", FindW) == "W" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1 then
	if n ~= nil and _DeltaTeta ~= nil then
		Binesh.CreateHTMLFile("W = nRDeltaT")
		W = n*Zarib.R*_DeltaT
		Binesh.AddToHTML("W = "..n.."*"..Zarib.R.."*".._DeltaT.." &#8658; W = "..W.." J")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "W");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findn ~= -1 and ListBox.GetItemData("unknowns", Findn) == "n" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1 then 
	if W ~= nil and _DeltaTeta ~= nil then
		Binesh.CreateHTMLFile("W = nRDeltaT", "n = <span>W/DeltaTR</span>")
		n = W/_DeltaT*Zarib.R
		Binesh.AddToHTML("n = <span>"..W.."/".._DeltaT.."*"..Zarib.R.."</span> &#8658; n = "..n.." mol")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "n");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindDeltaTeta ~= -1 and ListBox.GetItemData("unknowns", FindDeltaTeta) == "DeltaTeta" and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta2") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaT") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T2") ~= -1) then
	if n ~= nil and W ~= nil then
		Binesh.CreateHTMLFile("W = nRDeltaT", "DeltaT = <span>W/nR</span>")
		_DeltaT = W/n*Zarib.R
		Binesh.AddToHTML("DeltaT = <span>"..W.."/"..n.."*"..Zarib.R.."</span> &#8658; DeltaT = ".._DeltaT.."<sup>o</sup>K")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaT");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end