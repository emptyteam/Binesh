function Binesh.F145()
	if I == nil then
		Binesh.AddUnknown("Ã—Ì«‰", "I")
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
	
	if R == nil then
		Binesh.AddUnknown("„ﬁ«Ê„ ", "R")
	end
	
	FindI = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
	if FindI ~= -1 and ListBox.GetItemData("unknowns", FindI) == "I" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
		if A ~= nil and B ~= nil and t ~= nil and Omega ~= nil and N_Ring ~= nil and R ~= nil then
			Binesh.CreateHTMLFile("I = <span>NABOmega/R</span>sinOmegat")
			I = N_Ring*A*B*Omega*Math.Sin(Omega*t)/R
			
			Binesh.AddToHTML("I = <span>"..N_Ring.."*"..A.."*"..B.."*"..Omega.."/"..R.."</span>*sin"..Omega.."*"..t.." &#8658; I = "..I.." A")
			
			Binesh.AddToHTML("N: "..N_Ring, "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("Omega: "..Omega.." rad/s", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("R: "..R.." Ohm", "V")
			Binesh.AddToHTML("I: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "I");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindN_Ring = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Õ·ﬁÂ");
	if FindN_Ring ~= -1 and ListBox.GetItemData("unknowns", FindN_Ring) == "N" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Õ·ﬁÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1 then
		if A ~= nil and B ~= nil and t ~= nil and Omega ~= nil and I ~= nil and R ~= nil then
			Binesh.CreateHTMLFile("I = <span>NABOmega/R</span>sinOmegat", "N = <span>IR/BAOmegasinOmegat</span>")
			N_Ring = I*R/(B*A*Omega*Math.Sin(Omega*t))
			
			Binesh.AddToHTML("N = <span>"..I.."*"..R.."/"..B.."*"..A.."*"..Omega.."*sin"..Omega.."*"..t.."</span> &#8658; N = "..N_Ring)
			
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("R: "..R.." Ohm", "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
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
		if I ~= nil and B ~= nil and t ~= nil and Omega ~= nil and N_Ring ~= nil and R ~= nil then
			Binesh.CreateHTMLFile("I = <span>NABOmega/R</span>sinOmegat", "I = <span>IR/NBOmegasinOmegat</span>")
			A = I*R/(N_Ring*B*Omega*Math.Sin(Omega*t))
			
			Binesh.AddToHTML("A = <span>"..I.."*"..R.."/"..N_Ring.."*"..B.."*"..Omega.."*sin"..Omega.."*"..t.."</span> &#8658; A = "..A.." m<sup>2</sup>")
			
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("R: "..R.." Ohm", "V")
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
		if A ~= nil and I ~= nil and t ~= nil and Omega ~= nil and N_Ring ~= nil and R ~= nil then
			Binesh.CreateHTMLFile("I = <span>NABOmega/R</span>sinOmegat", "B = <span>IR/NAOmegasinOmegat</span>")
			B = I*R/(N_Ring*A*Omega*Math.Sin(Omega*t))
			
			Binesh.AddToHTML("B = <span>"..I.."*"..R.."/"..N_Ring.."*"..A.."*"..Omega.."*sin"..Omega.."*"..t.."</span> &#8658; B = "..B.." T")
			
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("R: "..R.." Ohm", "V")
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
	
	FindR = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ");
	if FindR ~= -1 and ListBox.GetItemData("unknowns", FindR) == "R" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1 then
		if A ~= nil and I ~= nil and t ~= nil and Omega ~= nil and N_Ring ~= nil and B ~= nil then
			Binesh.CreateHTMLFile("I = <span>NABOmega/R</span>sinOmegat", "R = <span>NBAOmegasinOmegat/I</span>")
			R = (N_Ring*B*A*Omega*Math.Sin(Omega*t))/I
			
			Binesh.AddToHTML("R = <span>"..N_Ring.."*"..B.."*"..A.."*"..Omega.."*sin"..Omega.."*"..t.."/"..I.."</span> &#8658; R = "..R.." Ohm")
			
			Binesh.AddToHTML("N: "..N_Ring, "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("Omega: "..Omega.." rad/s", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("R: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "R");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end