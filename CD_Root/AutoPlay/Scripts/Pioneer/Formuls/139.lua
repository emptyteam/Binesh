function Binesh.F139()
	if L_Self == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» ŒÊœ «·ﬁ«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L") ~= -1 then
		if k_Self ~= nil and N_Ring ~= nil and A ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("L = kMu<sub>0</sub>N<sup>2<sup><span>A/I</span>")
			L_Self = k_Self*4*Zarib.Pi*10^(-7)*N_Ring^2*A/I
			
			Binesh.AddToHTML("L = <span>"..k_Self.."*Mu<sub>0</sub>*"..N_Ring.."<sup>2</sup>*"..A.."/"..I.."</span> &#8658; L = "..L_Self)
			
			Binesh.AddToHTML("k: "..k_Self, "V")
			Binesh.AddToHTML("N: "..N_Ring, "V")
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("L: ?", "V")
		end
	end
	
	if k_Self == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "Â” Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "k") ~= -1 then
		if L_Self ~= nil and N_Ring ~= nil and A ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("L = kMu<sub>0</sub>N<sup>2<sup><span>A/I</span>", "k = <span>IL/Mu<sub>0</sub>N<sup>2</sup>A</span>")
			k_Self = I*L_Self/(4*Zarib.Pi*10^(-7)*N_Ring^2*A)
			
			Binesh.AddToHTML("k = <span>"..I.."*"..L_Self.."/Mu<sub>0</sub>*"..N_Ring.."<sup>2</sup>*"..A.."</span> &#8658; k = "..k_Self)
			
			Binesh.AddToHTML("L: "..L_Self, "V")
			Binesh.AddToHTML("N: "..N_Ring, "V")
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("k: ?", "V")
		end
	end
	
	if N_Ring == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "Õ·ﬁÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1 then
		if I ~= nil and L_Self ~= nil and k_Self ~= nil and A ~= nil then
			Binesh.CreateHTMLFile("L = kMu<sub>0</sub>N<sup>2<sup><span>A/I</span>", "N = <span>IL/Mu<sub>0</sub>kA</span>")
			
			N_Ring = I*L_Self/(4*Zarib.Pi*10^(-7)*k_Self*A)
			
			Binesh.AddToHTML("N = <span>"..I.."*"..L_Self.."/Mu<sub>0</sub>*"..k_Self.."*"..A.."</span> &#8658; N = "..N_Ring)
			
			Binesh.AddToHTML("L: "..L_Self, "V")
			Binesh.AddToHTML("k: "..k_self, "V")
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("N: ?", "V")
		end
	end
	
	if A == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã”„ ”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "A") ~= -1 then
		if k_Self ~= nil and I ~= nil and L_Self ~= nil and N_Ring ~= nil then
			Binesh.CreateHTMLFile("L = kMu<sub>0</sub>N<sup>2<sup><span>A/I</span>", "A = <span>LI/Mu<sub>0</sub>kN<sup>2<sup></span>")
			
			A = L_Self*I/(4*Zarib.Pi*10^(-7)*k_Self*N_Ring^2)
			
			Binesh.AddToHTML("A = <span>"..L_Self.."*"..I.."/Mu<sub>0</sub>*"..k_Self.."*"..N_Ring.."<sup>2</sup></span> &#8658; A = "..A.." m<sup>2</sup>")
			
			Binesh.AddToHTML("L: "..L_Self, "V")
			Binesh.AddToHTML("k: "..k_self, "V")
			Binesh.AddToHTML("N: "..N_Ring, "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("A: ?", "V")
		end
	end
	
	if I == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
		if k_Self ~= nil and N_Ring ~= nil and L_Self ~= nil and A ~= nil then
			Binesh.CreateHTMLFile("L = k*Mu<sub>0</sub>*N<sup>2<sup><span>A/I</span>", "I = <span>Mu<sub>0</sub>*k*N<sup>2<sup>*A/L</span>")
			
			I = k_Self*4*Zarib.Pi*10^(-7)*N_Ring^2*A/L_Self
			
			Binesh.AddToHTML("A = <span>"..L_Self.."*"..I.."/Mu<sub>0</sub>*"..k_Self.."*"..N_Ring.."<sup>2</sup></span> &#8658; A = "..A.." m<sup>2</sup>")
			
			Binesh.AddToHTML("L: "..L_Self, "V")
			Binesh.AddToHTML("k: "..k_self, "V")
			Binesh.AddToHTML("N: "..N_Ring, "V")
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("I: ?", "V")
		end
	end
end