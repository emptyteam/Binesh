-- U_97 = Binesh.Genesis("«‰—éÌ Å «‰”Ì·", "U", "", "", 1, "J", "éÊ·", false);
if U == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ Å «‰”Ì·")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'U' then
		ListBox.AddItem("unknowns", "«‰—éÌ Å «‰”Ì·", "U");
	end
end

-- q_97 = Binesh.Genesis("–—Â", "q", "", "", 1, "C", "òÊ·‰", false);
if q == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'q' then
		ListBox.AddItem("unknowns", "–—Â", "q");
	end
end

-- V_Electric_97 = Binesh.Genesis("Ê· «é", "V", "", "", 1, "V", "Ê· ", false);
if V_Electric == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'V' then
		ListBox.AddItem("unknowns", "Ê· «é", "V");
	end
end

FindU = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ Å «‰”Ì·")
Findq = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â");
FindV_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é")

if FindU ~= -1 and ListBox.GetItemData("unknowns", FindU) == "U" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ Å «‰”Ì·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1 then
	if V_Electric ~= nil and q ~= nil then
		Binesh.CreateHTMLFile("U = <span>1/2</span>*q*V")
		U = 0.5*q*V_Electric
		
		Binesh.AddToHTML("U = <span>1/2</span>*"..q.."*"..V_Electric.." &#8658; U = "..U.."J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ Å «‰”Ì·");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "U");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownindex);
		end
	end
elseif Findq ~= -1 and ListBox.GetItemData("unknowns", Findq) == "q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
	if V_Electric ~= nil and U ~= nil then
		Binesh.CreateHTMLFile("U = <span>1/2</span>*q*V", "q = <span>2*U/V</span>")
		q = (2*U)/V_Electric
		
		Binesh.AddToHTML("q = <span>2*"..U.."/"..V_Electric.."</span> &#8658; q = "..q.."C")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownindex);
		end
	end
elseif FindV_Electric ~= -1 and ListBox.GetItemData("unknowns", FindV_Electric) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
	if U ~= nil and q ~= nil then
		Binesh.CreateHTMLFile("U = <span>1/2</span>*q*V", "V = <span>2*U/q</span>")
		V_Electric = Math.Sqrt(2*U/C)
		
		Binesh.AddToHTML("V = Sqrt(2*"..U.."/"..q..") &#8658; V = "..V_Speed.."m/s")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownindex);
		end
	end
end