if P_Power == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " Ê«‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'P' then
		ListBox.AddItem("unknowns", " Ê«‰", "P");
	end
end

if V_Electric == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'V' then
		ListBox.AddItem("unknowns", "Ê· «é", "V");
	end
end

if R == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'R' then
		ListBox.AddItem("unknowns", "„ﬁ«Ê„ ", "R");
	end
end

FindP_Power = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " Ê«‰")
FindV_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é");
FindR = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ")

if FindP_Power ~= -1 and ListBox.GetItemData("unknowns", FindP_Power) == "P" and ListBox.FindItem("Words", -1, LB_BYTEXT, " Ê«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1 then
	if V_Electric ~= nil and R ~= nil then
		Binesh.CreateHTMLFile("P = <span>V<sup>2</sup>/R</span>")
		P_Power = V_Electric^2/R
		
		Binesh.AddToHTML("P = <span>"..V_Electric.."<sup>2</sup>/"..I.."</span> &#8658; P = "..P_Power.." W")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("V = "..V_Electric.." V" ,"V")
		Binesh.AddToHTML("R = "..R.." Ohm" ,"V")
		Binesh.AddToHTML("P = "..P_Power.." W" ,"V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " Ê«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "P");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindV_Electric ~= -1 and ListBox.GetItemData("unknowns", FindV_Electric) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
	if P_Power ~= nil and R ~= nil then
		Binesh.CreateHTMLFile("P = <span>V<sup>2</sup>/R</span>", "V = sqrt(PR)")
		V_Electric = math.sqrt(P_Power*R)
		
		Binesh.AddToHTML("V = sqrt("..P_Power.."*"..R..") &#8658; V = "..V_Electric.." V")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("P = "..P_Power.." W" ,"V")
		Binesh.AddToHTML("R = "..R.." Ohm" ,"V")
		Binesh.AddToHTML("V = "..V_Electric.." V" ,"V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindR ~= -1 and ListBox.GetItemData("unknowns", FindR) == "R" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1 then
	if P_Power ~= nil and V_Electric ~= nil then
		Binesh.CreateHTMLFile("P = <span>V<sup>2</sup>/R</span>", "R = <span>V<sup>2</sup>/P</span>")
		R = V_Electric^2/P_Power
		
		Binesh.AddToHTML("R = <span>"..V_Electric.."<sup>2</sup>/"..P_Power.."</span> &#8658; R = "..R.." Ohm")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("V = "..V_Electric.." V" ,"V")
		Binesh.AddToHTML("P = "..P_Power.." W" ,"V")
		Binesh.AddToHTML("R = "..R.." Ohm" ,"V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "R");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end