function Binesh.F144()
	if Epsilon == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê „Õ—òÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Epsilon") ~= -1 then
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
		end
	end
	
	if N_Ring == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "Õ·ﬁÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1 then
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
		end
	end
	
	if A == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "A") ~= -1 then
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
		end
	end
	
	if B == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1 then
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
		end
	end
end