if x == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ „ò«‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'x' then
		ListBox.AddItem("unknowns", "œÊ„Ì‰ „ò«‰", "x");
	end
end

if V_Speed == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”—⁄ ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'V' then
		ListBox.AddItem("unknowns", "”—⁄ ", "V");
	end
end

if t == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 't' then
		ListBox.AddItem("unknowns", "“„«‰", "t");
	end
end

if x0 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ „ò«‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'x0' then
		ListBox.AddItem("unknowns", "«Ê·Ì‰ „ò«‰", "x0");
	end
end

Findx = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ „ò«‰")
FindV_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”—⁄ ")
Findt = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰")
Findx0 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ „ò«‰")

if Findx ~= -1 and ListBox.GetItemData("unknowns", Findx) == "x" and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ „ò«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "x") ~= -1 then
	if V_Speed ~= nil and t ~= nil and x0 ~= nil then
		Binesh.CreateHTMLFile("x = Vt+x<sub>0</sub>")
		x = V_Speed*t + x0
		
		Binesh.AddToHTML("x = "..V_Speed.."*"..t.."+"..x0.." &#8658; x = "..x.." m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("V = "..V_Speed.." m/s","V")
		Binesh.AddToHTML("t = "..t.." s","V")
		Binesh.AddToHTML("x<sub>0</sub> = "..x0.." m","V")
		Binesh.AddToHTML("x = "..x.." m","V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ „ò«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "x");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindV_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV_Speed) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
	if x ~= nil and t ~= nil and x0 ~= nil then
		Binesh.CreateHTMLFile("x = V*t+x<sub>0</sub>", "V = <span>x-x<sub>0</sub>/t</span>")
		V_Speed = x-x0/t
		
		Binesh.AddToHTML("V = <span>"..x.."-"..x0.."/"..t.."</span> &#8658; V = "..V_Speed.." <span>m/s</span>")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("x = "..x.." m","V")
		Binesh.AddToHTML("x<sub>0</sub> = "..x0.." m","V")
		Binesh.AddToHTML("t = "..t.." s","V")
		Binesh.AddToHTML("V = "..V_Speed.." m/s","V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”—⁄ ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findt ~= -1 and ListBox.GetItemData("unknowns", Findt) == "t" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1 then
	if x ~= nil and V_Speed ~= nil and x0 ~= nil then
		Binesh.CreateHTMLFile("x = V*t+x<sub>0</sub>", "t = <span>x-x<sub>0</sub>/V</span>")
		t = x-x0/V_Speed
		
		Binesh.AddToHTML("t = <span>("..x.."-"..x0..")/"..V_Speed.."</span> &#8658; t = "..t.." s")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("x = "..x.." m","V")
		Binesh.AddToHTML("x<sub>0</sub> = "..x0.." m","V")
		Binesh.AddToHTML("V = "..V_Speed.." m/s","V")
		Binesh.AddToHTML("t = "..t.." s","V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "t");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findx0 ~= -1 and ListBox.GetItemData("unknowns", Findx0) == "x0" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ „ò«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "X0") ~= -1 then
	if x ~= nil and V_Speed ~= nil and t ~= nil then
		Binesh.CreateHTMLFile("x = V*t+x<sub>0</sub>", "x<sub>0</sub> = x-Vt")
		x0 = x-V_Speed*t
		
		Binesh.AddToHTML("x<sub>0</sub> = "..x.."-"..V_Speed.."*"..t.." &#8658; x<sub>0</sub. = "..x0.."m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("x = "..x.." m","V")
		Binesh.AddToHTML("V = "..V_Speed.." m/s","V")
		Binesh.AddToHTML("t = "..t.." s","V")
		Binesh.AddToHTML("x<sub>0</sub> = "..x0.." m","V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ „ò«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "x0");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end