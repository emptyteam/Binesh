if U_Output == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ „’—›Ì")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'U' then
		ListBox.AddItem("unknowns", "«‰—éÌ „’—›Ì", "U");
	end
end

-- I114 = Binesh.Genesis("Ã—Ì«‰", "I", "", "", 1, "A", "¬„Å—", false);
if I == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'I' then
		ListBox.AddItem("unknowns", "Ã—Ì«‰", "I");
	end
end

-- R114 = Binesh.Genesis("„ﬁ«Ê„ ", "R", "", "", 1, "Ohm", "«Â„", false);
if R == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'R' then
		ListBox.AddItem("unknowns", "„ﬁ«Ê„ ", "R");
	end
end

-- t114 = Binesh.Genesis("“„«‰", "t", "", "", 1, "s", "À«‰ÌÂ", false);
if t == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 't' then
		ListBox.AddItem("unknowns", "“„«‰", "t");
	end
end

FindU_Output = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ „’—›Ì")
FindI = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
FindR = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ");
Findt = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰")

if FindU_Output ~= -1 and ListBox.GetItemData("unknowns", FindU_Output) == "U" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ „’—›Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1 then
	if I ~= nil and t ~= nil and R ~= nil then
		U_Output = R * I^2 * t
		
		Binesh.CreateHTMLFile("U = R*I<sup>2</sup>*t")
		Binesh.AddToHTML("U = "..R.."*"..I.."<sup>2</sup>*"..t.." &#8658; U = "..U_Output.."J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ „’—›Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "U");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindI ~= -1 and ListBox.GetItemData("unknowns", FindI) == "I" and ListBox.FindItem("Words", -1, LB_BYTEXT, "¬„Å—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
	if U_Output ~= nil and R ~= nil and t ~= nil then
		I = Math.Sqrt(U_Output/R*t)
		
		Binesh.CreateHTMLFile("U = R*I<sup>2</sup>*t", "I = Sqrt(<span>U/R*t</span>)")
		Binesh.AddToHTML("I = Sqrt(<span>"..U_Output.."/"..R.."*"..t.."</span>) &#8658; I = "..I.."A")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "I");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindR ~= -1 and ListBox.GetItemData("unknowns", FindR) == "R" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1 then
	if I ~= nil and t ~= nil and U_Output ~= nil then
		R = U/I^2*t
		
		Binesh.CreateHTMLFile("U = R*I<sup>2</sup>*t", "R = <span>U/I<sup>2</sup>*t</span>")
		Binesh.AddToHTML("R = <span>"..U.."/"..I.."<sup>2</sup>*"..t.."</span> &#8658; R = "..R.."Ohm")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "R");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findt ~= -1 and ListBox.GetItemData("unknowns", Findt) == "t" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1 then
	if R ~= nil and I ~= nil and U_Output ~= nil then
		t = U/I^2*R
		
		Binesh.CreateHTMLFile("U = R*I<sup>2</sup>*t", "t = <span>U/I<sup>2</sup>*R</span>")
		Binesh.AddToHTML("t = <span>"..U_Output.."/"..I.."<sup>2</sup>*"..R.."</span> &#8658; t = "..t.."s")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "t");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end