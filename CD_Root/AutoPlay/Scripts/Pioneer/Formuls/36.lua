if t0 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LBBYTEXT, "“„«‰")
	if UnknownNamePersian == -1 and ListBox.FindItem("unknowns", UnknownNamePersian, LB_BYDATA, "t0") == -1 then
		ListBox.AddItem("unknowns", "“„«‰", "t0");
	end
end


if V0_Speed == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LBBYTEXT, "”—⁄ ")
	if UnknownNamePersian == -1 and ListBox.FindItem("unknowns", UnknownNamePersian, LB_BYDATA, "V0") == -1 then
		ListBox.AddItem("unknowns", "”—⁄ ", "V0");
	end
end

if a == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LBBYTEXT, "‘ «»")
	if UnknownNamePersian == -1 and ListBox.FindItem("unknowns", UnknownNamePersian, LB_BYDATA, "a") == -1 then
		ListBox.AddItem("unknowns", "‘ «»", "a");
	end
end

Findt0 = ListBox.FindItem("unknowns", -1, LBBYTEXT, "“„«‰");
if Findt0 ~= -1 and ListBox.GetItemData("unknowns", Findt0) == "t0" or ListBox.GetItemData("unknowns", Findt0) == "t" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t0") ~= -1 then
	if V0_Speed ~= nil and a ~= nil then
		Binesh.CreateHTMLFile("t<sub>0</sub> = <span>V<sub>0</sub>/a</span>")
		t0 = (V0_Speed)/(a)
		
		Binesh.AddToHTML("t<sub>0</sub> = <span>"..V0_Speed.."/"..a.."</span> &#8658; t<sub>0</sub> = "..t0.." s")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LBBYTEXT, "“„«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LBBYDATA, "t0");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindV0_Speed = ListBox.FindItem("unknowns", -1, LBBYTEXT, "”—⁄ ");
if FindV0_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV0_Speed) == "V0" or ListBox.GetItemData("unknowns", FindV0_Speed) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V0") ~= -1 then
	if t0 ~= nil and a ~= nil then
		Binesh.CreateHTMLFile("t<sub>0</sub> = <span>V<sub>0</sub>/a</span>", "V<sub>0</sub> = t<sub>0</sub>*a")
		V0_Speed = (t0)*(a)
		
		Binesh.AddToHTML("V<sub>0</sub> = "..t0.."*"..a.." &#8658; V<sub>0</sub> = "..V0_Speed.." m/s")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LBBYTEXT, "”—⁄ ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LBBYDATA, "V0");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Finda = ListBox.FindItem("unknowns", -1, LBBYTEXT, "‘ «»");
if Finda ~= -1 and ListBox.GetItemData("unknowns", Finda) == "a" and ListBox.FindItem("Words", -1, LB_BYTEXT, "‘ «»") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "a") ~= -1 then
	if t0 ~= nil and V0_Speed ~= nil then
		Binesh.CreateHTMLFile("t<sub>0</sub> = <span>V<sub>0</sub>/a</span>", "a = <span>V<sub>0</sub>/t<sub>0</sub></span>")
		a = (V0_Speed)/(t0)
		
		Binesh.AddToHTML("a = <span>"..V0_Speed.."/"..t0.."</span> &#8658; a = "..a.." m/s<sup>2</sup>")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LBBYTEXT, "‘ «»");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LBBYDATA, "a");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end