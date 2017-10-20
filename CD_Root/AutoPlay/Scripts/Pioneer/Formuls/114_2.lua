if U_Output == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ „’—›Ì")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'U' then
		ListBox.AddItem("unknowns", "«‰—éÌ „’—›Ì", "U");
	end
end

-- I114 = Binesh.Genesis("Ã—Ì«‰", "I", "", "", 1, "A", "¬„Å—", false);
if I == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'I' then
		ListBox.AddItem("unknowns", "Ã—Ì«‰", "I");
	end
end

-- V_97 = Binesh.Genesis("Ê· «é", "V", "", "", 1, "V", "Ê· ", false);
if V_Electric == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'V' then
		ListBox.AddItem("unknowns", "Ê· «é", "V");
	end
end

-- t114 = Binesh.Genesis("“„«‰", "t", "", "", 1, "s", "À«‰ÌÂ", false);
if t == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 't' then
		ListBox.AddItem("unknowns", "“„«‰", "t");
	end
end

FindU_Output = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ „’—›Ì")
FindI = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
FindV_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é");
Findt = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰")

if FindU_Output ~= -1 and ListBox.GetItemData("unknowns", FindU_Output) == "U" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ „’—›Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1 then
	if I ~= nil and t ~= nil and V_Electric ~= nil then
		U_Output =  V_Electric * I * t
		
		Binesh.CreateHTMLFile("U =  I*V*t")
		Binesh.AddToHTML("U = "..V_Electric.."*"..I.."*"..t.." &#8658; U = "..U_Output.."J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ „’—›Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "U");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindI ~= -1 and ListBox.GetItemData("unknowns", FindI) == "I" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
	if U_Output ~= nil and V_Electric ~= nil and t ~= nil then
		I = U_Output/V_Electric*t
		
		Binesh.CreateHTMLFile("U = V*I*t", "I = <span>U/V*t</span>")
		Binesh.AddToHTML("I = <span>"..U_Output.."/"..V_Electric.."*"..t.."</span> &#8658; I = "..I.."A")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "I");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindV_Electric ~= -1 and ListBox.GetItemData("unknowns", FindV_Electric) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
	if I ~= nil and t ~= nil and U_Output ~= nil then
		V_Electric = U/I*t
		
		Binesh.CreateHTMLFile("U = V*I*t", "V = <span>U/I*t</span>")
		Binesh.AddToHTML("V = <span>"..U.."/"..I.."*"..t.."</span> &#8658; V = "..V_Electric.."V")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findt ~= -1 and ListBox.GetItemData("unknowns", Findt) == "t" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1 then
	if V_Electric ~= nil and I ~= nil and U_Output ~= nil then
		t = U/I*V_Electric
		
		Binesh.CreateHTMLFile("U = V*I*t", "t = <span>U/I*V</span>")
		Binesh.AddToHTML("t = <span>"..U_Output.."/"..I.."*"..V_Electric.."</span> &#8658; t = "..t.."s")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "t");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end