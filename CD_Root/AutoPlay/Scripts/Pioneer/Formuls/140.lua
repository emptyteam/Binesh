function Binesh.F140()
	if U == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1) then
		if L_Self ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span>LI<sup>2</sup>")
			U = 0.5*L_Self*(I^2)
			
			Binesh.AddToHTML("U = <span>1/2</span>*"..Binesh.ProgressNumber(L_Self).."*"..Binesh.ProgressNumber(I).."<sup>2</sup> &#8658; U = "..Binesh.ProgressNumber(U).." J")
			
			Binesh.AddToHTML("L = "..Binesh.ProgressNumber(L_Self).." m", "V")
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("U = ?", "V")
		end
	end
	
	if L_Self == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» ŒÊœ«·ﬁ«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L") ~= -1) then
		if U ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span>LI<sup>2</sup>", "L = <span>2U/I<sup>2</sup></span>")
			L_Self = 2*U/(I^2)
			
			Binesh.AddToHTML("L = <span>2*"..Binesh.ProgressNumber(U).."/"..Binesh.ProgressNumber(I).."<sup>2</sup></span> &#8658; L = "..Binesh.ProgressNumber(L_Self).." H")
			
			Binesh.AddToHTML("U = "..Binesh.ProgressNumber(U).." J", "V")
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("L = ?", "V")
		end
	end
	
	if I == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1) then
		if U ~= nil and L_Self ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span>LI<sup>2</sup>", "I = Sqrt(<span>2U/L</span>)")
			I = Math.Sqrt(2*U/L_Self)
			
			Binesh.AddToHTML("I = Sqrt(<span>2*"..Binesh.ProgressNumber(U).."/"..Binesh.ProgressNumber(L_Self).."</span>) &#8658; I = "..Binesh.ProgressNumber(I).." A")
			
			Binesh.AddToHTML("U = "..Binesh.ProgressNumber(U).." J", "V")
			Binesh.AddToHTML("L = "..Binesh.ProgressNumber(L_Self).." m", "V")
			Binesh.AddToHTML("I = ?", "V")
		end
	end
end