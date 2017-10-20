-- Teta_141 = Binesh.Genesis("“«ÊÌÂ", "Teta", "", "", 1, "", "œ—ÃÂ", false);
if Teta == nil and Teta_Radian == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Teta' then
		ListBox.AddItem("unknowns", "“«ÊÌÂ", "Teta");
	end
end

if T_141 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ—«‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'T' then
		ListBox.AddItem("unknowns", "œÊ—«‰", "T");
	end
end

-- t_141 = Binesh.Genesis("“„«‰", "t", "", "", 1, "s", "À«‰ÌÂ", false);
if t == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 't' then
		ListBox.AddItem("unknowns", "“„«‰", "t");
	end
end

FindTeta = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ")
FindT_141 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ—«‰");
Findt = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰")

if Teta_Radian ~= nil then
	Binesh.CreateHTMLFile("<span>R/Pi</span> = <span>D/180</span>", "D = <span>R*180/Pi</span>")
	Teta = Math.RadToDeg(Teta_Radian)
	Binesh.AddToHTML("D<sub>Teta</sub> = <span>"..Teta_Radian.."*180/"..Zarib.Pi.."</span> &#8658; D<sub>Teta</sub> = "..Teta.."<sup>o</sup>")
	Binesh.AddToHTML("<br>")
end

if FindTeta ~= -1 and ListBox.GetItemData("unknowns", FindTeta) == "Teta" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta") ~= -1 then
	if T_141 ~= nil and t ~= nil then
		Binesh.CreateHTMLFile("Teta = <span>2*Pi/T</span>*t")
		
		Teta = 2*Zarib.Pi*t/T_141
		
		Binesh.AddToHTML("Teta = <span>2*"..Zarib.Pi.."/"..T_141.."</span>*"..t.." &#8658; Teta = "..Teta)
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Teta");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindT_141 ~= -1 and ListBox.GetItemData("unknowns", FindT_141) == "T" and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ—«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T") ~= -1 then
	if Teta ~= nil and t ~= nil then
		Binesh.CreateHTMLFile("Teta = <span>2*Pi/T<span>*t", "T = <span>2*Pi/Teta</span>*t")
		
		T_141 = 2*Zarib.Pi*t/Math.Rad(Teta)
		
		Binesh.AddToHTML("T = <span>2*"..Zarib.Pi.."/"..Teta.."</span>*"..t.." &#8658; T = "..T_141)
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ—«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "T");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findt ~= -1 and ListBox.GetItemData("unknowns", Findt) == "t" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1 then
	if Teta ~= nil and T_141 ~= nil then
		Binesh.CreateHTMLFile("Teta = <span>2*Pi/T<span>*t", "t = <span>teta/2*Pi</span>*T")
		
		t = Math.Rad(Teta)*T_141/2*Zarib.Pi
		
		Binesh.AddToHTML("t = <span>"..Teta.."/2*"..Zarib.Pi.."</span>*"..T_141.." &#8658; t = "..t.."s")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "t");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end