function Binesh.F143()
	if Fi == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Fi") ~= -1) then
		if A ~= nil and B ~= nil and t ~= nil and Omega ~= nil then
			Binesh.CreateHTMLFile("Fi = ABCosOmegat")
			Fi = A*B*Math.Cos(Omega*t)
			
			Binesh.AddToHTML("Fi = "..A.."*"..B.."*Cos"..Omega.."*"..t.." &#8658; Fi = "..Fi.." Wb")
			
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("t: "..t, "V")
			Binesh.AddToHTML("Omega: "..Omega.."rad/s", "V")
			Binesh.AddToHTML("Fi: ?", "V")
		end
	end
	
	if A == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã”„ ”ÿÕ") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "A") ~= -1) then
		if Fi ~= nil and B ~= nil and t ~= nil and Omega ~= nil then
			Binesh.CreateHTMLFile("Fi = ABCosOmegat", "A = <span>Fi/BCosOmegat</span>")
			A = Fi/(B*Math.Cos(Omega*t))
			
			Binesh.AddToHTML("A = <span>"..Fi.."/"..B.."*Cos"..Omega.."*"..t.."</span> &#8658; A = "..A.." m<sup>2</sup>")
			
			Binesh.AddToHTML("Fi: "..Fi.." Wb", "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("t: "..t, "V")
			Binesh.AddToHTML("Omega: "..Omega.."rad/s", "V")
			Binesh.AddToHTML("A: ?", "V")
		end
	end
	if Omega == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  “«ÊÌÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Omega") ~= -1) then
		if A ~= nil and Fi ~= nil and t ~= nil and B ~= nil then
			Binesh.CreateHTMLFile("Fi = ABCosOmegat", "CosOmegat = <span>Fi/AB</span>")
			 
			CosOmegat = Fi/(A*B)
			Omegat = Math.Acos(CosOmegat)
			Omega = Omegat/t
			
			Binesh.AddToHTML("CosOmegat = <span>"..Fi.."/"..A.."*"..B.."</span> &#8658;  CosOmegat = "..CosOmegat.."<br> &#8658; Omegat = Cos<sup>-1</sup>("..CosOmegat..") &#8658; Omegat = "..Omegat.." &#8658; Omega = <span>Omegat/t</span> &#8658; Omega = <span>"..Omegat.."/"..t.."</span> &#8658; Omega = "..Omega.." rad/s" )
			
			Binesh.AddToHTML("Fi: "..Fi.." Wb", "V")
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("t: "..t, "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("Omega: ?", "V")
		end
	end
	
	if t == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1) then
		if A ~= nil and Fi ~= nil and Omega ~= nil and B ~= nil then
			Binesh.CreateHTMLFile("Fi = ABCosOmegat", "CosOmegat = <span>Fi/AB</span>")
			 
			CosOmegat = Fi/(A*B)
			Omegat = Math.Acos(CosOmegat)
			t = Omegat/Omega
			
			Binesh.AddToHTML("CosOmegat = <span>"..Fi.."/"..A.."*"..B.."</span> &#8658;  CosOmegat = "..CosOmegat.."<br> &#8658; Omegat = Cos<sup>-1</sup>("..CosOmegat..") &#8658; Omegat = "..Omegat.." &#8658; t = <span>Omegat/Omega</span> &#8658; t = <span>"..Omegat.."/"..Omega.."</span> &#8658; t = "..t.." s" )
			
			Binesh.AddToHTML("Fi: "..Fi.." Wb", "V")
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("Omega: "..Omega.."rad/s", "V")
			Binesh.AddToHTML("t: ?", "V")
		end
	end
	
	if B == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1) then
		Dialog.Message("Notice", t, MB_OK, MB_ICONINFORMATION, MB_DEFBUTTON1);

		if A ~= nil and Fi ~= nil and t ~= nil and Omega ~= nil then
			Binesh.CreateHTMLFile("Fi = ABCosOmegat", "B = <span>Fi/ACosOmegat</span>")
			B = Fi/(A*Math.Cos(Omega*t))
			
			Binesh.AddToHTML("B = <span>"..Fi.."/"..A.."*Cos"..Omega.."*"..t.."</span> &#8658; B = "..B.." T")
			
			Binesh.AddToHTML("Fi: "..Fi.." Wb", "V")
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("t: "..t, "V")
			Binesh.AddToHTML("Omega: "..Omega.."rad/s", "V")
			Binesh.AddToHTML("B: ?", "V")
		end
	end
end