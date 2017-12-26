function Binesh.F139()
	if L_Self == nil then
		
		Binesh.AddUnknown("÷—Ì» ŒÊœ«·ﬁ«ÌÌ", "L")
	end
	
	if k_Self == nil then
		
		Binesh.AddUnknown("Â” Â", "k")
	end
	
	if N_Ring == nil then
		 Binesh.AddUnknown("Õ·ﬁÂ", "N")
	end
	
	if A == nil then
	
		 Binesh.AddUnknown("„”«Õ ", "A")
	end
	
	if I == nil then
		
		 Binesh.AddUnknown("Ã—Ì«‰", "I")
	end
	
	FindL_Self = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» ŒÊœ «·ﬁ«ÌÌ");
	if FindL_Self ~= -1 and ListBox.GetItemData("unknowns", FindL_Self) == "L" and ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» ŒÊœ «·ﬁ«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L") ~= -1 then
		if k_Self ~= nil and N_Ring ~= nil and A ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("L = kMu<sub>0</sub>N<sup>2<sup><span>A/I</span>")
			L_Self = k_Self*4*Zarib.Pi*10^(-7)*N_Ring^2*A/I
			
			Binesh.AddToHTML("L = <span>"..k_Self.."*Mu<sub>0</sub>*"..N_Ring.."<sup>2</sup>*"..A.."/"..I.."</span> &#8658; L = "..L_Self)
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("k: "..k_Self, "V")
			Binesh.AddToHTML("N: "..N_Ring, "V")
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("L: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» ŒÊœ «·ﬁ«ÌÌ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "L");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findk_Self = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Â” Â");
	if Findk_Self ~= -1 and ListBox.GetItemData("unknowns", Findk_Self) == "k" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Â” Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "k") ~= -1 then
		if L_Self ~= nil and N_Ring ~= nil and A ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("L = kMu<sub>0</sub>N<sup>2<sup><span>A/I</span>", "k = <span>IL/Mu<sub>0</sub>N<sup>2</sup>A</span>")
			k_Self = I*L_Self/(4*Zarib.Pi*10^(-7)*N_Ring^2*A)
			
			Binesh.AddToHTML("k = <span>"..I.."*"..L_Self.."/Mu<sub>0</sub>*"..N_Ring.."<sup>2</sup>*"..A.."</span> &#8658; k = "..k_Self)
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("L: "..L_Self, "V")
			Binesh.AddToHTML("N: "..N_Ring, "V")
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("k: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Â” Â");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "k");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindN_Ring = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Õ·ﬁÂ");
	if FindN_Ring ~= -1 and ListBox.GetItemData("unknowns", FindN_Ring) == "N" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Õ·ﬁÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1 then
		if I ~= nil and L_Self ~= nil and k_Self ~= nil and A ~= nil then
			Binesh.CreateHTMLFile("L = kMu<sub>0</sub>N<sup>2<sup><span>A/I</span>", "N = <span>IL/Mu<sub>0</sub>kA</span>")
			
			N_Ring = I*L_Self/(4*Zarib.Pi*10^(-7)*k_Self*A)
			
			Binesh.AddToHTML("N = <span>"..I.."*"..L_Self.."/Mu<sub>0</sub>*"..k_Self.."*"..A.."</span> &#8658; N = "..N_Ring)
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("L: "..L_Self, "V")
			Binesh.AddToHTML("k: "..k_self, "V")
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("N: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Õ·ﬁÂ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "N");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindA = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„”«Õ ");
	if FindA ~= -1 and ListBox.GetItemData("unknowns", FindA) == "A" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„”«Õ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "A") ~= -1 then
		if k_Self ~= nil and I ~= nil and L_Self ~= nil and N_Ring ~= nil then
			Binesh.CreateHTMLFile("L = kMu<sub>0</sub>N<sup>2<sup><span>A/I</span>", "A = <span>LI/Mu<sub>0</sub>kN<sup>2<sup></span>")
			
			A = L_Self*I/(4*Zarib.Pi*10^(-7)*k_Self*N_Ring^2)
			
			Binesh.AddToHTML("A = <span>"..L_Self.."*"..I.."/Mu<sub>0</sub>*"..k_Self.."*"..N_Ring.."<sup>2</sup></span> &#8658; A = "..A.." m<sup>2</sup>")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("L: "..L_Self, "V")
			Binesh.AddToHTML("k: "..k_self, "V")
			Binesh.AddToHTML("N: "..N_Ring, "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("A: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„”«Õ ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "A");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindI = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
	if FindI ~= -1 and ListBox.GetItemData("unknowns", FindI) == "I" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
		if k_Self ~= nil and N_Ring ~= nil and L_Self ~= nil and A ~= nil then
			Binesh.CreateHTMLFile("L = k*Mu<sub>0</sub>*N<sup>2<sup><span>A/I</span>", "I = <span>Mu<sub>0</sub>*k*N<sup>2<sup>*A/L</span>")
			
			I = k_Self*4*Zarib.Pi*10^(-7)*N_Ring^2*A/L_Self
			
			Binesh.AddToHTML("A = <span>"..L_Self.."*"..I.."/Mu<sub>0</sub>*"..k_Self.."*"..N_Ring.."<sup>2</sup></span> &#8658; A = "..A.." m<sup>2</sup>")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("L: "..L_Self, "V")
			Binesh.AddToHTML("k: "..k_self, "V")
			Binesh.AddToHTML("N: "..N_Ring, "V")
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("I: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "I");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end