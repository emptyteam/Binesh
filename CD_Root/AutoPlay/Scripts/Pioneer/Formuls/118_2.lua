function Binesh.F118_2()
	if RT == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„  „⁄«œ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "RT") ~= -1) then
		if R1 ~= nil and V1_Electric ~= nil and VT_Electric ~= nil then
			Binesh.CreateHTMLFile("<span>V<sub>1</sub>/V<sub>T</sub></span> = <span>R<sub>1</sub>/R<sub>T</sub></span>", "R<sub>T</sub> = <span>R<sub>1</sub>V<sub>T</sub>/V<sub>1</sub></span>")
			RT = R1*VT_Electric/V1_Electric
			
			Binesh.AddToHTML("R<sub>T</sub> = "..Binesh.ProgressNumber(R1).."*"..Binesh.ProgressNumber(VT_Electric).."/"..Binesh.ProgressNumber(V1_Electric).." &#8658; R<sub>T</sub> = "..Binesh.ProgressNumber(RT).." Ohm")
			
			Binesh.AddToHTML("R<sub>1</sub> = "..Binesh.ProgressNumber(R1).." Ohm", "V")
			Binesh.AddToHTML("V<sub>T</sub> = "..Binesh.ProgressNumber(VT_Electric).." V", "V")
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(V1_Electric).." v", "V")
			Binesh.AddToHTML("R<sub>T</sub> = ?", "V")
		end
	end
	
	if R1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ „ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„  «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "R1") ~= -1)) then
		if RT ~= nil and V1_Electric ~= nil and VT_Electric ~= nil then
			Binesh.CreateHTMLFile("<span>V<sub>1</sub>/V<sub>T</sub></span> = <span>R<sub>1</sub>/R<sub>T</sub></span>", "R<sub>1</sub> = <span>V<sub>1</sub>R<sub>T</sub>/V<sub>T</sub></span>")
			R1 = V1_Electric*RT/VT_Electric
			
			Binesh.AddToHTML("R<sub>1</sub> = <span>"..Binesh.ProgressNumber(V1_Electric).."*"..Binesh.ProgressNumber(RT).."/"..Binesh.ProgressNumber(VT_Electric).."</span> &#8658; R<sub>1</sub> = "..Binesh.ProgressNumber(R1).." Ohm")
			
			Binesh.AddToHTML("R<sub>T</sub> = "..Binesh.ProgressNumber(RT).." Ohm", "V")
			Binesh.AddToHTML("V<sub>T</sub> = "..Binesh.ProgressNumber(VT_Electric).." V", "V")
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(V1_Electric).." v", "V")
			Binesh.AddToHTML("R<sub>1</sub> = ?", "V")
		end
	end
	
	if V1_Electric == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1)) then
		if RT ~= nil and R1 ~= nil and VT_Electric ~= nil then
			Binesh.CreateHTMLFile("<span>V<sub>1</sub>/V<sub>T</sub></span> = <span>R<sub>1</sub>/R<sub>T</sub></span>", "V<sub>1</sub> = <span>R<sub>1</sub>V<sub>T</sub>/R<sub>T</sub></span>")
			V1_Electric = R1*VT_Electric/RT
			
			Binesh.AddToHTML("V<sub>1</sub> = <span>"..Binesh.ProgressNumber(R1).."*"..Binesh.ProgressNumber(VT_Electric).."/"..Binesh.ProgressNumber(RT).."</span> &#8658; V<sub>1</sub> = "..Binesh.ProgressNumber(V1_Electric).." V")
			
			Binesh.AddToHTML("R<sub>T</sub> = "..Binesh.ProgressNumber(RT).." Ohm", "V")
			Binesh.AddToHTML("V<sub>T</sub> = "..Binesh.ProgressNumber(VT_Electric).." V", "V")
			Binesh.AddToHTML("R<sub>1</sub> = "..Binesh.ProgressNumber(R1).." v", "V")
			Binesh.AddToHTML("V<sub>1</sub> = ?", "V")
		end
	end
	
	if VT_Electric == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é „⁄«œ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "VT") ~= -1) then
		if RT ~= nil and R1 ~= nil and V1_Electric ~= nil then
			Binesh.CreateHTMLFile("<span>V<sub>1</sub>/V<sub>T</sub></span> = <span>R<sub>1</sub>/R<sub>T</sub></span>", "V<sub>T</sub> = V<sub>1</sub>R<sub>T</sub>/R<sub>1</sub>")
			VT_Electric = V1_Electric*RT/R1
			
			Binesh.AddToHTML("V<sub>T</sub> = <span>"..Binesh.ProgressNumber(V1_Electric).."*"..Binesh.ProgressNumber(RT).."/"..Binesh.ProgressNumber(R1).."</span> &#8658; V<sub>T</sub> = "..Binesh.ProgressNumber(VT_Electric).." V")
			
			Binesh.AddToHTML("R<sub>T</sub> = "..Binesh.ProgressNumber(RT).." Ohm", "V")
			Binesh.AddToHTML("V<sub>T</sub> = "..Binesh.ProgressNumber(V1_Electric).." V", "V")
			Binesh.AddToHTML("R<sub>1</sub> = "..Binesh.ProgressNumber(R1).." v", "V")
			Binesh.AddToHTML("V<sub>T</sub> = ?", "V")
		end
	end
end