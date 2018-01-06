function Binesh.F56()
	if R_Output == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "»«“œÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1 then
		if WP ~= nil and W_Use ~= nil then
			Binesh.CreateHTMLFile("R = <span>W`/W</span>*100")
			R_Output = (WP/W_Use)*100
			
			Binesh.AddToHTML("R = <span>"..WP.."/"..W_Use.."</span>*100 &#8658; R = "..R_Output.."%")
			
			Binesh.AddToHTML("W`: "..WP.." J", "V")
			Binesh.AddToHTML("W<sub>Use</sub>: "..W_Use.." J", "V")
			Binesh.AddToHTML("R: ?", "V")
		end
	end
	
	if WP == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ  Ê·ÌœÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W`") ~= -1 then
		if R_Output ~= nil and W_Use ~= nil then
			Binesh.CreateHTMLFile("R = <span>W`/W</span>*100", "W` = <span>RW/100</span>")
			WP = R_Output*W_Use/100
			
			Binesh.AddToHTML("W` = <span>"..R_Output.."*"..W_Use.."/100</span> &#8658; W` = "..WP.." J")
			
			Binesh.AddToHTML("R: "..R_Output.." %", "V")
			Binesh.AddToHTML("W<sub>Use</sub>: "..W_Use.." J", "V")
			Binesh.AddToHTML("W`: ?", "V")
		end
	end
	
	if W_Use == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ „’—›Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1 then
		if R_Output ~= nil and WP ~= nil then
			Binesh.CreateHTMLFile("R = <span>W`/W</span>*100", "W = 100*<span>W`/R</span>")
			W_Use = 100*WP/R_Output
			
			Binesh.AddToHTML("W = 100*<span>"..WP.."/"..R_Output.."</span> &#8658; W = "..W_Use.." J")
			
			Binesh.AddToHTML("R: "..R_Output.." %", "V")
			Binesh.AddToHTML("W`: "..WP.." J", "V")
			Binesh.AddToHTML("W<sub>Use</sub>: ?", "V")
		end
	end
end