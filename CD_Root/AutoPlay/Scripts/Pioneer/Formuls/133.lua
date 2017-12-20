if F == nil then
	
	Binesh.AddUnknown("‰Ì—Ê", "F")
end

if I1 == nil then
	
	Binesh.AddUnknown("«Ê·Ì‰ Ã—Ì«‰", "I1")
end

if I2 == nil then
	
	Binesh.AddUnknown("œÊ„Ì‰ Ã—Ì«‰", "I2")
end

if d_Distance == nil then
	
	Binesh.AddUnknown("›«’·Â", "d")
end

if l == nil then
	
	Binesh.AddUnknown("ÿÊ·", "l")
end

FindF = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê");
if FindF ~= -1 and ListBox.GetItemData("unknowns", FindF) == "F" and ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1 then
	if I1 ~= nil and I2 ~= nil and d_Distance ~= nil and I ~= nil then
		Binesh.CreateHTMLFile("F = <span>Mu<sub>0</sub>/2Pi</span>*<span>I<sub>1</sub>I<sub>2</sub>/d</span>*l")
		F = 2*10^-7*I1*I2*l/d_Distance
		
		Binesh.AddToHTML("F = <span>4*"..Zarib.Pi.."*10<sup>-7</sup>/2*"..Zarib.Pi.."</span>*<span>"..I1.."*"..I2.."/"..d_Distance .."</span>*"..l.." &#8658; F = "..F.." N")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("I<sub>1</sub>: "..I1.." A", "V")
		Binesh.AddToHTML("I<sub>2</sub>: "..I2.." A", "V")
		Binesh.AddToHTML("d: "..d_Distance.." m", "V")
		Binesh.AddToHTML("l: "..l.." m", "V")
		Binesh.AddToHTML("F: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "F");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindI1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Ã—Ì«‰");
if FindI1 ~= -1 and ListBox.GetItemData("unknowns", FindI1) == "I1" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I1") ~= -1 then
	if F ~= nil and l ~= nil and I2 ~= nil and d_Distance ~= nil then
		Binesh.CreateHTMLFile("F = <span>Mu<sub>0</sub>/2Pi</span>*<span>I<sub>1</sub>I<sub>2</sub>/d</span>*l", "I<sub>1</sub> = <span>2PidF/Mu<sub>0</sub>I<sub>2</sub>L</span>")
		I1 = d_Distance*F/(2*10^-7*I2*l)
		
		Binesh.AddToHTML("I<sub>1</sub> = <span>2*"..Zarib.Pi.."*"..d_Distance.."*"..F.."/4*"..Zarib.Pi.."*10<sup>-7</sup>*"..I2.."*"..l.."</span> &#8658; I<sub>1</sub> = "..I1.." A")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("F: "..F.." N", "V")
		Binesh.AddToHTML("I<sub>2</sub>: "..I2.." A", "V")
		Binesh.AddToHTML("d: "..d_Distance.." m", "V")
		Binesh.AddToHTML("l: "..l.." m", "V")
		Binesh.AddToHTML("I<sub>1</sub>: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Ã—Ì«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "I1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindI2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ Ã—Ì«‰");
if FindI2 ~= -1 and ListBox.GetItemData("unknowns", FindI2) == "I2" and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I2") ~= -1 then
	if F ~= nil and l ~= nil and I1 ~= nil and d_Distance ~= nil then
		Binesh.CreateHTMLFile("F = <span>Mu<sub>0</sub>/2Pi</span>*<span>I<sub>1</sub>I<sub>2</sub>/d</span>*l", "I<sub>2</sub> = <span>2PidF/Mu<sub>0</sub>I<sub>1</sub>L</span>")
		I2 = d_Distance*F/(2*10^-7*I1*l)
		
		Binesh.AddToHTML("I<sub>1</sub> = <span>2*"..Zarib.Pi.."*"..d_Distance.."*"..F.."/4*"..Zarib.Pi.."*10<sup>-7</sup>*"..I1.."*"..l.."</span> &#8658; I<sub>2</sub> = "..I2.." A")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("F: "..F.." N", "V")
		Binesh.AddToHTML("I<sub>1</sub>: "..I1.." A", "V")
		Binesh.AddToHTML("d: "..d_Distance.." m", "V")
		Binesh.AddToHTML("l: "..l.." m", "V")
		Binesh.AddToHTML("I<sub>2</sub>: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ Ã—Ì«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "I2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findl = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÿÊ·");
if Findl ~= -1 and ListBox.GetItemData("unknowns", Findl) == "l" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "l") ~= -1 then
	if F ~= nil and I1 ~= nil and I2 ~= nil and d_Distance ~= nil then
		Binesh.CreateHTMLFile("F = <span>Mu<sub>0</sub>/2Pi</span>*<span>I<sub>1</sub>I<sub>2</sub>/d</span>*l", "l = <span>2PidF/Mu<sub>0</sub>I<sub>1</sub>I<sub>2</sub></span>")
		l = d_Distance*F/(2*10^-7*I1*I2)
		
		Binesh.AddToHTML("l = <span>2*"..Zarib.Pi.."*"..d_Distance.."*"..F.."/4*"..Zarib.Pi.."*10<sup>-7</sup>*"..I1.."*"..I2.."</span> &#8658; l = "..l.." m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("F: "..F.." N", "V")
		Binesh.AddToHTML("I<sub>1</sub>: "..I1.." A", "V")
		Binesh.AddToHTML("I<sub>2</sub>: "..I2.." A", "V")
		Binesh.AddToHTML("d: "..d_Distance.." m", "V")
		Binesh.AddToHTML("l: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÿÊ·");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "l");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findd_Distance = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â");
if Findd_Distance ~= -1 and ListBox.GetItemData("unknowns", Findd_Distance) == "d" and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "d") ~= -1 then
	if F ~= nil and l ~= nil and I2 ~= nil and I1 ~= nil then
		Binesh.CreateHTMLFile("F = <span>Mu<sub>0</sub>/2Pi</span>*<span>I<sub>1</sub>I<sub>2</sub>/d</span>*l", "d = <span>Mu<sub>0</sub>I<sub>1</sub>I<sub>2</sub>l/2PiF</span>")
		d_Distance = 2*10^-7*I1*I2*l/F
		
		Binesh.AddToHTML("l = <span>4*"..Zarib.Pi.."*10<sup>-7</sup>*"..I1.."*"..I2.."*"..l.."/2*"..Zarib.Pi.."*"..F.."</span> &#8658; d = "..d_Distance.." m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("F: "..F.." N", "V")
		Binesh.AddToHTML("I<sub>1</sub>: "..I1.." A", "V")
		Binesh.AddToHTML("I<sub>2</sub>: "..I2.." A", "V")
		Binesh.AddToHTML("l: "..l.." m", "V")
		Binesh.AddToHTML("d: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "d");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end