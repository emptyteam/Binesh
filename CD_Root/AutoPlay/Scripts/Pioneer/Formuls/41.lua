if V0_Speed == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'V0' then
		ListBox.AddItem("unknowns", "«Ê·Ì‰ ”—⁄ ", "V0");
	end
end

if a == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‘ «»")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'a' then
		ListBox.AddItem("unknowns", "‘ «»", "a");
	end
end

FindV0_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ")
Finda = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‘ «»");
FindDeltax = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã«»Ã«ÌÌ")
Findx1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Ã«»Ã«ÌÌ")
Findx2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ Ã«»Ã«ÌÌ")

if Finda ~= -1 and ListBox.GetItemData("unknowns", Finda) == "a" and ListBox.FindItem("Words", -1, LB_BYTEXT, "‘ «»") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "a") ~= -1 then
	if V0_Speed ~= nil and _Deltax ~= nil then
		Binesh.CreateHTMLFile("Deltax = <span>V<sub>0</sub><sup>2</sup>/2a</span>", "a = <span>V<sub>0</sub><sup>2</sup>/2Deltax</span>")
		a = V0_Speed^2/2*_Deltax
		Binesh.AddToHTML("a = <span>"..V0_Speed.."<sup>2</sup>/2*".._Deltax.."</span> &#8658; a = "..a.." m/s<sup>2</sup>")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‘ «»");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "a");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindV0_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV0_Speed) == "V0" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V0") ~= -1 then 
	if a ~= nil and _Deltax ~= nil then
		Binesh.CreateHTMLFile("Deltax = <span>V<sub>0</sub><sup>2</sup>/2a</span>", " V<sub>0</sub> = sqrt(2aDeltax)")
		V0_Speed = Math.Sqrt(2*a*_Deltax);
		Binesh.AddToHTML("V<sub>0</sub> = sqrt(2*"..a.."*".._Deltax..")</span> &#8658; V<sub>0</sub> = "..V0_Speed.." m/s")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V0");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindDeltax ~= -1 and ListBox.GetItemData("unknowns", FindDeltax) == "Deltax" and (ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— „ò«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ „ò«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ „ò«‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltax") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "x1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "x2") ~= -1) then
	if a ~= nil and V0_Speed ~= nil then
		Binesh.CreateHTMLFile("Deltax = <span>V<sub>0</sub><sup>2</sup>/2a</span>")
	    _Deltax = (V0_Speed^2)/(2*a)
		Binesh.AddToHTML("Deltax = <span>"..V0_Speed.."<sup>2</sup>/2*"..a.."</span> &#8658; Deltax = ".._Deltax.." m")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— Ã«»Ã«ÌÌ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Deltax");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end