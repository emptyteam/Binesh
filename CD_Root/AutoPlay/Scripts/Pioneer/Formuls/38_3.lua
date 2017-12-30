function Binesh.F38_3()
	if _t1 == nil then
		Binesh.AddUnknown("«Ê·Ì‰ “„«‰", "t1")
	end
	if _t2 == nil then
		Binesh.AddUnknown("œÊ„Ì‰ “„«‰", "t2")
	end
	
	Findt1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ “„«‰");
	if Findt1 ~= -1 and ListBox.GetItemData("unknowns", Findt1) == "t1" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ “„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰ «Ê·Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t1") ~= -1 then
		if V2_Speed ~= nil and V1_Speed ~= nil and _Deltax ~= nil and _t2 ~= nil then
			Binesh.CreateHTMLFile("Deltax = <span>V<sub>1</sub>+V<sub>2</sub>/2</span>(t<sub>2</sub>-t<sub>1</sub>)", "t<sub>1</sub> = t<sub>2</sub>- <span>2Deltax/V<sub>1</sub>+V<sub>2</sub></span>")
			_t1 = (-2*_Deltax/(V1_Speed+V2_Speed))+_t2
			
			Binesh.AddToHTML("t<sub>1</sub> = ".._t2.."- <span>2*".._Deltax.."/"..V1_Speed.."+"..V2_Speed.."</span> &#8658; t<sub>1</sub> = ".._t1.." s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("t<sub>2</sub>: ".._t2.." s", "V")
			Binesh.AddToHTML("V<sun>2</sub>: "..V2_Speed.." m/s", "V")
			Binesh.AddToHTML("V<sub>1</sub>: "..V1_Speed.." m/s", "V")
			Binesh.AddToHTML("Deltax: ".._Deltax.." m", "V")
			Binesh.AddToHTML("t<sub>1</sub>: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ “„«‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "t1");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findt2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ “„«‰");
	if Findt2 ~= -1 and ListBox.GetItemData("unknowns", Findt2) == "t2" and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ “„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰ œÊ„Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t2") ~= -1 then
		if V2_Speed ~= nil and V1_Speed ~= nil and _Deltax ~= nil and _t1 ~= nil then
			Binesh.CreateHTMLFile("Deltax = <span>V<sub>1</sub>+V<sub>2</sub>/2</span>(t<sub>2</sub>-t<sub>1</sub>)", "t<sub>2</sub> = t<sub>1</sub>+ <span>2Deltax/V<sub>1</sub>+V<sub>2</sub></span>")
			_t2 = (2*_Deltax/(V1_Speed+V2_Speed))+_t1
			
			Binesh.AddToHTML("t<sub>2</sub> = ".._t1.."+ <span>2*".._Deltax.."/"..V1_Speed.."+"..V2_Speed.."</span> &#8658; t<sub>2</sub> = ".._t2.." s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("t<sub>1</sub>: ".._t1.." s", "V")
			Binesh.AddToHTML("V<sun>2</sub>: "..V2_Speed.." m/s", "V")
			Binesh.AddToHTML("V<sub>1</sub>: "..V1_Speed.." m/s", "V")
			Binesh.AddToHTML("Deltax: ".._Deltax.." m", "V")
			Binesh.AddToHTML("t<sub>1</sub>: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ “„«‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "t2");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end