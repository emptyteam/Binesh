function Binesh.F94_1()
	if W_Out == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "˜ÇÑ ÎÇÑÌí") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1) then
		if WE ~= nil then
			Binesh.CreateHTMLFile("W = -W<sub>E</sub>")
			W_Out = -WE
			
			Binesh.AddToHTML("W = -"..Binesh.Convert_e(WE).." &#8658; W = "..Binesh.Convert_e(W_Out).."J")
			
			Binesh.AddToHTML("W<sub>E</sub>: "..Binesh.Convert_e(WE).." J", "V")
			Binesh.AddToHTML("W: ?", "V")
		end
	end
	
	if WE == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "˜ÇÑ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "WE") ~= -1) then
		if W_Out ~= nil then
			Binesh.CreateHTMLFile("W = -W<sub>E</sub>", "W<sub>E</sub> = -W")
			WE = -W_Out
			
			Binesh.AddToHTML("WE = -"..Binesh.Convert_e(W_Out).." &#8658; WE = "..Binesh.Convert_e(WE).."J")
			
			Binesh.AddToHTML("W: "..Binesh.Convert_e(W_Out).." J", "V")
			Binesh.AddToHTML("W<sub>E</sub>: ?", "V")
		end
	end
end