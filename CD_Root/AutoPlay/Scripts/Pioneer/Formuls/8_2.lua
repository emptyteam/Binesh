function Binesh.F8_2()
	if W == nil then
		Binesh.AddUnknown("«‰—éÌ «·ò —ÌòÌ", "W")
	end
	
	if V_Electric == nil then
		Binesh.AddUnknown("Ê· «é", "V")
	end
	
	if I == nil then
		Binesh.AddUnknown("Ã—Ì«‰", "I")
	end
	
	if t == nil then
		Binesh.AddUnknown("“„«‰", "t")
	end
	
	FindW = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ «·ò —ÌòÌ");
	if FindW ~= -1 and ListBox.GetItemData("unknowns", FindW) == "W" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ «·ò —ÌòÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1 then
		if V_Electric ~= nil and I ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("W = IVt")
			W = V_Electric*I*t
			
			Binesh.AddToHTML("W = "..V_Electric.."*"..I.."*"..t.." &#8658; W = "..W.." J")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("W: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ «·ò —ÌòÌ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "W");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindV_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é");
	if FindV_Electric ~= -1 and ListBox.GetItemData("unknowns", FindV_Electric) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
		if W ~= nil and I ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("W = IVt", "V = <span>W/It</span>")
			V_Electric = W/(I*t)
			
			Binesh.AddToHTML("V = <span>"..W.."/"..I.."*"..t.."</span> &#8658; V = "..V_Electric.." V")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("W: "..W.." J", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("V: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
			if unknownPersianindex == unknownSymbolindex then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindI = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
	if FindI ~= -1 and ListBox.GetItemData("unknowns", FindI) == "I" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
		if W ~= nil and V_Electric ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("W = IVt", "I = <span>W/Vt</span>")
			I = W/(V*t)
			
			Binesh.AddToHTML("I = <span>"..W.."/"..V_Electric.."</span>*"..t.." &#8658; I = "..I.." A")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("W: "..W.." J", "V")
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("I: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "I");
			if unknownPersianindex == unknownSymbolindex then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findt = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
	if Findt ~= -1 and ListBox.GetItemData("unknowns", Findt) == "t" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1 then
		if W ~= nil and V_Electric ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("W = IVt", "t = <span>W/VI</span>")
			t = W/(V_Electric*I)
			
			Binesh.AddToHTML("t = <span>"..W.."/"..V_Electric.."*"..I.."<sup>2</sup></span> &#8658; t = "..t.." s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("W: "..W.." J", "V")
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("t: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "t");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end