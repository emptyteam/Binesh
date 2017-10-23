-- W_77 = Binesh.Genesis("ò«—", "W", "", "", 1, "J", "éÊ·", false);
if W == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«—")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'W' then
		ListBox.AddItem("unknowns", "ò«—", "W");
	end
end

--n = Binesh.Genesis("„Ê·", "n", "", "", 1, "mol", "„Ê·", false);
if n == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ê·")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'n' then
		ListBox.AddItem("unknowns", "„Ê·", "n");
	end
end

Findn = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ê·")
FindW = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«—")
FindDeltaT = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— œ„«")
FindT1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«")
FindT2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«")

if FindW ~= -1 and ListBox.GetItemData("unknowns", FindW) == "W" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ò«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1 then
	if n ~= nil and _DeltaTeta ~= nil then
		Binesh.CreateHTMLFile("W = nRDeltaT")
		W = n*Zarib.R*_DeltaT
		Binesh.AddToHTML("W = "..n.."*"..Zarib.R.."*".._DeltaT.." &#8658; W = "..W.." J")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«—");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "W");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findn ~= -1 and ListBox.GetItemData("unknowns", Findn) == "n" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ê·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1 then 
	if W ~= nil and _DeltaTeta ~= nil then
		Binesh.CreateHTMLFile("W = nRDeltaT", "n = <span>W/DeltaTR</span>")
		n = W/_DeltaT*Zarib.R
		Binesh.AddToHTML("n = <span>"..W.."/".._DeltaT.."*"..Zarib.R.."</span> &#8658; n = "..n.." mol")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ê·");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "n");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindDeltaTeta ~= -1 and ListBox.GetItemData("unknowns", FindDeltaTeta) == "DeltaTeta" and (ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta2") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaT") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T2") ~= -1) then
	if n ~= nil and W ~= nil then
		Binesh.CreateHTMLFile("W = nRDeltaT", "DeltaT = <span>W/nR</span>")
		_DeltaT = W/n*Zarib.R
		Binesh.AddToHTML("DeltaT = <span>"..W.."/"..n.."*"..Zarib.R.."</span> &#8658; DeltaT = ".._DeltaT.."<sup>o</sup>K")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œ„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaT");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end