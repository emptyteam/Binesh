function Binesh.F139()
	--------------------------{DELTA}--------------------------
	if _DeltaI == nil then
		if I1 ~= nil and I2 ~= nil then
			Binesh.CreateHTMLFile("DeltaI = I<sub>2</sub>-I<sub>1</sub>")
			_DeltaI = I2 - I1
			Binesh.AddToHTML("DeltaI = "..Binesh.Convert_e(I2).."-"..Binesh.Convert_e(I1).." &#8658; DeltaI = "..Binesh.Convert_e(_DeltaI).." A")
		end
	end
	
	if I1 == nil then
		if _DeltaI ~= nil and I2 ~= nil then
			Binesh.CreateHTMLFile("DeltaI = I<sub>2</sub>-I<sub>1</sub>", "I<sub>1</sub> = I<sub>2</sub>-DeltaI")
			I1 = I2-_DeltaI
			Binesh.AddToHTML("I<sub>1</sub> = "..Binesh.Convert_e(I2).."-"..Binesh.Convert_e(_DeltaI).." &#8658; I<sub>1</sub> = "..Binesh.Convert_e(I1).." A")
		end
	end
	
	if I2 == nil then
		if _DeltaI ~= nil and I1 ~= nil then
			Binesh.CreateHTMLFile("DeltaI = I<sub>2</sub>-I<sub>1</sub>", "I<sub>2</sub> = DeltaI+I<sub>1</sub>")
			I2 = I1+_DeltaI
			Binesh.AddToHTML("I<sub>2</sub> = "..Binesh.Convert_e(_DeltaI).."+"..Binesh.Convert_e(I1).." &#8658; I<sub>2</sub> = "..Binesh.Convert_e(I2).." A")
		end
	end
	--------------------------END {DELTA}--------------------------
	if L_Self == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» ŒÊœ«·ﬁ«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L") ~= -1) then
		if k_Self ~= nil and N_Ring ~= nil and A ~= nil and l ~= nil then
			Binesh.CreateHTMLFile("L = kMu<sub>0</sub>N<sup>2</sup><span>A/I</span>")
			L_Self = (k_Self*4*Zarib.Pi*10^(-7)*N_Ring^2*A)/l
			
			Binesh.AddToHTML("L = <span>"..Binesh.Convert_e(k_Self).."*4*"..Binesh.Convert_e(Zarib.Pi).."*10<sup>-7</sup>*"..Binesh.Convert_e(N_Ring).."<sup>2</sup>*"..Binesh.Convert_e(A).."/"..Binesh.Convert_e(l).."</span> &#8658; L = "..Binesh.Convert_e(L_Self).." H")
			
			Binesh.AddToHTML("k: "..Binesh.Convert_e(k_Self), "V")
			Binesh.AddToHTML("N: "..Binesh.Convert_e(N_Ring), "V")
			Binesh.AddToHTML("A: "..Binesh.Convert_e(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("l: "..Binesh.Convert_e(l).." m", "V")
			Binesh.AddToHTML("L: ?", "V")
		end
	end
	
	if k_Self == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Â” Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "k") ~= -1) then
		if L_Self ~= nil and N_Ring ~= nil and A ~= nil and l ~= nil then
			Binesh.CreateHTMLFile("L = kMu<sub>0</sub>N<sup>2</sup><span>A/I</span>", "k = <span>IL/Mu<sub>0</sub>N<sup>2</sup>A</span>")
			k_Self = l*L_Self/(4*Zarib.Pi*10^(-7)*N_Ring^2*A)
			
			Binesh.AddToHTML("k = <span>"..Binesh.Convert_e(l).."*"..Binesh.Convert_e(L_Self).."/4*Pi*10<sup>-7</sup>*"..Binesh.Convert_e(N_Ring).."<sup>2</sup>*"..Binesh.Convert_e(A).."</span> &#8658; k = "..Binesh.Convert_e(k_Self))
			
			Binesh.AddToHTML("L: "..Binesh.Convert_e(L_Self).." H", "V")
			Binesh.AddToHTML("N: "..Binesh.Convert_e(N_Ring), "V")
			Binesh.AddToHTML("A: "..Binesh.Convert_e(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("l: "..Binesh.Convert_e(l).." m", "V")
			Binesh.AddToHTML("k: ?", "V")
		end
	end
	
	if N_Ring == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Õ·ﬁÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1) then
		if l ~= nil and L_Self ~= nil and k_Self ~= nil and A ~= nil then
			Binesh.CreateHTMLFile("L = kMu<sub>0</sub>N<sup>2</sup><span>A/I</span>", "N = sqrt(<span>IL/Mu<sub>0</sub>kA</span>)")
			
			N_Ring = math.sqrt(l*L_Self/(4*Zarib.Pi*10^(-7)*k_Self*A))
			
			Binesh.AddToHTML("N = sqrt(<span>"..Binesh.Convert_e(l).."*"..Binesh.Convert_e(L_Self).."/4*Pi*10<sup>-7</sup>>*"..Binesh.Convert_e(k_Self).."*"..Binesh.Convert_e(A).."</span>) &#8658; N = "..Binesh.Convert_e(N_Ring))
			
			Binesh.AddToHTML("L: "..Binesh.Convert_e(L_Self).." H", "V")
			Binesh.AddToHTML("k: "..Binesh.Convert_e(k_Self), "V")
			Binesh.AddToHTML("A: "..Binesh.Convert_e(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("l: "..Binesh.Convert_e(l).." m", "V")
			Binesh.AddToHTML("N: ?", "V")
		end
	end
	
	if A == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã”„ ”ÿÕ") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "A") ~= -1) then
		if k_Self ~= nil and l ~= nil and L_Self ~= nil and N_Ring ~= nil then
			Binesh.CreateHTMLFile("L = kMu<sub>0</sub>N<sup>2</sup><span>A/I</span>", "A = <span>LI/Mu<sub>0</sub>kN<sup>2</sup></span>")
			
			A = L_Self*l/(4*Zarib.Pi*10^(-7)*k_Self*N_Ring^2)
			
			Binesh.AddToHTML("A = <span>"..Binesh.Convert_e(L_Self).."*"..Binesh.Convert_e(l).."/4*"..Binesh.Convert_e(Zarib.Pi).."*10<sup>-7</sup>*"..Binesh.Convert_e(k_Self).."*"..Binesh.Convert_e(N_Ring).."<sup>2</sup></span> &#8658; A = "..Binesh.Convert_e(A).." m<sup>2</sup>")
			
			Binesh.AddToHTML("L: "..Binesh.Convert_e(L_Self).." H", "V")
			Binesh.AddToHTML("k: "..Binesh.Convert_e(k_Self), "V")
			Binesh.AddToHTML("N: "..Binesh.Convert_e(N_Ring), "V")
			Binesh.AddToHTML("l: "..Binesh.Convert_e(l).." m", "V")
			Binesh.AddToHTML("A: ?", "V")
		end
	end
	
	if l == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "l") ~= -1) then
		if k_Self ~= nil and N_Ring ~= nil and L_Self ~= nil and A ~= nil then
			Binesh.CreateHTMLFile("L = k*Mu<sub>0</sub>*N<sup>2</sup><span>A/I</span>", "l = <span>Mu<sub>0</sub>*k*N<sup>2</sup>*A/L</span>")
			
			l = (k_Self*4*Zarib.Pi*10^(-7)*N_Ring^2*A)/L_Self
			
			Binesh.AddToHTML("l = <span>"..Binesh.Convert_e(k_Self).."*4*Pi*10<sup>-7</sup>*"..Binesh.Convert_e(N_Ring).."<sup>2</sup>*"..Binesh.Convert_e(A).."/"..Binesh.Convert_e(L_Self).."</span> &#8658; l = "..Binesh.Convert_e(l).." m<sup>2</sup>")
			
			Binesh.AddToHTML("L: "..Binesh.Convert_e(L_Self).." H", "V")
			Binesh.AddToHTML("k: "..Binesh.Convert_e(k_Self), "V")
			Binesh.AddToHTML("N: "..Binesh.Convert_e(N_Ring), "V")
			Binesh.AddToHTML("A: "..Binesh.Convert_e(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("l: ?", "V")
		end
	end
end