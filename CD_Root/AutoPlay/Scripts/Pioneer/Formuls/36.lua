if t0 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LBBYTEXT, "«Ê·Ì‰ “„«‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 't0' then
		ListBox.AddItem("unknowns", "«Ê·Ì‰ “„«‰", "t0");
	end
end


if V0_Speed == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LBBYTEXT, "«Ê·Ì‰ ”—⁄ ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'V0' then
		ListBox.AddItem("unknowns", "«Ê·Ì‰ ”—⁄ ", "V0");
	end
end

if a == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LBBYTEXT, "‘ «»")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'a' then
		ListBox.AddItem("unknowns", "‘ «»", "a");
	end
end

Findt0 = ListBox.FindItem("unknowns", -1, LBBYTEXT, "«Ê·Ì‰ “„«‰")
FindV0_Speed = ListBox.FindItem("unknowns", -1, LBBYTEXT, "«Ê·Ì‰ ”—⁄ ");
Finda = ListBox.FindItem("unknowns", -1, LBBYTEXT, "‘ «»")

if Findt0 ~= -1 and ListBox.GetItemData("unknowns", Findt0) == "t0" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ “„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t0") ~= -1 then
	if V0_Speed ~= nil and a ~= nil then
		Binesh.CreateHTMLFile("t<sub>0</sub> = <span>V<sub>0</sub>/a</span>")
		t0 = (V0_Speed)/(a)
		
		Binesh.AddToHTML("t<sub>0</sub> = <span>"..V0.."/"..a.."</span> &#8658; t<sub>0</sub> = "..t0.." s")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("V<sub>0</sub> = "..V0_Speed.." m/s","V")
		Binesh.AddToHTML("a = "..a.." m/s<sup>2</sup>","V")
		Binesh.AddToHTML("t<sub>0</sub> = "..t0.." s","V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LBBYTEXT, "«Ê·Ì‰ “„«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LBBYDATA, "t0");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindV0_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV0_Speed) == "V0" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t0") ~= -1 then
	if t0 ~= nil and a ~= nil then
		Binesh.CreateHTMLFile("t<sub>0</sub> = <span>V<sub>0</sub>/a</span>", "V<sub>0</sub> = t<sub>0</sub>*a")
		V0_Speed = (t0)*(a)
		
		Binesh.AddToHTML("V<sub>0</sub> = "..t0.."*"..a.." &#8658; V<sub>0</sub> = "..V0_Speed.." m/s")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("t<sub>0</sub> = "..t0.." s","V")
		Binesh.AddToHTML("a = "..a.." m/s<sup>2</sup>","V")
		Binesh.AddToHTML("V<sub>0</sub> = "..V0_Speed.." m/s","V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LBBYTEXT, "«Ê·Ì‰ ”—⁄ ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LBBYDATA, "V0");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Finda ~= -1 and ListBox.GetItemData("unknowns", Finda) == "a" and ListBox.FindItem("Words", -1, LB_BYTEXT, "‘ «»") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "a") ~= -1 then
	if t0 ~= nil and V0_Speed ~= nil then
		Binesh.CreateHTMLFile("t<sub>0</sub> = <span>V<sub>0</sub>/a</span>", "a = <span>V<sub>0</sub>/t<sub>0</sub></span>")
		a = (V0_Speed)/(t0)
		
		Binesh.AddToHTML("a = <span>"..V0_Speed.."/"..t0.."</span> &#8658; a = "..a.." m/s<sup>2</sup>")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("V<sub>0</sub> = "..V0_Speed.." m/s","V")
		Binesh.AddToHTML("t<sub>0</sub> = "..t0.." s","V")
		Binesh.AddToHTML("a = "..a.." m/s<sup>2</sup>","V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LBBYTEXT, "‘ «»");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LBBYDATA, "a");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end