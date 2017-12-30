function Binesh.F38_1()
	if V1_Speed == nil then
		Binesh.AddUnknown("«Ê·Ì‰ ”—⁄ ", "V1")
	end
	
	if V2_Speed == nil then
		Binesh.AddUnknown("œÊ„Ì‰ ”—⁄ ", "V2")
	end
	
	if _Deltax == nil then
		Binesh.AddUnknown(" €ÌÌ— Ã«»Ã«ÌÌ", "Deltax")
	end
	if _x1 == nil then
		Binesh.AddUnknown("«Ê·Ì‰ Ã«»Ã«ÌÌ", "x1")
	end
	if _x2 == nil then
		Binesh.AddUnknown("œÊ„Ì‰ Ã«»Ã«ÌÌ", "x2")
	end
	
	if _Deltat == nil then
		Binesh.AddUnknown(" €ÌÌ— “„«‰", "Deltat")
	end
	if _t1 == nil then
		Binesh.AddUnknown("«Ê·Ì‰ “„«‰", "t1")
	end
	if _t2 == nil then
		Binesh.AddUnknown("œÊ„Ì‰ “„«‰", "t2")
	end
	
	FindDeltat = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— “„«‰");
	if FindDeltat ~= -1 and ListBox.GetItemData("unknowns", FindDeltat) == "Deltat" and ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— “„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰  €ÌÌ—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltat") ~= -1 then
		if V2_Speed ~= nil and V1_Speed ~= nil and _Deltax ~= nil then
			Binesh.CreateHTMLFile("Deltax = <span>V<sub>1</sub>+V<sub>2</sub>/2</span>Deltat", "Deltat = <span>2Deltax/V<sub>1</sub>+V<sub>2</sub></span>")
			_Deltat = 2*_Deltax/(V1_Speed+V2_Speed)
			
			Binesh.AddToHTML("Deltat = <span>2*".._Deltax.."/"..V1_Speed.."+"..V2_Speed.."</span> &#8658; Deltat = ".._Deltat.." s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("Deltax: ".._Deltax.." m", "V")
			Binesh.AddToHTML("V<sub>1</sub>: "..V1_Speed.." m/s", "V")
			Binesh.AddToHTML("V<sun>2</sub>: "..V2_Speed.." m/s", "V")
			Binesh.AddToHTML("Deltat: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— “„«‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Deltat");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindV1_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ");
	if FindV1_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV1_Speed) == "V1" or ListBox.GetItemData("unknowns", FindV1_Speed) == "V0" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  «Ê·Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1 then
		if V2_Speed ~= nil and _Deltat ~= nil and _Deltax ~= nil then
			Binesh.CreateHTMLFile("Deltax = <span>V<sub>1</sub>+V<sub>2</sub>/2</span>Deltat", "V<sub>1</sub> = <span>2Deltax-V<sub>2</sub>Deltat/Deltat</span>")
			V1_Speed = ((_Deltax*2)-(V2_Speed*_Deltat))/_Deltat
			
			Binesh.AddToHTML("V<sub>1</sub> = <span>2*".._Deltax.."-"..V2_Speed.."*".._Deltat.."/".._Deltat.."</span> &#8658; V<sub>1</sub> = "..V1_Speed.." m/s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("Deltax: ".._Deltax.." m", "V")
			Binesh.AddToHTML("V<sun>2</sub>: "..V2_Speed.." m/s", "V")
			Binesh.AddToHTML("Deltat: ".._Deltat.." s", "V")
			Binesh.AddToHTML("V<sub>1</sub>: ?", "V")
					
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V1");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindV2_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ”—⁄ ");
	if FindV2_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV2_Speed) == "V2" and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  œÊ„Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V2") ~= -1 then
		if V1_Speed ~= nil and _Deltat ~= nil and _Deltax ~= nil then
			Binesh.CreateHTMLFile("Deltax = <span>V<sub>1</sub>+V<sub>2</sub>/2</span>Deltat", "V<sub>2</sub> = <span>2*Deltax-V<sub>1</sub>Deltat/Deltat</span>")
			V2_Speed = ((_Deltax*2)-(V1_Speed*_Deltat))/_Deltat
			
			Binesh.AddToHTML("V<sub>2</sub> = <span>2*".._Deltax.."-"..V1_Speed.."*".._Deltat.."/".._Deltat.."</span> &#8658; V<sub>2</sub> = "..V2_Speed.." m/s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("Deltax: ".._Deltax.." m", "V")
			Binesh.AddToHTML("V<sub>1</sub>: "..V1_Speed.." m/s", "V")
			Binesh.AddToHTML("Deltat: ".._Deltat.." s", "V")
			Binesh.AddToHTML("V<sun>2</sub>: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ”—⁄ ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V2");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindDeltax = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— Ã«»Ã«ÌÌ");
	if FindDeltax ~= -1 and ListBox.GetItemData("unknowns", FindDeltax) == "Deltax" and ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— Ã«»Ã«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã«»Ã«ÌÌ  €ÌÌ—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltax") ~= -1 then
		if V2_Speed ~= nil and _Deltat ~= nil and V1_Speed ~= nil then
			Binesh.CreateHTMLFile("Deltax = <span>V<sub>1</sub>+V<sub>2</sub>/2</span>Deltat")
			_Deltax = ((V1_Speed+V2_Speed)/2)*_Deltat
			
			Binesh.AddToHTML("Deltax = <span>"..V1_Speed.."+"..V2_Speed.."/2</span>*".._Deltat.." &#8658; Deltax = ".._Deltax.." m")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("V<sun>2</sub>: "..V2_Speed.." m/s", "V")
			Binesh.AddToHTML("V<sub>1</sub>: "..V1_Speed.." m/s", "V")
			Binesh.AddToHTML("Deltat: ".._Deltat.." s", "V")
			Binesh.AddToHTML("Deltax: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— Ã«»Ã«ÌÌ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Deltax");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end