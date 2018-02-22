function Binesh.F7()
	if R == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1) then
		if V_Electric ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("R = <span>V/I</span>")
			R = (V_Electric)/(I)
			
			Binesh.AddToHTML("R = <span>"..Binesh.ProgressNumber(V_Electric).."/"..Binesh.ProgressNumber(I).."</span> &#8658; R = "..Binesh.ProgressNumber(R).." Ohm")
			
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Electric).." V", "V")
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("R = ?", "V")
		end
	end
	
	if V_Electric == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then
		if R ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("R = <span>V/I</span>", "V = IR")
			V_Electric = (R)*(I)
			
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(R).."*"..Binesh.ProgressNumber(I).." &#8658; V = "..Binesh.ProgressNumber(V_Electric).." V")
			
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("R = "..Binesh.ProgressNumber(R).." Ohm", "V")
			Binesh.AddToHTML("V = ?", "V")
		end
	end
	
	if I == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1) then
		if R ~= nil and V_Electric ~= nil then
			Binesh.CreateHTMLFile("R = <span>V/I</span>", "I = <span>V/R</span>")
			I = (V_Electric)/(R)
			
			Binesh.AddToHTML("I = <span>"..Binesh.ProgressNumber(V_Electric).."/"..Binesh.ProgressNumber(R).."</span> &#8658; I = "..Binesh.ProgressNumber(I).." A")
			
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Electric).." V", "V")
			Binesh.AddToHTML("R = "..Binesh.ProgressNumber(R).." Ohm", "V")
			Binesh.AddToHTML("I = ?", "V")
		end
	end
end