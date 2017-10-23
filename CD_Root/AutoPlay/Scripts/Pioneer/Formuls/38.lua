if V1_Speed == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'V1' then
		ListBox.AddItem("unknowns", "«Ê·Ì‰ ”—⁄ ", "V1");
	end
end

if V2_Speed == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ”—⁄ ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'V2' then
		ListBox.AddItem("unknowns", "œÊ„Ì‰ ”—⁄ ", "V2");
	end
end

FindV1_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ")
FindV2_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ”—⁄ ");
FindDeltax = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— Ã«»Ã«ÌÌ")
Findx1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Ã«»Ã«ÌÌ")
Findx2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ Ã«»Ã«ÌÌ")
FindDeltat = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— “„«‰")
Findt1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ “„«‰")
Findt2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ “„«‰")


if FindDeltat ~= -1 and ListBox.GetItemData("unknowns", FindDeltat) == "Deltat" and (ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— “„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ “„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ “„«‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltat") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t2") ~= -1) then
	if V2_Speed ~= nil and V1_Speed ~= nil and _Deltax ~= nil then
		Binesh.CreateHTMLFile("Deltax = <span>V<sub>1</sub>+V<sub>2</sub>/2</span>Deltat", "Deltat = <span>2Deltax/V<sub>1</sub>+V<sub>2</sub></span>")
		_Deltat = 2*_Deltax/(V1_Speed+V2_Speed)
		
		Binesh.AddToHTML("Deltat = <span>2*".._Deltax.."/"..V1_Speed.."*"..V2_Speed.."</span> &#8658; Deltat = ".._Deltat.." s")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— “„«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Deltat");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindV1_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV1_Speed) == "V1" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1 then
	if V2_Speed ~= nil and _Deltat ~= nil and _Deltax ~= nil then
		Binesh.CreateHTMLFile("Deltax = <span>V<sub>1</sub>+V<sub>2</sub>/2</span>Deltat", "V<sub>1</sub> = <span>2Deltax-V<sub>2</sub>Deltat/Deltat</span>")
		V1_Speed = _Deltax*2-V2_Speed*_Deltat/_Deltat
		
		Binesh.AddToHTML("V<sub>1</sub> = <span>".._Deltax.."*2-"..V2_Speed.."*".._Deltat.."/".._Deltat.."</span> &#8658; V<sub>1</sub> = "..V1_Speed.." m/s")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindV2_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV2_Speed) == "V2" and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V2") ~= -1 then
	if V1_Speed ~= nil and _Deltat ~= nil and _Deltax ~= nil then
		Binesh.CreateHTMLFile("Deltax = <span>V<sub>1</sub>+V<sub>2</sub>/2</span>Deltat", "V<sub>2</sub> = <span>2*Deltax-V<sub>1</sub>Deltat/Deltat</span>")
		V2_Speed = _Deltax*2-V1_Speed*_Deltat/_Deltat
		
		Binesh.AddToHTML("V<sub>2</sub> = <span>".._Deltax.."*2-"..V1_Speed.."*".._Deltat.."/".._Deltat.."</span> &#8658; V<sub>2</sub> = "..V2_Speed.." m/s")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ”—⁄ ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindDeltax ~= -1 and ListBox.GetItemData("unknowns", FindDeltax) == "Deltax" and (ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— „ò«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ „ò«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ „ò«‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltax") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "x1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "x2") ~= -1) then
	if V2_Speed ~= nil and _Deltat ~= nil and V1_Speed ~= nil then
		Binesh.CreateHTMLFile("Deltax = <span>V<sub>1</sub>+V<sub>2</sub>/2</span>Deltat")
		_Deltax = ((V1+V2)/2)*_Deltat
		
		Binesh.AddToHTML("Deltax = <span>"..V1.."+"..V2.."/2</span>*".._Deltat.." &#8658; Deltax = ".._Deltax.." m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— Ã«»Ã«ÌÌ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Deltax");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end