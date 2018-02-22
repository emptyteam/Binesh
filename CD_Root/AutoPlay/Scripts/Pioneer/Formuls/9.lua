function Binesh.F9()
	if P_Power == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, " Ê«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1) then
		if W ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("P = <span>W/t</span>")
			P_Power = W/t
			
			Binesh.AddToHTML("P = <span>"..Binesh.ProgressNumber(W).."/"..Binesh.ProgressNumber(t).."</span> &#8658; P = "..Binesh.ProgressNumber(P_Power).." W")
			
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(W).." J", "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("P = ?", "V")
		end
	end
	
	if W == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ò«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1) then
		if P_Power ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("P = <span>W/t</span>", "W = Pt")
			W = P_Power*t
			
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(P_Power).."*"..Binesh.ProgressNumber(t).." &#8658; W = "..Binesh.ProgressNumber(W).." J")
			
			Binesh.AddToHTML("P = "..Binesh.ProgressNumber(P_Power).." W", "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("W = ?", "V")
		end
	end
	
	if t == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1) then
		if P_Power ~= nil and W ~= nil then
			Binesh.CreateHTMLFile("P = <span>W/t</span>", "t = <span>W/P</span>")
			t = W/P_Power
			
			Binesh.AddToHTML("t = <span>"..Binesh.ProgressNumber(W).."/"..Binesh.ProgressNumber(P_Power).."</span> &#8658; t = "..Binesh.ProgressNumber(t).." s")
			
			Binesh.AddToHTML("P = "..Binesh.ProgressNumber(P_Power).." W", "V")
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(W).." V", "J")
			Binesh.AddToHTML("t = ?", "V")
		end
	end
end