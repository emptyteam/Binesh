function Binesh.F137()
	if Epsilon == nil then
	
		Binesh.AddUnknown("‰Ì—Ê „Õ—òÂ", "Epsilon")
	end
	
	if B == nil then
	
		Binesh.AddUnknown("„Ìœ«‰ „€‰«ÿÌ”Ì", "B")
	end
	
	if I == nil then
	
		Binesh.AddUnknown("Ã—Ì«‰", "I")
	end
	
	if V_Speed == nil then
	
		Binesh.AddUnknown("”—⁄ ", "V")
	end
	
	FindEpsilon = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê „Õ—òÂ");
	if FindEpsilon ~= -1 and ListBox.GetItemData("unknowns", FindEpsilon) == "Epsilon" and ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê „Õ—òÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Epsilon") ~= -1 then
		if V_Speed ~= nil and B ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("Epsilon = BIV")
			Epsilon = B*I*V_Speed
			
			Binesh.AddToHTML("Epsilon = "..B.."*"..I.."*"..V_Speed.." &#8658; Epsilon = "..Epsilon.." V")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("V: "..V_Speed.." m/s", "V")
			Binesh.AddToHTML("Epsilon : ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê „Õ—òÂ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Epsilon");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindB = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰ „€‰«ÿÌ”Ì");
	if FindB ~= -1 and ListBox.GetItemData("unknowns", FindB) == "B" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1 then
		if V_Speed ~= nil and Epsilon ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("Epsilon = BIV","B = <span>Epsilon/IV</span>")
			B = Epsilon/(I*V_Speed)
			
			Binesh.AddToHTML("B = <span>"..Epsilon.."/"..I.."*"..V_Speed.."</span> &#8658; B = "..B.."T")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("Epsilon: "..Epsilon.." V", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("V: "..V_Speed.." m/s", "V")
			Binesh.AddToHTML("B : ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰ „€‰«ÿÌ”Ì");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "B");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindI = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
	if FindI ~= -1 and ListBox.GetItemData("unknowns", FindI) == "I" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
		if V_Speed ~= nil and Epsilon ~= nil and B ~= nil then
			Binesh.CreateHTMLFile("Epsilon = BIV","I = <span>Epsilon/BV</span>")
			I = Epsilon/(B*V_Speed)
			
			Binesh.AddToHTML("I = <span>"..Epsilon.."/"..B.."*"..V_Speed.."</span> &#8658; I = "..I.." A")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("Epsilon: "..Epsilon.." V", "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("V: "..V_Speed.." m/s", "V")
			Binesh.AddToHTML("I : ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "I");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindV_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”—⁄ ");
	if FindV_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV_Speed) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
		if V_Speed ~= nil and B ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("Epsilon = BIV","V = <span>Epsilon/IB</span>")
			V_Speed = Epsilon/B*I
			
			Binesh.AddToHTML("V = <span>"..Epsilon.."/"..B.."*"..I.."</span> &#8658; V = "..V_Speed.." m/s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("Epsilon: "..Epsilon.." V", "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("V : ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”—⁄ ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end