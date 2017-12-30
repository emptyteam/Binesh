function Binesh.F35_1()
	if _V2_Speed == nil then
		Binesh.AddUnknown("����� ����", "V")
	end
	
	if _V1_Speed == nil then
		Binesh.AddUnknown("����� ����", "V0")
	end
	
	FindV2_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����");
	if FindV2_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV2_Speed) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "���� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then 
		if a ~= nil and t ~= nil and V0_Speed ~= nil then
			Binesh.CreateHTMLFile("V = at+V<sub>0</sub>")
			V2_Speed = (a*t)+V0_Speed
			
			Binesh.AddToHTML("V = "..a.."*"..t.."+"..V0_Speed.." &#8658; V = "..V2_Speed.." m/s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>" , "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("V<sub>0</sub>: "..V0_Speed.." m/s", "V")
			Binesh.AddToHTML("V<sub>2</sub>: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindV0_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����");
	if FindV0_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV0_Speed) == "V0" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "���� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V0") ~= -1 then
		if V2_Speed ~= nil and a ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("V = at+V<sub>0</sub>", "V<sub>0</sub> = V-at")
			V0_Speed = V2_Speed-(a*t)
			
			Binesh.AddToHTML("V<sub>0</sub> = "..V2_Speed.."-"..a.."*"..t.." &#8658; V<sub>0</sub> = "..V0_Speed.." m/s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("V<sub>2</sub>: "..V2_Speed.." m/s", "V")
			Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>" , "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("V<sub>0</sub>: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V0");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end