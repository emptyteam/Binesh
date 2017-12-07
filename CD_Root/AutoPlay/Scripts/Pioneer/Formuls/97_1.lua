if U == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'U' then
		ListBox.AddItem("unknowns", "«‰—éÌ", "U");
	end
end

if C_Condenser == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Œ«“‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'C' then
		ListBox.AddItem("unknowns", "Œ«“‰", "C");
	end
end

if V_Electric == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'V' then
		ListBox.AddItem("unknowns", "Ê· «é", "V");
	end
end

FindU = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ");
if FindU ~= -1 and ListBox.GetItemData("unknowns", FindU) == "U" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1 then
	if V_Electric ~= nil and C_Condenser ~= nil then
		Binesh.CreateHTMLFile("U = <span>1/2</span>CV<sup>2</sup>")
		U = 0.5*C_Condenser*V_Electric^2
		
		Binesh.AddToHTML("U = <span>1/2</span>*"..C_Condenser.."*"..V_Electric.."<sup>2</sup> &#8658; U = "..U.." J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "U");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindC_Condenser = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Œ«“‰");
if FindC_Condenser ~= -1 and ListBox.GetItemData("unknowns", FindC_Condenser) == "C" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Œ«“‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "C") ~= -1 then
	if V_Electric ~= nil and U ~= nil then
		Binesh.CreateHTMLFile("U = <span>1/2</span>CV<sup>2</sup>", "C = <span>2U/V<sup>2</sup></span>")
		C_Condenser = (2*U)/(V_Electric^2)
		
		Binesh.AddToHTML("C = <span>2*"..U.."/"..V_Electric.."<sup>2</sup></span> &#8658; C = "..C_Condenser.." F")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Œ«“‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "C");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindV_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é");
if FindV_Electric ~= -1 and ListBox.GetItemData("unknowns", FindV_Electric) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
	if U ~= nil and C_Condenser ~= nil then
		Binesh.CreateHTMLFile("U = 1/2CV<sup>2</sup>", "V = <span>Sqrt(2U/C)</span>")
		V_Electric = Math.Sqrt(2*U/C_Condenser)
		
		Binesh.AddToHTML("V = Sqrt(2*"..U.."/"..C_Condenser..") &#8658; V = "..V_Electric.." m/s")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end