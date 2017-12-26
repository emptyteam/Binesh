function Binesh.F7()
	if R == nil then
		Binesh.AddUnknown("„ﬁ«Ê„ ", "R")
	end
	
	if V_Electric == nil then
		Binesh.AddUnknown("Ê· «é", "V")
	end
	
	if I == nil then
		Binesh.AddUnknown("Ã—Ì«‰", "I")
	end
	
	FindR = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ");
	if FindR ~= -1 and ListBox.GetItemData("unknowns", FindR) == "R" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1 then
		if V_Electric ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("R = <span>V/I</span>")
			R = (V_Electric)/(I)
			
			Binesh.AddToHTML("R = <span>"..V_Electric.."/"..I.."</span> &#8658; R = "..R.." Ohm")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("R: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "R");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindV_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é");
	if FindV_Electric ~= -1 and ListBox.GetItemData("unknowns", FindV_Electric) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
		if R ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("R = <span>V/I</span>", "V = IR")
			V_Electric = (R)*(I)
			
			Binesh.AddToHTML("V = "..R.."*"..I.." &#8658; V = "..V_Electric.." V")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("R: "..R.." Ohm", "V")
			Binesh.AddToHTML("V: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindI = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
	if FindI ~= -1 and ListBox.GetItemData("unknowns", FindI) == "I" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
		if R ~= nil and V_Electric ~= nil then
			Binesh.CreateHTMLFile("R = <span>V/I</span>", "I = <span>V/R</span>")
			I = (V_Electric)/(R)
			
			Binesh.AddToHTML("I = <span>"..V_Electric.."/"..R.."</span> &#8658; I = "..I.." A")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("R: "..R.." Ohm", "V")
			Binesh.AddToHTML("I: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "I");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end