function Binesh.F144()
	if Epsilon == nil then
		Binesh.AddUnknown("‰Ì—Ê „Õ—òÂ", "Epsilon")
	end
	
	if N_Ring == nil then
		Binesh.AddUnknown("Õ·ﬁÂ", "N")
	end
	
	if A == nil then
		Binesh.AddUnknown("”ÿÕ", "A")
		Binesh.AddUnknown("„”«Õ ", "A")
	end
	
	if B == nil then
		Binesh.AddUnknown("„Ìœ«‰ „€‰«ÿÌ”Ì", "B")
	end
	
	if Omega == nil then
		Binesh.AddUnknown("”—⁄  “«ÊÌÂ", "Omega")
	end
	
	if t == nil then
		Binesh.AddUnknown("“„«‰", "t")
	end
	
	FindEpsilon = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê „Õ—òÂ");
	if FindEpsilon ~= -1 and ListBox.GetItemData("unknowns", FindEpsilon) == "Epsilon" and ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê „Õ—òÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Epsilon") ~= -1 then
		if A ~= nil and B ~= nil and t ~= nil and Omega ~= nil and N_Ring ~= nil then
			Binesh.CreateHTMLFile("Epsilon = NABcosOmegat")
			Epsilon = N_Ring*A*B*Math.Cos(Omega*t)
			
			Binesh.AddToHTML("Epsilon = "..N_Ring.."*"..A.."*"..B.."*cos"..Omega.."*"..t.." &#8658; Epsilon = "..Epsilon.." V")
			
			Binesh.AddToHTML("N: "..N_Ring, "V")
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("Omega: "..Omega.." rad/s", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("Epsilon: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê „Õ—òÂ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindN_Ring = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Õ·ﬁÂ");
	if FindN_Ring ~= -1 and ListBox.GetItemData("unknowns", FindN_Ring) == "N" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Õ·ﬁÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1 then
		if A ~= nil and B ~= nil and t ~= nil and Omega ~= nil and Epsilon ~= nil then
			Binesh.CreateHTMLFile("Epsilon = NABcosOmegat", "N = <span>Epsilon/ABcosOmegat</span>")
			N_Ring = Epsilon/(A*B*Math.Cos(Omega*t))
			
			Binesh.AddToHTML("N = <span>"..Epsilon.."/"..A.."*"..B.."*cos"..Omega.."*"..t.."</span> &#8658; N = "..N_Ring)
			
			Binesh.AddToHTML("Epsilon: "..Epsilon.." V", "V")
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("Omega: "..Omega.." rad/s", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("N: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Õ·ﬁÂ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "N");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindA = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”ÿÕ");
	FindA_2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„”«Õ ");
	if FindA ~= -1 or FindA_2 ~= -1 and ListBox.GetItemData("unknowns", FindA) == "A" or ListBox.GetItemData("unknowns", FindA_2) == "A" and ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "„”«Õ ") or ListBox.FindItem("Words", -1, LB_BYTEXT, "A") ~= -1 then
		if Epsilon ~= nil and B ~= nil and t ~= nil and Omega ~= nil and N_Ring ~= nil then
			Binesh.CreateHTMLFile("Epsilon = NABcosOmegat", "A = <span>Epsilon/NBcosOmegat</span>")
			A = Epsilon/(N_Ring*B*Math.Cos(Omega*t))
			
			Binesh.AddToHTML("A = <span>"..Epsilon.."/"..N_Ring.."*"..B.."*cos"..Omega.."*"..t.."</span> &#8658; A = "..A.." m<sup>2</sup>")
			
			Binesh.AddToHTML("Epsilon: "..Epsilon.." V", "V")
			Binesh.AddToHTML("N: "..N_Ring, "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("Omega: "..Omega.." rad/s", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("A: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”ÿÕ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "A");
			if unknownPersianindex == unknownSymbolindex or ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„”«Õ ") == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindB = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰ „€‰«ÿÌ”Ì");
	if FindB ~= -1 and ListBox.GetItemData("unknowns", FindB) == "B" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1 then
		if A ~= nil and Epsilon ~= nil and t ~= nil and Omega ~= nil and N_Ring ~= nil then
			Binesh.CreateHTMLFile("Epsilon = NABcosOmegat", "B = <span>Epsilon/NAcosOmegat</span>")
			B = Epsilon/(N_Ring*A*Math.Cos(Omega*t))
			
			Binesh.AddToHTML("B = <span>"..Epsilon.."/"..N_Ring.."*"..A.."*cos"..Omega.."*"..t.."</span> &#8658; B = "..B.." T")
			
			Binesh.AddToHTML("Epsilon: "..Epsilon.." V", "V")
			Binesh.AddToHTML("N: "..N_Ring, "V")
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("Omega: "..Omega.." rad/s", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("B: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰ „€‰«ÿÌ”Ì");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "B");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end