function Binesh.F114_2()
	if U_Output == nil then
		Binesh.AddUnknown("«‰—éÌ", "U")
	end
	
	if I == nil then
		Binesh.AddUnknown("Ã—Ì«‰", "I")
	end
	
	if V_Electric == nil then
		Binesh.AddUnknown("Ê· «é", "V")
	end
	
	if t == nil then
		Binesh.AddUnknown("“„«‰", "t")
	end
	
	FindU_Output = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ");
	if FindU_Output ~= -1 and ListBox.GetItemData("unknowns", FindU_Output) == "U" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1 then
		if I ~= nil and t ~= nil and V_Electric ~= nil then
			U_Output =  V_Electric * I * t
			
			Binesh.CreateHTMLFile("U =  IVt")
			Binesh.AddToHTML("U = "..V_Electric.."*"..I.."*"..t.." &#8658; U = "..U_Output.." J")
			Web.Refresh("Web1");
			
			
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("U: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "U");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindI = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
	if FindI ~= -1 and ListBox.GetItemData("unknowns", FindI) == "I" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
		if U_Output ~= nil and V_Electric ~= nil and t ~= nil then
			I = U_Output/V_Electric*t
			
			Binesh.CreateHTMLFile("U = VIt", "I = <span>U/Vt</span>")
			Binesh.AddToHTML("I = <span>"..U_Output.."/"..V_Electric.."*"..t.."</span> &#8658; I = "..I.." A")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("U: "..U_Output.." J", "V")
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("I: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "I");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindV_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é");
	if FindV_Electric ~= -1 and ListBox.GetItemData("unknowns", FindV_Electric) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
		if I ~= nil and t ~= nil and U_Output ~= nil then
			V_Electric = U/I*t
			
			Binesh.CreateHTMLFile("U = VIt", "V = <span>U/It</span>")
			Binesh.AddToHTML("V = <span>"..U.."/"..I.."*"..t.."</span> &#8658; V = "..V_Electric.." V")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("U: "..U_Output.." J", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("V: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findt = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
	if Findt ~= -1 and ListBox.GetItemData("unknowns", Findt) == "t" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1 then
		if V_Electric ~= nil and I ~= nil and U_Output ~= nil then
			t = U/I*V_Electric
			
			Binesh.CreateHTMLFile("U = VIt", "t = <span>U/IV</span>")
			Binesh.AddToHTML("t = <span>"..U_Output.."/"..I.."*"..V_Electric.."</span> &#8658; t = "..t.." s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("U: "..U_Output.." J", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("t: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "t");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end