if Omega == nil then
	Binesh.AddUnknown("»”«„œ", "Omega")
end

if T_141 == nil then
	Binesh.AddUnknown("œÊ—«‰", "T")
end

FindOmega = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "»”«„œ");
if FindOmega ~= -1 and ListBox.GetItemData("unknowns", FindOmega) == "Omega" and ListBox.FindItem("Words", -1, LB_BYTEXT, "»”«„œ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Omega") ~= -1 then
	if T_141 ~= nil then
		Binesh.CreateHTMLFile("Omega = <span>2Pi/T</span>")
		
		Omega = 2*Zarib.Pi/T_141
		
		Binesh.AddToHTML("Omega = <span>2*"..Zarib.Pi.."/"..T_141.."</span> &#8658; Omega = "..Omega.." rad/s")
		
		Binesh.AddToHTML("T: "..T_141, "V")
		Binesh.AddToHTML("Omega: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "»”«„œ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Omega");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindT_141 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ—«‰");
if FindT_141 ~= -1 and ListBox.GetItemData("unknowns", FindT_141) == "T" and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ—«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T") ~= -1 then
	if Oemga ~= nil then
		Binesh.CreateHTMLFile("Omega = <span>2Pi/T</span>", "T = <span>2Pi/Omega</span>")
		
		T_141 = 2*Zarib.Pi/Omega
		
		Binesh.AddToHTML("T = <span>2*"..Zarib.Pi.."/"..Omega.."</span> &#8658; T = "..T_141)
		
		Binesh.AddToHTML("Omega: "..Omega.." rad/s", "V")
		Binesh.AddToHTML("T: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ—«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "T");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end