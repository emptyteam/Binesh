function Binesh.F38_2()
	if _x1 == nil then
		Binesh.AddUnknown("«Ê·Ì‰ Ã«»Ã«ÌÌ", "x1")
	end
	if _x2 == nil then
		Binesh.AddUnknown("œÊ„Ì‰ Ã«»Ã«ÌÌ", "x2")
	end
	
	Findx1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Ã«»Ã«ÌÌ");
	if Findx1 ~= -1 and ListBox.GetItemData("unknowns", Findx1) == "x1" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ Ã«»Ã«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã«»Ã«ÌÌ «Ê·Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "x1") ~= -1 then
		if V2_Speed ~= nil and _Deltat ~= nil and V1_Speed ~= nil and _x2 ~= nil then
			Binesh.CreateHTMLFile("Deltax = <span>V<sub>1</sub>+V<sub>2</sub>/2</span>Deltat", "x<sub>1</sub> = x<sub>2</sub>- <span>V<sub>1</sub>+V<sub>2</sub>/2</span>Deltat")
			_x1 = ((-(V1_Speed+V2_Speed)/2)*_Deltat)+_x2
			
			Binesh.AddToHTML("x<sub>1</sub> = ".._x2.."- <span>"..V1_Speed.."+"..V2_Speed.."/2</span>*".._Deltat.." &#8658; x<sub>1</sub> = ".._x1.." m")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("x<sun>2</sub>: ".._x2.." m", "V")
			Binesh.AddToHTML("V<sub>1</sub>: "..V1_Speed.." m/s", "V")
			Binesh.AddToHTML("V<sun>2</sub>: "..V2_Speed.." m/s", "V")
			Binesh.AddToHTML("Deltat: ".._Deltat.." s", "V")
			Binesh.AddToHTML("x<sun>1</sub>: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Ã«»Ã«ÌÌ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "x1");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findx2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ Ã«»Ã«ÌÌ");
	if Findx2 ~= -1 and ListBox.GetItemData("unknowns", Findx2) == "x2" and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ Ã«»Ã«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã«»Ã«ÌÌ œÊ„Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "x2") ~= -1 then
		if V2_Speed ~= nil and _Deltat ~= nil and V1_Speed ~= nil and _x1 ~= nil then
			Binesh.CreateHTMLFile("Deltax = <span>V<sub>1</sub>+V<sub>2</sub>/2</span>Deltat", "x<sub>2</sub> = x<sub>1</sub>+ <span>V<sub>1</sub>+V<sub>2</sub>/2</span>Deltat")
			_x2 = (((V1_Speed+V2_Speed)/2)*_Deltat)+_x1
			
			Binesh.AddToHTML("x<sub>2</sub> = ".._x1.."+ <span>"..V1_Speed.."+"..V2_Speed.."/2</span>*".._Deltat.." &#8658; x<sub>2</sub> = ".._x2.." m")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("x<sun>1</sub>: ".._x1.." m", "V")
			Binesh.AddToHTML("V<sub>1</sub>: "..V1_Speed.." m/s", "V")
			Binesh.AddToHTML("V<sun>2</sub>: "..V2_Speed.." m/s", "V")
			Binesh.AddToHTML("Deltat: ".._Deltat.." s", "V")
			Binesh.AddToHTML("x<sun>2</sub>: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ Ã«»Ã«ÌÌ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "x2");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end