if Q == nil then
	Binesh.AddUnknown("ê—„«", "Q")
end

if m == nil then
	Binesh.AddUnknown("Ã—„", "m")
end

if L_F == nil then
	Binesh.AddUnknown("–Ê»", "LF")
end


FindQ = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«");
if Q ~= -1 and ListBox.GetItemData("unknowns", FindQ) == "Q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ê—„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Q") ~= -1 then
	if m ~= nil and L_F ~= nil then
		Q =  m*L_F
		
		Binesh.CreateHTMLFile("Q =  mL<sub>F</sub>")
		Binesh.AddToHTML("Q = "..m.."*"..L_F.." &#8658; Q = "..Q.." J")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("m: "..m.." Kg", "V")
		Binesh.AddToHTML("LF: "..L_F.." J/Kg", "V")
		Binesh.AddToHTML("Q: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findm = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„");
if Findm ~= -1 and ListBox.GetItemData("unknowns", Findm) == "m" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1 then
	if Q ~= nil and L_F ~= nil then
		m = Q/L_F
		
		Binesh.CreateHTMLFile("Q =  mL<sub>F</sub>", "m = <span>Q/L<sub>F</sub></span>")
		Binesh.AddToHTML("m = <span>"..Q.."/"..L_F.."</span> &#8658; m = "..m.." Kg")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("Q: "..Q.." J", "V")
		Binesh.AddToHTML("LF: "..L_F.." J/Kg", "V")
		Binesh.AddToHTML("m: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "m");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindL_F = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–Ê»");
if FindL_F ~= -1 and ListBox.GetItemData("unknowns", FindL_F) == "LF" and ListBox.FindItem("Words", -1, LB_BYTEXT, "–Ê»") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "LF") ~= -1 then
	if Q ~= nil and m ~= nil then
		L_F = Q/m
		
		Binesh.CreateHTMLFile("Q =  mL<sub>F</sub>", "L<sub>F</sub> = <span>Q/m</span>")
		Binesh.AddToHTML("L<sub>F</sub> = <span>"..Q.."/"..m.."</span> &#8658; L<sub>F</sub>= "..L_F.." J/Kg")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("Q: "..Q.." J", "V")
		Binesh.AddToHTML("m: "..m.." Kg", "V")
		Binesh.AddToHTML("LF: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–Ê»");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "LF");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end