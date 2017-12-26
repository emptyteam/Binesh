function Binesh.F134()
	if Fi == nil then
		
		Binesh.AddUnknown("‘«—", "Fi")
	end
	
	if A == nil then
	
		Binesh.AddUnknown("”ÿÕ", "A")
		Binesh.AddUnknown("„”«Õ ", "A")
	end
	
	if B == nil then
	
		Binesh.AddUnknown("„Ìœ«‰ „€‰«ÿÌ”Ì", "B")
	end
	
	if Teta == nil and Teta_Radian == nil then
	
		Binesh.AddUnknown("“«ÊÌÂ", "Teta")
	end
	
	FindFi = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‘«—");
	if FindEpsilon ~= -1 and ListBox.GetItemData("unknowns", FindFi) == "Fi" and ListBox.FindItem("Words", -1, LB_BYTEXT, "‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Fi") ~= -1 then
		if A ~= nil and B ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("Fi = ABcosTeta")
			Fi = A*B*Math.Cos(Math.Rad(Teta))
			
			Binesh.AddToHTML("Fi = "..A.."*"..B.."*cos"..Teta.." &#8658; Fi = "..Fi.." Wb")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("Fi: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‘«—");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Fi");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindA = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”ÿÕ");
	FindA_2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„”«Õ ");
	if FindA ~= -1 or FindA_2 ~= -1 and ListBox.GetItemData("unknowns", FindA) == "A" or ListBox.GetItemData("unknowns", FindA_2) == "A" and ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "„”«Õ ") or ListBox.FindItem("Words", -1, LB_BYTEXT, "A") ~= -1 then
		if Fi ~= nil and B ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("Fi = ABcosTeta", "A = <span>Fi/BcosTeta</span>")
			A = Fi/(B*Math.Cos(Math.Rad(Teta)))
			
			Binesh.AddToHTML("A = <span>"..Fi.."/"..B.."*cos"..Teta.."</span> &#8658; A = "..A.." m<sup>2</sup>")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("Fi: "..Fi.." Wb", "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("A: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”ÿÕ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "A");
			if unknownPersianindex == unknownSymbolindex or ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„”«Õ ") == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindB = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰");
	if FindB ~= -1 and ListBox.GetItemData("unknowns", FindB) == "B" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1 then
		if A ~= nil and Fi ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("Fi = ABcosTeta", "B = <span>Fi/AcosTeta</span>")
			B = Fi/(A*Math.Cos(Math.Rad(Teta)))
			
			Binesh.AddToHTML("B = <span>"..Fi.."/"..A.."*cos"..Teta.."</span> &#8658; B = "..B.." T")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("Fi: "..Fi.." Wb", "V")
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("B: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰ „€‰«ÿÌ”Ì");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "B");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindTeta = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ");
	if FindTeta ~= -1 and ListBox.GetItemData("unknowns", FindTeta) == "Teta" or ListBox.GetItemData("unknowns", FindTeta) == "Alpha" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta") ~= -1 then
		if A ~= nil and Fi ~= nil and B ~= nil then
			Binesh.CreateHTMLFile("Fi = ABcosTeta", "cosTeta = <span>Fi/AB</span>")
			
			CosTeta = Fi/(A*B)
			Teta_Radian = Math.Acos(Math.Acos(Math.Cos(CosTeta)))
			Teta = Math.RadToDeg(Teta_Radian)
			
			Binesh.AddToHTML("cosTeta = <span>"..Fi.."/"..A.."*"..B.."</span> &#8658; cosTeta = "..CosTeta.." &#8658; Teta<sub>Radian</sub> = "..Teta_Radian.." &#8658; Teta = "..Teta.."<sup>o</sup>")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("Fi: "..Fi.." Wb", "V")
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("Teta: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Teta");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end