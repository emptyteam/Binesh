if E_Electric == nil then

	Binesh.AddUnknown("„Ìœ«‰", "E")
end

if F == nil then
	
	Binesh.AddUnknown("‰Ì—Ê", "F")
end

if q_0_87 == nil then
	
	Binesh.AddUnknown("–—Â ¬“„Ê‰", "q0")
end

FindE_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰");
if FindE_Electric ~= -1 and ListBox.GetItemData("unknowns", FindE_Electric) == "E" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "E") ~= -1 then
	if F ~= nil and q_0_87 ~= nil then
		E_Electric = F/q_0_87
		
		Binesh.CreateHTMLFile("E = <span>F/q<sub>0</sub></span>")
		Binesh.AddToHTML("E = <span>"..F.."/"..q_0_87.."</span> &#8658; E = "..E_Electric.." N/C")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("F: "..F.." N", "V")
		Binesh.AddToHTML("q0: "..q_0_87.." C", "V")
		Binesh.AddToHTML("E: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "E");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindF = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê");
if FindF ~= -1 and ListBox.GetItemData("unknowns", FindF) == "F" and ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1 then
	if E_Electric ~= nil and q_0_87 ~= nil then
		F = E_Electric*q_0_87
		
		Binesh.CreateHTMLFile("E = <span>F/q<sub>0</sub></span>", "F = Eq<sub>0</sub>")
		Binesh.AddToHTML("F = "..E_Electric.."*"..q_0_87.." &#8658; F = "..F.." N")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("q0: "..q_0_87.." C", "V")
		Binesh.AddToHTML("E: "..E_Electric.." N/C", "V")
		Binesh.AddToHTML("F: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "F");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findq_0_87 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â ¬“„Ê‰");
if Findq_0_87 ~= -1 and ListBox.GetItemData("unknowns", Findq_0_87) == "q0" and ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â ¬“„Ê‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q0") ~= -1 then
	if  E_Electric ~= nil and F ~= nil then
		q_0_87 = F/E_Electric
		
		Binesh.CreateHTMLFile("E = <span>F/q<sub>0</sub></span>", "q<sub>0</sub> = <span>F/E</span>")
		Binesh.AddToHTML("q<sub>0</sub> = <span>"..F.."/"..E_Electric.."</span> &#8658; q<sub>0</sub> = "..q_0_87.." C")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("F: "..F.." N", "V")
		Binesh.AddToHTML("E: "..E_Electric.." N/C", "V")
		Binesh.AddToHTML("q0: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â ¬“„Ê‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q0");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end