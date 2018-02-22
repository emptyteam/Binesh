function Binesh.F137()
	if Epsilon == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê „Õ—òÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Epsilon") ~= -1)) then
		if V_Speed ~= nil and B ~= nil and l ~= nil then
			Binesh.CreateHTMLFile("Epsilon = BlV")
			Epsilon = B*l*V_Speed
			
			Binesh.AddToHTML("Epsilon = "..Binesh.ProgressNumber(B).."*"..Binesh.ProgressNumber(l).."*"..Binesh.ProgressNumber(V_Speed).." &#8658; Epsilon = "..Binesh.ProgressNumber(Epsilon).." V")
			
			Binesh.AddToHTML("B = "..Binesh.ProgressNumber(B).." T", "V")
			Binesh.AddToHTML("l = "..Binesh.ProgressNumber(l).." m", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Speed).." m/s", "V")
			Binesh.AddToHTML("Epsilon = ?", "V")
		end
	end
	
	if B == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1) then
		if V_Speed ~= nil and Epsilon ~= nil and l ~= nil then
			Binesh.CreateHTMLFile("Epsilon = BlV","B = <span>Epsilon/lV</span>")
			B = Epsilon/(l*V_Speed)
			
			Binesh.AddToHTML("B = <span>"..Binesh.ProgressNumber(Epsilon).."/"..Binesh.ProgressNumber(l).."*"..Binesh.ProgressNumber(V_Speed).."</span> &#8658; B = "..Binesh.ProgressNumber(B).."T")
			
			Binesh.AddToHTML("Epsilon = "..Binesh.ProgressNumber(Epsilon).." V", "V")
			Binesh.AddToHTML("l = "..Binesh.ProgressNumber(l).." m", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Speed).." m/s", "V")
			Binesh.AddToHTML("B = ?", "V")
		end
	end
	
	if l == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "l") ~= -1) then
		if V_Speed ~= nil and Epsilon ~= nil and B ~= nil then
			Binesh.CreateHTMLFile("Epsilon = BlV","l = <span>Epsilon/BV</span>")
			l = Epsilon/(B*V_Speed)
			
			Binesh.AddToHTML("l = <span>"..Binesh.ProgressNumber(Epsilon).."/"..Binesh.ProgressNumber(B).."*"..Binesh.ProgressNumber(V_Speed).."</span> &#8658; l = "..Binesh.ProgressNumber(l).." m")
			
			Binesh.AddToHTML("Epsilon = "..Binesh.ProgressNumber(Epsilon).." V", "V")
			Binesh.AddToHTML("B = "..Binesh.ProgressNumber(B).." T", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Speed).." m/s", "V")
			Binesh.AddToHTML("l = ?", "V")
		end
	end
	
	if V_Speed == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then
		if V_Speed ~= nil and B ~= nil and l ~= nil then
			Binesh.CreateHTMLFile("Epsilon = BlV","V = <span>Epsilon/lB</span>")
			V_Speed = Epsilon/B*l
			
			Binesh.AddToHTML("V = <span>"..Binesh.ProgressNumber(Epsilon).."/"..Binesh.ProgressNumber(B).."*"..Binesh.ProgressNumber(l).."</span> &#8658; V = "..Binesh.ProgressNumber(V_Speed).." m/s")
			
			Binesh.AddToHTML("Epsilon = "..Binesh.ProgressNumber(Epsilon).." V", "V")
			Binesh.AddToHTML("B = "..Binesh.ProgressNumber(B).." T", "V")
			Binesh.AddToHTML("l = "..Binesh.ProgressNumber(l).." m", "V")
			Binesh.AddToHTML("V = ?", "V")
		end
	end
end