function Binesh.F65()
	if Q == nil then
		Binesh.AddUnknown("ê—„«", "Q")
	end
	
	if m == nil then
		Binesh.AddUnknown("Ã—„", "m")
	end
	
	if LV == nil then
		Binesh.AddUnknown(" »ŒÌ—", "LV")
	end
	
	FindQ = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«");
	if FindQ ~= -1 and ListBox.GetItemData("unknowns", FindQ) == "Q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ê—„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Q") ~= -1 then
		if m ~= nil and LV ~= nil then
			Binesh.CreateHTMLFile("Q = mL<sub>V</sub>")
			Q = m*LV
			
			Binesh.AddToHTML("Q = "..m.."*"..LV.." &#8658; Q = "..Q.." J")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("m: "..m.." Kg", "V")
			Binesh.AddToHTML("L<sub>V</sub>: "..LV.." <span>J/kg</span>", "V")
			Binesh.AddToHTML("Q: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Q");
			if unknownPersianindex == unknownSymbolindex then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findm = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„");
	if Findm ~= -1 and ListBox.GetItemData("unknowns", Findm) == "m" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1 then
		if LV ~= nil and Q ~= nil then
			Binesh.CreateHTMLFile("Q = mL<sub>V</sub>", "m = <span>Q/L<sub>V</sub></span>")
			m = Q/LV
			
			Binesh.AddToHTML("m = <span>"..Q.."/"..LV.."</span> &#8658; m = "..m.." Kg")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("Q: "..Q.." J", "V")
			Binesh.AddToHTML("L<sub>V</sub>: "..LV.." <span>J/kg</span>", "V")
			Binesh.AddToHTML("m: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "m");
			if unknownPersianindex == unknownSymbolindex then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindLV = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " »ŒÌ—");
	if FindLV ~= -1 and ListBox.GetItemData("unknowns", FindLV) == "LV" and ListBox.FindItem("Words", -1, LB_BYTEXT, " »ŒÌ—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "LV") ~= -1 then
		if Q ~= nil and m ~= nil then
			Binesh.CreateHTMLFile("Q = mL<sub>V</sub>", "L<sub>V</sub> = Q/m")
			LV = Q/m
			
			Binesh.AddToHTML("L<sub>V</sub> = <span>"..Q.."/"..m.."</span> &#8658; L<sub>V</sub> = "..LV.." <span>J/kg</span>")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("Q: "..Q.." J", "V")
			Binesh.AddToHTML("m: "..m.." Kg", "V")
			Binesh.AddToHTML("L<sub>V</sub>: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " »ŒÌ—");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "LV");
			if unknownPersianindex == unknownSymbolindex then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end