if R == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'R' then
		ListBox.AddItem("unknowns", "„ﬁ«Ê„ ", "R");
	end
end

if Ru_Resistor == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„  ÊÌéÂ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Ru' then
		ListBox.AddItem("unknowns", "„ﬁ«Ê„  ÊÌéÂ", "Ru");
	end
end

if L == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÿÊ·")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'L' then
		ListBox.AddItem("unknowns", "ÿÊ·", "L");
	end
end

if A == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”ÿÕ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'A' then
		ListBox.AddItem("unknowns", "”ÿÕ", "A");
	end
end

FindR = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ")
FindRu_Resistor = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„  ÊÌéÂ");
FindL = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÿÊ·");
FindA = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”ÿÕ")

if FindR ~= -1 and ListBox.GetItemData("unknowns", FindR) == "R" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1 then
	if Ru_Resistor ~= nil and A ~= nil and L ~= nil then
		R =  Ru_Resistor * L / A
		
		Binesh.CreateHTMLFile("R =  Ru*<span>L/A</span>")
		Binesh.AddToHTML("R = "..Ru_Resistor.."*<span>"..L.."/"..A.."</span> &#8658; R = "..R.."Ohm")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "R");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindRu_Resistor ~= -1 and ListBox.GetItemData("unknowns", FindRu_Resistor) == "Ru" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„  ÊÌéÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ru") ~= -1 then
	if R ~= nil and L ~= nil and A ~= nil then
		Ru_Resistor = R*A/L
		
		Binesh.CreateHTMLFile("R =  Ru*<span>L/A</span>", "Ru = <span>R*A/L</span>")
		Binesh.AddToHTML("Ru = <span>"..R.."*"..A.."/"..L.."</span> &#8658; Ru = "..Ru_Resistor.."Ohm.m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„  ÊÌéÂ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Ru");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindA ~= -1 and ListBox.GetItemData("unknowns", FindA) == "A" and ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "A") ~= -1 then
	if R ~= nil and L ~= nil and Ru_Resistor ~= nil then
		A = Ru_Resistor*L/R
		
		Binesh.CreateHTMLFile("R =  Ru*<span>L/A</span>", "A = <span>Ru*L/R</span>")
		Binesh.AddToHTML("A = <span>"..Ru_Resistor.."*"..L.."/"..R.."</span> &#8658; A = "..A.."m<sup>2</sup>")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”ÿÕ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "A");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindL ~= -1 and ListBox.GetItemData("unknowns", FindL) == "L" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L") ~= -1 then
	if Ru_Resistor ~= nil and A ~= nil and R ~= nil then
		L = R*A/Ru_Resistor
		
		Binesh.CreateHTMLFile("R =  Ru*<span>L/A</span>", "L = <span>R*A/Ru</span>")
		Binesh.AddToHTML("L = <span>"..R.."*"..A.."/"..Ru_Resistor.."</span> &#8658; A = "..A.."m<sup>2</sup>")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÿÊ·");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "L");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end