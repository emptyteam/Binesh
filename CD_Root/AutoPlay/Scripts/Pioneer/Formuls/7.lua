if R == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'R' then
		ListBox.AddItem("unknowns", "„ﬁ«Ê„ ", "R");
	end
end

if V_Electric == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'V' then
		ListBox.AddItem("unknowns", "Ê· «é", "V");
	end
end

if I == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'I' then
		ListBox.AddItem("unknowns", "Ã—Ì«‰", "I");
	end
end

FindR = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ")
FindV_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é");
FindI = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰")

if FindR ~= -1 and ListBox.GetItemData("unknowns", FindR) == "R" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1 then
	if V_Electric ~= nil and I ~= nil then
		Binesh.CreateHTMLFile("R = <span>V/I</span>")
		R = V_Electric/I
		
		Binesh.AddToHTML("R = <span>"..V_Electric.."/"..I.."</span> &#8658; R = "..R.." Ohm")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("V = "..V_Electric.." V" ,"V")
		Binesh.AddToHTML("I = "..I.." A" ,"V")
		Binesh.AddToHTML("R = "..R.." Ohm" ,"V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "R");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindV_Electric ~= -1 and ListBox.GetItemData("unknowns", FindV_Electric) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
	if R ~= nil and I ~= nil then
		Binesh.CreateHTMLFile("R = <span>V/I</span>", "V = IR")
		V_Electric = R*I
		
		Binesh.AddToHTML("V = "..R.."*"..I.." &#8658; V = "..V_Electric.." V")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("R = "..R.." Ohm" ,"V")
		Binesh.AddToHTML("I = "..I.." A" ,"V")
		Binesh.AddToHTML("V = "..V_Electric.." V" ,"V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindI ~= -1 and ListBox.GetItemData("unknowns", FindI) == "I" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
	if R ~= nil and V_Electric ~= nil then
		Binesh.CreateHTMLFile("R = <span>V/I</span>", "I = <span>V/R</span>")
		I = V_Electric/R
		
		Binesh.AddToHTML("I = <span>"..V_Electric.."/"..R.."</span> &#8658; I = "..I.." A")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("V = "..V_Electric.." V" ,"V")
		Binesh.AddToHTML("R = "..R.." Ohm" ,"V")
		Binesh.AddToHTML("I = "..I.." A" ,"V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "I");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end