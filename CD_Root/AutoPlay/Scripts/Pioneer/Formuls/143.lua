function Binesh.F143()
	if Fi == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Fi") ~= -1) then
		if A ~= nil and B ~= nil and t ~= nil and Omega ~= nil then
			Binesh.CreateHTMLFile("Fi = ABCosOmegat")
			Fi = A*B*Math.Cos(Omega*t)
			
			Binesh.AddToHTML("Fi = "..Binesh.Convert_e(A).."*"..Binesh.Convert_e(B).."*Cos"..Binesh.Convert_e(Omega).."*"..Binesh.Convert_e(t).." &#8658; Fi = "..Binesh.Convert_e(Fi).." Wb")
			
			Binesh.AddToHTML("A: "..Binesh.Convert_e(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("B: "..Binesh.Convert_e(B).." T", "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("Omega: "..Binesh.Convert_e(Omega).."rad/s", "V")
			Binesh.AddToHTML("Fi: ?", "V")
		end
	end
	
	if A == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã”„ ”ÿÕ") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "A") ~= -1) then
		if Fi ~= nil and B ~= nil and t ~= nil and Omega ~= nil then
			Binesh.CreateHTMLFile("Fi = ABCosOmegat", "A = <span>Fi/BCosOmegat</span>")
			A = Fi/(B*Math.Cos(Omega*t))
			
			Binesh.AddToHTML("A = <span>"..Binesh.Convert_e(Fi).."/"..Binesh.Convert_e(B).."*Cos"..Binesh.Convert_e(Omega).."*"..Binesh.Convert_e(t).."</span> &#8658; A = "..Binesh.Convert_e(A).." m<sup>2</sup>")
			
			Binesh.AddToHTML("Fi: "..Binesh.Convert_e(Fi).." Wb", "V")
			Binesh.AddToHTML("B: "..Binesh.Convert_e(B).." T", "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("Omega: "..Binesh.Convert_e(Omega).."rad/s", "V")
			Binesh.AddToHTML("A: ?", "V")
		end
	end
	if Omega == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  “«ÊÌÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Omega") ~= -1) then
		if A ~= nil and Fi ~= nil and t ~= nil and B ~= nil then
			Binesh.CreateHTMLFile("Fi = ABCosOmegat", "CosOmegat = <span>Fi/AB</span>")
			 
			CosOmegat = Fi/(A*B)
			Omegat = Math.Acos(CosOmegat)
			Omega = Omegat/t
			
			Binesh.AddToHTML("CosOmegat = <span>"..Binesh.Convert_e(Fi).."/"..Binesh.Convert_e(A).."*"..Binesh.Convert_e(B).."</span> &#8658;  CosOmegat = "..Binesh.Convert_e(CosOmegat).."<br> &#8658; Omegat = Cos<sup>-1</sup>("..Binesh.Convert_e(CosOmegat)..") &#8658; Omegat = "..Binesh.Convert_e(Omegat).." &#8658; Omega = <span>Omegat/t</span> &#8658; Omega = <span>"..Binesh.Convert_e(Omegat).."/"..Binesh.Convert_e(t).."</span> &#8658; Omega = "..Binesh.Convert_e(Omega).." rad/s" )
			
			Binesh.AddToHTML("Fi: "..Binesh.Convert_e(Fi).." Wb", "V")
			Binesh.AddToHTML("A: "..Binesh.Convert_e(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("B: "..Binesh.Convert_e(B).." T", "V")
			Binesh.AddToHTML("Omega: ?", "V")
		end
	end
	
	if t == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1) then
		if A ~= nil and Fi ~= nil and Omega ~= nil and B ~= nil then
			Binesh.CreateHTMLFile("Fi = ABCosOmegat", "CosOmegat = <span>Fi/AB</span>")
			 
			CosOmegat = Fi/(A*B)
			Omegat = Math.Acos(CosOmegat)
			t = Omegat/Omega
			
			Binesh.AddToHTML("CosOmegat = <span>"..Binesh.Convert_e(Fi).."/"..Binesh.Convert_e(A).."*"..Binesh.Convert_e(B).."</span> &#8658;  CosOmegat = "..Binesh.Convert_e(CosOmegat).."<br> &#8658; Omegat = Cos<sup>-1</sup>("..Binesh.Convert_e(CosOmegat)..") &#8658; Omegat = "..Binesh.Convert_e(Omegat).." &#8658; t = <span>Omegat/Omega</span> &#8658; t = <span>"..Binesh.Convert_e(Omegat).."/"..Binesh.Convert_e(Omega).."</span> &#8658; t = "..Binesh.Convert_e(t).." s" )
			
			Binesh.AddToHTML("Fi: "..Binesh.Convert_e(Fi).." Wb", "V")
			Binesh.AddToHTML("A: "..Binesh.Convert_e(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("B: "..Binesh.Convert_e(B).." T", "V")
			Binesh.AddToHTML("Omega: "..Binesh.Convert_e(Omega).."rad/s", "V")
			Binesh.AddToHTML("t: ?", "V")
		end
	end
	
	if B == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1) then
		if A ~= nil and Fi ~= nil and t ~= nil and Omega ~= nil then
			Binesh.CreateHTMLFile("Fi = ABCosOmegat", "B = <span>Fi/ACosOmegat</span>")
			B = Fi/(A*Math.Cos(Omega*t))
			
			Binesh.AddToHTML("B = <span>"..Binesh.Convert_e(Fi).."/"..Binesh.Convert_e(A).."*Cos"..Binesh.Convert_e(Omega).."*"..Binesh.Convert_e(t).."</span> &#8658; B = "..Binesh.Convert_e(B).." T")
			
			Binesh.AddToHTML("Fi: "..Binesh.Convert_e(Fi).." Wb", "V")
			Binesh.AddToHTML("A: "..Binesh.Convert_e(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("Omega: "..Binesh.Convert_e(Omega).."rad/s", "V")
			Binesh.AddToHTML("B: ?", "V")
		end
	end
end