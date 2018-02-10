function Binesh.F87()
	if E_Electric == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "E") ~= -1) then
		if F ~= nil and q_0_87 ~= nil then
			E_Electric = F/q_0_87
			
			Binesh.CreateHTMLFile("E = <span>F/q<sub>0</sub></span>")
			Binesh.AddToHTML("E = <span>"..Binesh.Convert_e(F).."/"..Binesh.Convert_e(q_0_87).."</span> &#8658; E = "..Binesh.Convert_e(E_Electric).." N/C")
			
			Binesh.AddToHTML("F: "..Binesh.Convert_e(F).." N", "V")
			Binesh.AddToHTML("q<sub>0</sub>: "..Binesh.Convert_e(q_0_87).." C", "V")
			Binesh.AddToHTML("E: ?", "V")
		end
	end
	
	if F == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1) then
		if E_Electric ~= nil and q_0_87 ~= nil then
			F = E_Electric*q_0_87
			
			Binesh.CreateHTMLFile("E = <span>F/q<sub>0</sub></span>", "F = Eq<sub>0</sub>")
			Binesh.AddToHTML("F = "..Binesh.Convert_e(E_Electric).."*"..Binesh.Convert_e(q_0_87).." &#8658; F = "..Binesh.Convert_e(F).." N")
			
			Binesh.AddToHTML("q<sub>0</sub>: "..Binesh.Convert_e(q_0_87).." C", "V")
			Binesh.AddToHTML("E: "..Binesh.Convert_e(E_Electric).." N/C", "V")
			Binesh.AddToHTML("F: ?", "V")
		end
	end
	
	if q_0_87 == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â ¬“„Ê‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q0") ~= -1) then
		if  E_Electric ~= nil and F ~= nil then
			q_0_87 = F/E_Electric
			
			Binesh.CreateHTMLFile("E = <span>F/q<sub>0</sub></span>", "q<sub>0</sub> = <span>F/E</span>")
			Binesh.AddToHTML("q<sub>0</sub> = <span>"..Binesh.Convert_e(F).."/"..Binesh.Convert_e(E_Electric).."</span> &#8658; q<sub>0</sub> = "..Binesh.Convert_e(q_0_87).." C")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("F: "..Binesh.Convert_e(F).." N", "V")
			Binesh.AddToHTML("E: "..Binesh.Convert_e(E_Electric).." N/C", "V")
			Binesh.AddToHTML("q<sub>0</sub>: ?", "V")
		end
	end
end