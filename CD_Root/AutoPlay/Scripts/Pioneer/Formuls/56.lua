function Binesh.F56()
	if R_Output == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "»«“œÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1) then
		if WP ~= nil and W_Use ~= nil then
			Binesh.CreateHTMLFile("R = <span>W`/W</span>*100")
			R_Output = (WP/W_Use)*100
			
			Binesh.AddToHTML("R = <span>"..Binesh.ProgressNumber(WP).."/"..Binesh.ProgressNumber(W_Use).."</span>*100 &#8658; R = "..Binesh.ProgressNumber(R_Output).." %")
			if R_Output >= 100 then
				Binesh.AddCommentToHTML("«Ì‰ « ›«ﬁ ‰„Ì  Ê«‰œ —Œ œÂœ ç—« òÂ »«“œÂ ÂÌçê«Â »Ì‘ — «“ 100% Ì« Õ Ì »—«»— 100% Â„ ‰„Ì ‘Êœ.")
			end
			
			Binesh.AddToHTML("W` = "..Binesh.ProgressNumber(WP).." J", "V")
			Binesh.AddToHTML("W<sub>Use</sub> = "..Binesh.ProgressNumber(W_Use).." J", "V")
			Binesh.AddToHTML("R = ?", "V")
		end
	end
	
	if WP == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ  Ê·ÌœÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W`") ~= -1) then
		if R_Output ~= nil and W_Use ~= nil then
			Binesh.CreateHTMLFile("R = <span>W`/W</span>*100", "W` = <span>RW/100</span>")
			WP = R_Output*W_Use/100
			
			Binesh.AddToHTML("W` = <span>"..Binesh.ProgressNumber(R_Output).."*"..Binesh.ProgressNumber(W_Use).."/100</span> &#8658; W` = "..Binesh.ProgressNumber(WP).." J")
			if R_Output >= 100 then
				Binesh.AddCommentToHTML("«Ì‰ « ›«ﬁ ‰„Ì  Ê«‰œ —Œ œÂœ ç—« òÂ »«“œÂ ÂÌçê«Â »Ì‘ — «“ 100% Ì« Õ Ì »—«»— 100% Â„ ‰„Ì ‘Êœ.")
			end
			
			Binesh.AddToHTML("R = "..Binesh.ProgressNumber(R_Output).." %", "V")
			Binesh.AddToHTML("W<sub>Use</sub> = "..Binesh.ProgressNumber(W_Use).." J", "V")
			Binesh.AddToHTML("W` = ?", "V")
		end
	end
	
	if W_Use == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ „’—›Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1) then
		if R_Output ~= nil and WP ~= nil then
			Binesh.CreateHTMLFile("R = <span>W`/W</span>*100", "W = 100*<span>W`/R</span>")
			W_Use = 100*WP/R_Output
			
			Binesh.AddToHTML("W = 100*<span>"..Binesh.ProgressNumber(WP).."/"..Binesh.ProgressNumber(R_Output).."</span> &#8658; W = "..Binesh.ProgressNumber(W_Use).." J")
			if R_Output >= 100 then
				Binesh.AddCommentToHTML("«Ì‰ « ›«ﬁ ‰„Ì  Ê«‰œ —Œ œÂœ ç—« òÂ »«“œÂ ÂÌçê«Â »Ì‘ — «“ 100% Ì« Õ Ì »—«»— 100% Â„ ‰„Ì ‘Êœ.")
			end
			
			Binesh.AddToHTML("R = "..Binesh.ProgressNumber(R_Output).." %", "V")
			Binesh.AddToHTML("W` = "..Binesh.ProgressNumber(WP).." J", "V")
			Binesh.AddToHTML("W<sub>Use</sub> = ?", "V")
		end
	end
end