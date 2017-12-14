if V2_Speed == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����")
	if UnknownNamePersian == -1 and ListBox.FindItem("unknowns", UnknownNamePersian, LB_BYDATA, "V") == -1 then
		ListBox.AddItem("unknowns", "����� ����", "V");
	end
end

if a == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����")
	if UnknownNamePersian == -1 and ListBox.FindItem("unknowns", UnknownNamePersian, LB_BYDATA, "a") == -1 then
		ListBox.AddItem("unknowns", "����", "a");
	end
end

if t == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����")
	if UnknownNamePersian == -1 and ListBox.FindItem("unknowns", UnknownNamePersian, LB_BYDATA, "t") == -1 then
		ListBox.AddItem("unknowns", "����", "t");
	end
end

if V0_Speed == nil then
	ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����")
	if UnknownNamePersian == -1 and ListBox.FindItem("unknowns", UnknownNamePersian, LB_BYDATA, "V0") == -1 then
		ListBox.AddItem("unknowns", "����� ����", "V0");
	end
end

FindV2_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����");
if FindV2_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV2_Speed) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then 
	if a ~= nil and t ~= nil and V0_Speed ~= nil then
		Binesh.CreateHTMLFile("V = at+V<sub>0</sub>")
		V2_Speed = (a*t)+V0_Speed
		
		Binesh.AddToHTML("V = "..a.."*"..t.."+"..V0_Speed.." &#8658; V = "..V2_Speed.." m/s")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Finda = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
if Finda ~= -1 and ListBox.GetItemData("unknowns", Finda) == "a" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "a") ~= -1 then 
	if V2_Speed ~= nil and V0_Speed ~= nil and t ~= nil then
		Binesh.CreateHTMLFile("V = at+V<sub>0</sub>", "a = <span>V-V<sub>0</sub>/t</span>")
		a = (V2_Speed-V0_Speed)/t
		
		Binesh.AddToHTML("a = <span>"..V2_Speed.."-"..V0_Speed.."/"..t.."</span> &#8658; a = "..a.." m/s<sup>2</sup>")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "a");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findt = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
if Findt ~= -1 and ListBox.GetItemData("unknowns", Findt) == "t" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1 then
	if V2_Speed ~= nil and V0_Speed ~= nil and a ~= nil then
		Binesh.CreateHTMLFile("V = at+V<sub>0</sub>", "t = <span>V-V<sub>0</sub>/a</span>")
		t = (V2_Speed-V0_Speed)/a
		
		Binesh.AddToHTML("t = <span>"..V2_Speed.."-"..V0_Speed.."/"..a.."</span> &#8658; t = "..t.." s")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "s");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindV0_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����");
if FindV0_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV0_Speed) == "V0" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V0") ~= -1 then
	if V2_Speed ~= nil and a ~= nil and t ~= nil then
		Binesh.CreateHTMLFile("V = at+V<sub>0</sub>", "V<sub>0</sub> = V-at")
		V0_Speed = V2_Speed-(a*t)
		
		Binesh.AddToHTML("V<sub>0</sub> = "..V2_Speed.."-"..a.."*"..t.." &#8658; V<sub>0</sub> = "..V0_Speed.." m/s")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V0");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end