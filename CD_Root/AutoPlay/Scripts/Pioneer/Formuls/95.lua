function Binesh.F95()
	if C_Condenser == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ÿ—›Ì ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "C") ~= -1) then
		if q ~= nil and V_Electric ~= nil then
			C_Condenser = q/V_Electric
			
			Binesh.CreateHTMLFile("C = <span>q/V</span>")
			Binesh.AddToHTML("C = <span>"..Binesh.ProgressNumber(q).."/"..Binesh.ProgressNumber(V_Electric).."</span> &#8658; C = "..Binesh.ProgressNumber(C_Condenser).." F")
			
			Binesh.AddToHTML("q = "..Binesh.ProgressNumber(q).." C", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Electric).." V", "V")
			Binesh.AddToHTML("C = ?", "V")
		end
	end
	
	if q == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1) then
		if C_Condenser ~= nil and V_Electric ~= nil then
			q = C_Condenser*V_Electric
			
			Binesh.CreateHTMLFile("C = <span>q/V</span>", "q = CV")
			Binesh.AddToHTML("q = "..Binesh.ProgressNumber(C_Condenser).."*"..Binesh.ProgressNumber(V_Electric).."&#8658; q = "..Binesh.ProgressNumber(q).." C")
			
			Binesh.AddToHTML("C = "..Binesh.ProgressNumber(C_Condenser).." F", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Electric).." V", "V")
			Binesh.AddToHTML("q = ?", "V")
		end
	end
	
	if V_Electric == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then
		if q ~= nil and C_Condenser ~= nil then
			V_Electric = q/C_Condenser
			
			Binesh.CreateHTMLFile("C = <span>q/V</span>", "V = <span>q/C</span>")
			Binesh.AddToHTML("V = <span>"..Binesh.ProgressNumber(q).."/"..Binesh.ProgressNumber(C_Condenser).."</span> &#8658; V = "..Binesh.ProgressNumber(V_Electric).." V")
			
			Binesh.AddToHTML("q = "..Binesh.ProgressNumber(q).." C", "V")
			Binesh.AddToHTML("C = "..Binesh.ProgressNumber(C_Condenser).." F", "V")
			Binesh.AddToHTML("V = ?", "V")
		end
	end
end