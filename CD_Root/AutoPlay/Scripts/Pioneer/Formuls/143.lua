function Binesh.F143()
	if Fi == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Fi") ~= -1 then
		if A ~= nil and B ~= nil and t ~= nil and Omega ~= nil then
			Binesh.CreateHTMLFile("Fi = ABcosOmegaTeta")
			Fi = A*B*Math.Cos(Omega*Teta)
			
			Binesh.AddToHTML("Fi = "..A.."*"..B.."*cos"..Omega.."*"..Teta.." &#8658; Fi = "..Fi.." Wb")
			
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("Fi: ?", "V")
		end
	end
	
	if A == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "A") ~= -1 then
		if Fi ~= nil and B ~= nil and t ~= nil and Omega ~= nil then
			Binesh.CreateHTMLFile("Fi = ABcosOmegaTeta", "A = <span>Fi/BcosOmegaTeta</span>")
			A = Fi/(B*Math.Cos(Omega*Teta))
			
			Binesh.AddToHTML("A = <span>"..Fi.."/"..B.."*cos"..Omega.."*"..Teta.."</span> &#8658; A = "..A.." m<sup>2</sup>")
			
			Binesh.AddToHTML("Fi: "..Fi.." Wb", "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("A: ?", "V")
		end
	end
	
	if B == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1 then
		if A ~= nil and Fi ~= nil and t ~= nil and Omega ~= nil then
			Binesh.CreateHTMLFile("Fi = ABcosOmegaTeta", "B = <span>Fi/AcosOmegaTeta</span>")
			B = Fi/(A*Math.Cos(Omega*Teta))
			
			Binesh.AddToHTML("B = <span>"..Fi.."/"..A.."*cos"..Omega.."*"..Teta.."</span> &#8658; B = "..B.." T")
			
			Binesh.AddToHTML("Fi: "..Fi.." Wb", "V")
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("B: ?", "V")
		end
	end
end