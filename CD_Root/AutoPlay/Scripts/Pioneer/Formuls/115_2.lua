function Binesh.F115_2()
	if P_Power == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, " Ê«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1) then
		if I ~= nil and V_Electric ~= nil then
			P_Power = V_Electric * I
			
			Binesh.CreateHTMLFile("P = IV")
			Binesh.AddToHTML("P = "..Binesh.ProgressNumber(I).."*"..Binesh.ProgressNumber(V_Electric).." &#8658; P = "..Binesh.ProgressNumber(P_Power).." W")
			
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Electric).." V", "V")
			Binesh.AddToHTML("P = ?", "V")
		end
	end
	
	if I == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1) then
		if P_Power ~= nil and V_Electric ~= nil then
			I = P_Power/V_Electric
			
			Binesh.CreateHTMLFile("P = IV", "I = <span>P/V</span>")
			Binesh.AddToHTML("I = <span>"..Binesh.ProgressNumber(P_Power).."/"..Binesh.ProgressNumber(V_Electric).."</span> &#8658; I = "..Binesh.ProgressNumber(I).." A")
			
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(P_Power).." W", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Electric).." V", "V")
			Binesh.AddToHTML("I = ?", "V")
		end
	end
	
	if V_Electric == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then
		if I ~= nil and P_Power ~= nil then
			V_Electric = P_Power/I
			
			Binesh.CreateHTMLFile("P = IV", "V = <span>P/I</span>")
			Binesh.AddToHTML("V = <span>"..Binesh.ProgressNumber(P_Power).."/"..Binesh.ProgressNumber(I).."</span> &#8658; V = "..Binesh.ProgressNumber(V_Electric).." V")
			
			Binesh.AddToHTML("P = "..Binesh.ProgressNumber(P_Power).." W", "V")
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("V = ?", "V")
		end
	end
end