function Binesh.F115_1()
	if P_Power == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, " Ê«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1) then
		if I ~= nil and R ~= nil then
			Binesh.CreateHTMLFile("U = RI<sup>2</sup>")
			P_Power = R * I^2
			
			Binesh.AddToHTML("R = "..Binesh.ProgressNumber(R).." Ohm", "V")
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("P = ?", "V")
			
			Binesh.AddToHTML("P = "..Binesh.ProgressNumber(R).."*"..Binesh.ProgressNumber(I).."<sup>2</sup> &#8658; P = "..Binesh.ProgressNumber(P_Power).." W")
		end
	end
	
	if I == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "¬„Å—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1) then
		if P_Power ~= nil and R ~= nil then
			I = Math.Sqrt(P_Power/R)
			
			Binesh.AddToHTML("P = "..Binesh.ProgressNumber(P_Power).." W", "V")
			Binesh.AddToHTML("R = "..Binesh.ProgressNumber(R).." Ohm", "V")
			Binesh.AddToHTML("I = ?", "V")
			
			Binesh.CreateHTMLFile("P = RI<sup>2</sup>", "I = Sqrt(<span>P/R</span>)")
			Binesh.AddToHTML("I = Sqrt(<span>"..Binesh.ProgressNumber(P_Power).."/"..Binesh.ProgressNumber(R).."</span>) &#8658; I = "..Binesh.ProgressNumber(I).." A")
		end
	end
	
	if R == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1) then
		if I ~= nil and P_Power ~= nil then
			R = P_Power/(I^2)
			
			Binesh.AddToHTML("P = "..Binesh.ProgressNumber(P_Power).." W", "V")
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("R = ?", "V")
			
			Binesh.CreateHTMLFile("P = RI<sup>2</sup>", "R = <span>P/I<sup>2</sup></span>")
			Binesh.AddToHTML("R = <span>"..Binesh.ProgressNumber(P_Power).."/"..Binesh.ProgressNumber(I).."<sup>2</sup></span> &#8658; R = "..Binesh.ProgressNumber(R).." Ohm")
		end
	end
end