-- N_48 = Binesh.Genesis("‰Ì—Ê", "N", "", "", 1, "N", "‰ÌÊ ‰", false);
if N == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'N' then
		ListBox.AddItem("unknowns", "‰Ì—Ê", "N");
	end
end

--m = Binesh.Genesis("Ã—„", "m", "K", "òÌ·Ê", 10^3, "g", "ê—„", false);
if m == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'm' then
		ListBox.AddItem("unknowns", "Ã—„", "m");
	end
end

-- a_48 = Binesh.Genesis("‘ «»", "a", "", "", 1, "m/s", "„ — »— À«‰ÌÂ", false);
if a == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‘ «»")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'a' then
		ListBox.AddItem("unknowns", "‘ «»", "a");
	end
end

FindN = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê")
Findm = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„");
Finda = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‘ «»")

UP = ListBox.FindItem("Words", -1, LB_BYTEXT, "»«·«")
DOWN = ListBox.FindItem("Words", -1, LB_BYTEXT, "Å«ÌÌ‰")

if FindN ~= -1 and ListBox.GetItemData("unknowns", FindN) == "N" and ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1 then
	if a ~= nil and m ~= nil then
		if UP ~= -1 then
			Binesh.CreateHTMLFile("N = m*(g+a)")
			N = m*(Zarib.g+a)
			
			Binesh.AddToHTML("N = "..m.."*("..Zarib.g.."+"..a..") &#8658; N = "..N.."N")
			Web.Refresh("Web1");
		elseif DOWN ~= -1 then
			Binesh.CreateHTMLFile("N = m*(g-a)")
			N = m*(Zarib.g-a)
			
			Binesh.AddToHTML("N = "..m.."*("..Zarib.g.."+"..a..") &#8658; N = "..N.."N")
			Web.Refresh("Web1");
		end
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "N");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findm ~= -1 and ListBox.GetItemData("unknowns", Findm) == "m" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1 then
	if N ~= nil and a ~= nil then
		if UP ~= -1 then
			Binesh.CreateHTMLFile("N = m*(g+a)", "m = <span>N/(g+a)</span>")
			m = N/(Zarib.g+a)
			
			Binesh.AddToHTML("m = <span>N/("..Zarib.g.."+a)</span> &#8658; m = "..m.."Kg")
			Web.Refresh("Web1");
		elseif DOWN ~= -1 then
			Binesh.CreateHTMLFile("N = m*(g+a)", "m = -<span>N/(-g+a)</span>")
			m = -N/(-Zarib.g+a)
			
			Binesh.AddToHTML("m = -<span>"..N.."/(-"..Zarib.g.."+"..a..")</span> &#8658; m = "..m.."Kg")
			Web.Refresh("Web1");
		end
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "m");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Finda ~= -1 and ListBox.GetItemData("unknowns", Finda) == "a" and ListBox.FindItem("Words", -1, LB_BYTEXT, "‘ «»") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "a") ~= -1 then
	if m ~= nil and N ~= nil then
		if UP ~= -1 then
			Binesh.CreateHTMLFile("N = m*(g+a)", "a = -<span>(g*m-N)/m</span>")
			a = -1*(Zarib.g*m-N)/m
			
			Binesh.AddToHTML("a = -<span>("..Zarib.g.."*"..m.."-"..N..")/"..m.."</span> &#8658; a = "..a.."m/s")
			Web.Refresh("Web1");
		elseif DOWN ~= -1 then
			Binesh.CreateHTMLFile("N = m*(g+a)", "a = <span>(g*m-N)/m</span>")
			a = (Zarib.g*m-N)/m
			
			Binesh.AddToHTML("a = <span>("..Zarib.g.."*"..m.."-"..N.."/"..m..")</span> &#8658; a = "..a.."m/s")
			Web.Refresh("Web1");
		end
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‘ «»");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "a");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end