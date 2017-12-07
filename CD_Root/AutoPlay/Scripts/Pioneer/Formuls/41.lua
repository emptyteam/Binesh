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

--------------------------{DELTA}--------------------------
FindDeltax = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— „ò«‰");
if FindDeltax ~= -1 and ListBox.GetItemData("unknowns", FindDeltax) == "Deltax" then
	if _x1 ~= nil and _x2 ~= nil then
		Binesh.CreateHTMLFile("Deltax = x<sub>2</sub>-x<sub>1</sub>")
		_Deltax = _x2 - _x1
		Binesh.AddToHTML("Deltax = ".._x2.."-".._x1.." &#8658; Deltax = ".._Deltax.." m")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— „ò«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Deltax");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findx1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ „ò«‰");
if Findx1 ~= -1 and ListBox.GetItemData("unknowns", Findx1) == "x1" then
	if _Deltax ~= nil and _x2 ~= nil then
		Binesh.CreateHTMLFile("Deltax = x<sub>2</sub>-x<sub>1</sub>", "x<sub>1</sub> = x<sub>2</sub>-Deltax")
		_x1 = _x2-_Deltax
		Binesh.AddToHTML("x<sub>1</sub> = ".._x2.."-".._Deltax.." &#8658; x<sub>1</sub> = ".._x1.." m")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ „ò«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "x1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findx2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ „ò«‰");
if Findx2 ~= -1 and ListBox.GetItemData("unknowns", Findx2) == "x2" then
	if _Deltax ~= nil and _x1 ~= nil then
		Binesh.CreateHTMLFile("Deltax = x<sub>2</sub>-x<sub>1</sub>", "x<sub>2</sub> = Deltax+x<sub>1</sub>")
		_x2 = _x1+_Deltax
		Binesh.AddToHTML("x<sub>2</sub> = ".._Deltax.."+".._x1.." &#8658; x<sub>2</sub> = ".._x2.." m")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ „ò«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "x2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end
--------------------------END {DELTA}--------------------------

Finda = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‘ «»");
if Finda ~= -1 and ListBox.GetItemData("unknowns", Finda) == "a" and ListBox.FindItem("Words", -1, LB_BYTEXT, "‘ «»") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "a") ~= -1 then
	if V0_Speed ~= nil and _Deltax ~= nil then
		Binesh.CreateHTMLFile("Deltax = <span>V<sub>0</sub><sup>2</sup>/2a</span>", "a = <span>V<sub>0</sub><sup>2</sup>/2Deltax</span>")
		a = V0_Speed^2/(2*_Deltax)
		Binesh.AddToHTML("a = <span>"..V0_Speed.."<sup>2</sup>/2*".._Deltax.."</span> &#8658; a = "..a.." m/s<sup>2</sup>")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‘ «»");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "a");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindV0_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ");
if FindV0_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV0_Speed) == "V0" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V0") ~= -1 then 
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
end

FindDeltax = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ò«‰");
if FindDeltax ~= -1 and ListBox.GetItemData("unknowns", FindDeltax) == "Deltax" and (ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— „ò«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ „ò«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ „ò«‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltax") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "x1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "x2") ~= -1) then
	if a ~= nil and V0_Speed ~= nil then
		Binesh.CreateHTMLFile("Deltax = <span>V<sub>0</sub><sup>2</sup>/2a</span>")
	    _Deltax = (V0_Speed^2)/(2*a)
		Binesh.AddToHTML("Deltax = <span>"..V0_Speed.."<sup>2</sup>/2*"..a.."</span> &#8658; Deltax = ".._Deltax.." m")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— „ò«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Deltax");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end