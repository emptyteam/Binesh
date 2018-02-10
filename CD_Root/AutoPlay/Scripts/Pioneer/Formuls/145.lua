function Binesh.F145()
	if I == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1) then
		if A ~= nil and B ~= nil and t ~= nil and Omega ~= nil and N_Ring ~= nil and R ~= nil then
			Binesh.CreateHTMLFile("I = <span>NABOmega/R</span>SinOmegat")
			I = N_Ring*A*B*Omega*Math.Sin(Omega*t)/R
			
			Binesh.AddToHTML("I = <span>"..Binesh.Convert_e(N_Ring).."*"..Binesh.Convert_e(A).."*"..Binesh.Convert_e(B).."*"..Binesh.Convert_e(Omega).."/"..Binesh.Convert_e(R).."</span>*sin"..Binesh.Convert_e(Omega).."*"..Binesh.Convert_e(t).." &#8658; I = "..Binesh.Convert_e(I).." A")
			
			Binesh.AddToHTML("N: "..Binesh.Convert_e(N_Ring), "V")
			Binesh.AddToHTML("B: "..Binesh.Convert_e(B).." T", "V")
			Binesh.AddToHTML("A: "..Binesh.Convert_e(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("Omega: "..Binesh.Convert_e(Omega).." rad/s", "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("R: "..Binesh.Convert_e(R).." Ohm", "V")
			Binesh.AddToHTML("I: ?", "V")
		end
	end
	
	if N_Ring == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Õ·ﬁÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1) then
		if A ~= nil and B ~= nil and t ~= nil and Omega ~= nil and I ~= nil and R ~= nil then
			Binesh.CreateHTMLFile("I = <span>NABOmega/R</span>SinOmegat", "N = <span>IR/BAOmegaSinOmegat</span>")
			N_Ring = I*R/(B*A*Omega*Math.Sin(Omega*t))
			
			Binesh.AddToHTML("N = <span>"..Binesh.Convert_e(I).."*"..Binesh.Convert_e(R).."/"..Binesh.Convert_e(B).."*"..Binesh.Convert_e(A).."*"..Binesh.Convert_e(Omega).."*sin"..Binesh.Convert_e(Omega).."*"..Binesh.Convert_e(t).."</span> &#8658; N = "..Binesh.Convert_e(N_Ring))
			
			Binesh.AddToHTML("I: "..Binesh.Convert_e(I).." A", "V")
			Binesh.AddToHTML("R: "..Binesh.Convert_e(R).." Ohm", "V")
			Binesh.AddToHTML("B: "..Binesh.Convert_e(B).." T", "V")
			Binesh.AddToHTML("A: "..Binesh.Convert_e(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("Omega: "..Binesh.Convert_e(Omega).." rad/s", "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("N: ?", "V")
		end
	end
	
	if A == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã”„ ”ÿÕ") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "A") ~= -1)) then
		if I ~= nil and B ~= nil and t ~= nil and Omega ~= nil and N_Ring ~= nil and R ~= nil then
			Binesh.CreateHTMLFile("I = <span>NABOmega/R</span>SinOmegat", "I = <span>IR/NBOmegaSinOmegat</span>")
			A = I*R/(N_Ring*B*Omega*Math.Sin(Omega*t))
			
			Binesh.AddToHTML("A = <span>"..Binesh.Convert_e(I).."*"..Binesh.Convert_e(R).."/"..Binesh.Convert_e(N_Ring).."*"..Binesh.Convert_e(B).."*"..Binesh.Convert_e(Omega).."*sin"..Binesh.Convert_e(Omega).."*"..Binesh.Convert_e(t).."</span> &#8658; A = "..Binesh.Convert_e(A).." m<sup>2</sup>")
			
			Binesh.AddToHTML("I: "..Binesh.Convert_e(I).." A", "V")
			Binesh.AddToHTML("R: "..Binesh.Convert_e(R).." Ohm", "V")
			Binesh.AddToHTML("N: "..Binesh.Convert_e(N_Ring), "V")
			Binesh.AddToHTML("B: "..Binesh.Convert_e(B).." T", "V")
			Binesh.AddToHTML("Omega: "..Binesh.Convert_e(Omega).." rad/s", "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("A: ?", "V")
		end
	end
	
	if B == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1) then
		if A ~= nil and I ~= nil and t ~= nil and Omega ~= nil and N_Ring ~= nil and R ~= nil then
			Binesh.CreateHTMLFile("I = <span>NABOmega/R</span>SinOmegat", "B = <span>IR/NAOmegaSinOmegat</span>")
			B = I*R/(N_Ring*A*Omega*Math.Sin(Omega*t))
			
			Binesh.AddToHTML("B = <span>"..Binesh.Convert_e(I).."*"..Binesh.Convert_e(R).."/"..Binesh.Convert_e(N_Ring).."*"..Binesh.Convert_e(A).."*"..Binesh.Convert_e(Omega).."*sin"..Binesh.Convert_e(Omega).."*"..Binesh.Convert_e(t).."</span> &#8658; B = "..Binesh.Convert_e(B).." T")
			
			Binesh.AddToHTML("I: "..Binesh.Convert_e(I).." A", "V")
			Binesh.AddToHTML("R: "..Binesh.Convert_e(R).." Ohm", "V")
			Binesh.AddToHTML("N: "..Binesh.Convert_e(N_Ring), "V")
			Binesh.AddToHTML("A: "..Binesh.Convert_e(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("Omega: "..Binesh.Convert_e(Omega).." rad/s", "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("B: ?", "V")
		end
	end
	
	if R == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1) then
		if A ~= nil and I ~= nil and t ~= nil and Omega ~= nil and N_Ring ~= nil and B ~= nil then
			Binesh.CreateHTMLFile("I = <span>NABOmega/R</span>SinOmegat", "R = <span>NBAOmegaSinOmegat/I</span>")
			R = (N_Ring*B*A*Omega*Math.Sin(Omega*t))/I
			
			Binesh.AddToHTML("R = <span>"..Binesh.Convert_e(N_Ring).."*"..Binesh.Convert_e(B).."*"..Binesh.Convert_e(A).."*"..Binesh.Convert_e(Omega).."*sin"..Binesh.Convert_e(Omega).."*"..Binesh.Convert_e(t).."/"..Binesh.Convert_e(I).."</span> &#8658; R = "..Binesh.Convert_e(R).." Ohm")
			
			Binesh.AddToHTML("N: "..Binesh.Convert_e(N_Ring), "V")
			Binesh.AddToHTML("B: "..Binesh.Convert_e(B).." T", "V")
			Binesh.AddToHTML("A: "..Binesh.Convert_e(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("Omega: "..Binesh.Convert_e(Omega).." rad/s", "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("I: "..Binesh.Convert_e(I).." A", "V")
			Binesh.AddToHTML("R: ?", "V")
		end
	end
	
	if t == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1) then
		if A ~= nil and I ~= nil and R ~= nil and Omega ~= nil and N_Ring ~= nil and B ~= nil then
			Binesh.CreateHTMLFile("I = <span>NABOmega/R</span>SinOmegat", "SinOmegat = <span>RI/NBAOmega</span>")
			
			SinOmegat = R*I/(N_Ring*B*A*Omega)
			Omegat_1 = Zarib.Pi-(Math.Asin(SinOmegat))
			Omegat_2 = Math.Asin(SinOmegat)
			t_1 = Omegat_1/Omega
			t_2 = Omegat_2/Omega
			
			Binesh.AddToHTML("SinOmegat = <span>"..Binesh.Convert_e(R).."*"..Binesh.Convert_e(I).."/"..Binesh.Convert_e(N_Ring).."*"..Binesh.Convert_e(B).."*"..Binesh.Convert_e(A).."*"..Binesh.Convert_e(Omega).."</span> &#8658; SinOmegat = "..Binesh.Convert_e(SinOmegat))
			
			Binesh.AddCommentToHTML("«Ì‰ „⁄«œ·Â œÊ ÃÊ«» œ«—œ:")
			
			Binesh.AddToHTML("<div style='display: inline; color: red'>1) </div> Omegat = "..Binesh.Convert_e(Omegat_1).." &#8658; t = <span>"..Binesh.Convert_e(Omegat_1).."/"..Binesh.Convert_e(Omega).."</span> &#8658; t<sub>1</sub> = "..Binesh.Convert_e(t_1).." s" )
			Binesh.AddToHTML("<br><div style='display: inline; color: red'>2) </div> Omegat = "..Binesh.Convert_e(Omegat_2).." &#8658; t = <span>"..Binesh.Convert_e(Omegat_2).."/"..Binesh.Convert_e(Omega).."</span> &#8658; t<sub>2</sub> = "..Binesh.Convert_e(t_2).." s" )
			
			t = t_1
			
			Binesh.AddToHTML("R: "..Binesh.Convert_e(R).." Ohm", "V")
			Binesh.AddToHTML("I: "..Binesh.Convert_e(I).." A", "V")
			Binesh.AddToHTML("N: "..Binesh.Convert_e(N_Ring), "V")
			Binesh.AddToHTML("B: "..Binesh.Convert_e(B).." T", "V")
			Binesh.AddToHTML("A: "..Binesh.Convert_e(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("Omega: "..Binesh.Convert_e(Omega).." rad/s", "V")
			Binesh.AddToHTML("t: ?", "V")			
		end
	end
end