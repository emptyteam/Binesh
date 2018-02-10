function Binesh.F144()
	if Epsilon == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê „Õ—òÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Epsilon") ~= -1) then
		if A ~= nil and B ~= nil and t ~= nil and Omega ~= nil and N_Ring ~= nil then
			Binesh.CreateHTMLFile("Epsilon = NABOmegaSinOmegat")
			Epsilon = N_Ring*A*B*Omega*Math.Sin(Omega*t)
			
			Binesh.AddToHTML("Epsilon = "..Binesh.Convert_e(N_Ring).."*"..Binesh.Convert_e(A).."*"..Binesh.Convert_e(B).."*"..Binesh.Convert_e(Omega).."*sin"..Binesh.Convert_e(Omega).."*"..Binesh.Convert_e(t).." &#8658; Epsilon = "..Binesh.Convert_e(Epsilon).." V")
			
			Binesh.AddToHTML("N: "..Binesh.Convert_e(N_Ring), "V")
			Binesh.AddToHTML("A: "..Binesh.Convert_e(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("B: "..Binesh.Convert_e(B).." T", "V")
			Binesh.AddToHTML("Omega: "..Binesh.Convert_e(Omega).." rad/s", "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("Epsilon: ?", "V")
		end
	end
	
	if N_Ring == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Õ·ﬁÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1) then
		if A ~= nil and B ~= nil and t ~= nil and Omega ~= nil and Epsilon ~= nil then
			Binesh.CreateHTMLFile("Epsilon = NABOmegaSinOmegat", "N = <span>Epsilon/ABOmegaSinOmegat</span>")
			N_Ring = Epsilon/(A*B*Omega*Math.Sin(Omega*t))
			
			Binesh.AddToHTML("N = <span>"..Binesh.Convert_e(Epsilon).."/"..Binesh.Convert_e(A).."*"..Binesh.Convert_e(B).."*"..Binesh.Convert_e(Omega).."*Sin"..Binesh.Convert_e(Omega).."*"..Binesh.Convert_e(t).."</span> &#8658; N = "..Binesh.Convert_e(N_Ring))
			
			Binesh.AddToHTML("Epsilon: "..Binesh.Convert_e(Epsilon).." V", "V")
			Binesh.AddToHTML("A: "..Binesh.Convert_e(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("B: "..Binesh.Convert_e(B).." T", "V")
			Binesh.AddToHTML("Omega: "..Binesh.Convert_e(Omega).." rad/s", "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("N: ?", "V")
		end
	end
	
	if A == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã”„ ”ÿÕ") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "A") ~= -1)) then
		if Epsilon ~= nil and B ~= nil and t ~= nil and Omega ~= nil and N_Ring ~= nil then
			Binesh.CreateHTMLFile("Epsilon = NABOmegaSinOmegat", "A = <span>Epsilon/NBOmegaSinOmegat</span>")
			A = Epsilon/(N_Ring*B*Omega*Math.Sin(Omega*t))
			
			Binesh.AddToHTML("A = <span>"..Binesh.Convert_e(Epsilon).."/"..Binesh.Convert_e(N_Ring).."*"..Binesh.Convert_e(B).."*"..Binesh.Convert_e(Omega).."*Sin"..Binesh.Convert_e(Omega).."*"..Binesh.Convert_e(t).."</span> &#8658; A = "..Binesh.Convert_e(A).." m<sup>2</sup>")
			
			Binesh.AddToHTML("Epsilon: "..Binesh.Convert_e(Epsilon).." V", "V")
			Binesh.AddToHTML("N: "..Binesh.Convert_e(N_Ring), "V")
			Binesh.AddToHTML("B: "..Binesh.Convert_e(B).." T", "V")
			Binesh.AddToHTML("Omega: "..Binesh.Convert_e(Omega).." rad/s", "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("A: ?", "V")
		end
	end
	
	if B == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1) then
		if A ~= nil and Epsilon ~= nil and t ~= nil and Omega ~= nil and N_Ring ~= nil then
			Binesh.CreateHTMLFile("Epsilon = NABOmegaSinOmegat", "B = <span>Epsilon/NAOmegaSinOmegat</span>")
			B = Epsilon/(N_Ring*A*Omega*Math.Sin(Omega*t))
			
			Binesh.AddToHTML("B = <span>"..Binesh.Convert_e(Epsilon).."/"..Binesh.Convert_e(N_Ring).."*"..Binesh.Convert_e(A).."*"..Binesh.Convert_e(Omega).."*Sin"..Binesh.Convert_e(Omega).."*"..Binesh.Convert_e(t).."</span> &#8658; B = "..Binesh.Convert_e(B).." T")
			
			Binesh.AddToHTML("Epsilon: "..Binesh.Convert_e(Epsilon).." V", "V")
			Binesh.AddToHTML("N: "..Binesh.Convert_e(N_Ring), "V")
			Binesh.AddToHTML("A: "..Binesh.Convert_e(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("Omega: "..Binesh.Convert_e(Omega).." rad/s", "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("B: ?", "V")
		end
	end
	
	if t == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1) then
		if A ~= nil and Epsilon ~= nil and Omega ~= nil and B ~= nil and N_Ring ~= nil then
			Binesh.CreateHTMLFile("Epsilon = NABOmegaSinOmegat", "SinOmegat = <span>Epsilon/NABOmega</span>")
			 
			SinOmegat = Epsilon/(N_Ring*A*B*Omega)
			Omegat_1 = Zarib.Pi-(Math.Asin(SinOmegat))
			Omegat_2 = Math.Asin(SinOmegat)
			t_1 = Omegat_1/Omega
			t_2 = Omegat_2/Omega
			
			Binesh.AddToHTML("SinOmegat = <span>"..Binesh.Convert_e(Epsilon).."/"..Binesh.Convert_e(N_Ring).."*"..Binesh.Convert_e(A).."*"..Binesh.Convert_e(B).."*"..Binesh.Convert_e(Omega).."</span> &#8658;  SinOmegat = "..Binesh.Convert_e(SinOmegat).."<br> &#8658; Omegat = sin<sup>-1</sup>("..Binesh.Convert_e(SinOmegat)..")")
			
			Binesh.AddCommentToHTML("«Ì‰ „⁄«œ·Â œÊ ÃÊ«» œ«—œ:")
			
			Binesh.AddToHTML("<div style='display: inline; color: red'>1) </div> Omegat = "..Binesh.Convert_e(Omegat_1).." &#8658; t = <span>"..Binesh.Convert_e(Omegat_1).."/"..Binesh.Convert_e(Omega).."</span> &#8658; t<sub>1</sub> = "..Binesh.Convert_e(t_1).." s" )
			Binesh.AddToHTML("<br><div style='display: inline; color: red'>2) </div> Omegat = "..Binesh.Convert_e(Omegat_2).." &#8658; t = <span>"..Binesh.Convert_e(Omegat_2).."/"..Binesh.Convert_e(Omega).."</span> &#8658; t<sub>2</sub> = "..Binesh.Convert_e(t_2).." s" )
			
			t = t_1
			
			Binesh.AddToHTML("Epsilon: "..Binesh.Convert_e(Epsilon).." V", "V")
			Binesh.AddToHTML("N: "..Binesh.Convert_e(N_Ring), "V")
			Binesh.AddToHTML("B: "..Binesh.Convert_e(B).." T", "V")
			Binesh.AddToHTML("Omega: "..Binesh.Convert_e(Omega).." rad/s", "V")
			Binesh.AddToHTML("A: "..Binesh.Convert_e(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("t: ?", "V")
		end
	end
end