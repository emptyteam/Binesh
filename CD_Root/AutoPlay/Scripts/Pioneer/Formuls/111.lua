if R == nil then
	Binesh.AddUnknown("„ﬁ«Ê„ ", "R")
end

if Ru_Resistor == nil then
	Binesh.AddUnknown("„ﬁ«Ê„  ÊÌéÂ", "Ru")
end

if L == nil then
	Binesh.AddUnknown("ÿÊ·", "L")
end

if A == nil then
	Binesh.AddUnknown("”ÿÕ", "A")
end

FindR = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ");
if FindR ~= -1 and ListBox.GetItemData("unknowns", FindR) == "R" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1 then
	if Ru_Resistor ~= nil and A ~= nil and L ~= nil then
		R =  Ru_Resistor * L / A
		
		Binesh.CreateHTMLFile("R =  Ru*<span>L/A</span>")
		Binesh.AddToHTML("R = "..Ru_Resistor.."*<span>"..L.."/"..A.."</span> &#8658; R = "..R.." Ohm")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("Ru: "..Ru_Resistor.." Ohm.m", "V")
		Binesh.AddToHTML("L: "..L.." m", "V")
		Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
		Binesh.AddToHTML("R: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "R");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindRu_Resistor = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„  ÊÌéÂ");
if FindRu_Resistor ~= -1 and ListBox.GetItemData("unknowns", FindRu_Resistor) == "Ru" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„  ÊÌéÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ru") ~= -1 then
	if R ~= nil and L ~= nil and A ~= nil then
		Ru_Resistor = R*A/L
		
		Binesh.CreateHTMLFile("R =  Ru<span>L/A</span>", "Ru = <span>RA/L</span>")
		Binesh.AddToHTML("Ru = <span>"..R.."*"..A.."/"..L.."</span> &#8658; Ru = "..Ru_Resistor.." Ohm.m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("R: "..R.." Ohm", "V")
		Binesh.AddToHTML("L: "..L.." m", "V")
		Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
		Binesh.AddToHTML("Ru: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„  ÊÌéÂ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Ru");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindA = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”ÿÕ");
if FindA ~= -1 and ListBox.GetItemData("unknowns", FindA) == "A" and ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "A") ~= -1 then
	if R ~= nil and L ~= nil and Ru_Resistor ~= nil then
		A = Ru_Resistor*L/R
		
		Binesh.CreateHTMLFile("R =  Ru<span>L/A</span>", "A = <span>RuL/R</span>")
		Binesh.AddToHTML("A = <span>"..Ru_Resistor.."*"..L.."/"..R.."</span> &#8658; A = "..A.." m<sup>2</sup>")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("R: "..R.." Ohm", "V")
		Binesh.AddToHTML("Ru: "..Ru_Resistor.." Ohm.m", "V")
		Binesh.AddToHTML("L: "..L.." m", "V")
		Binesh.AddToHTML("A: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”ÿÕ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "A");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindL = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÿÊ·");
if FindL ~= -1 and ListBox.GetItemData("unknowns", FindL) == "L" or ListBox.GetItemData("unknowns", FindL) == "l" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L") ~= -1 then
	if Ru_Resistor ~= nil and A ~= nil and R ~= nil then
		L = R*A/Ru_Resistor
		
		Binesh.CreateHTMLFile("R =  Ru<span>L/A</span>", "L = <span>RA/Ru</span>")
		Binesh.AddToHTML("L = <span>"..R.."*"..A.."/"..Ru_Resistor.."</span> &#8658; L = "..L.." m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("R: "..R.." Ohm", "V")
		Binesh.AddToHTML("Ru: "..Ru_Resistor.." Ohm.m", "V")
		Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
		Binesh.AddToHTML("L: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÿÊ·");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "L");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end