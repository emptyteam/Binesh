function Binesh.F118_1()
	if R2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„  œÊ„Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ „ﬁ«Ê„ ") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "R2") ~= -1) then
		if R1 ~= nil and V1_Electric ~= nil and V2_Electric ~= nil then
			Binesh.CreateHTMLFile("<span>V<sub>1</sub>/V<sub>2</sub></span> = <span>R<sub>1</sub>/R<sub>2</sub></span>", "R<sub>2</sub> = <span>R<sub>1</sub>V<sub>2</sub>/V<sub>1</sub></span>")
			R2 = R1*V2_Electric/V1_Electric
			
			Binesh.AddToHTML("R<sub>2</sub> = "..Binesh.Convert_e(R1).."*"..Binesh.Convert_e(V2_Electric).."/"..Binesh.Convert_e(V1_Electric).." &#8658; R<sub>2</sub> = "..Binesh.Convert_e(R2).." Ohm")
			
			Binesh.AddToHTML("R<sub>1</sub>: "..Binesh.Convert_e(R1).." Ohm", "V")
			Binesh.AddToHTML("V<sub>2</sub>: "..Binesh.Convert_e(V2_Electric).." V", "V")
			Binesh.AddToHTML("V<sub>1</sub>: "..Binesh.Convert_e(V1_Electric).." v", "V")
			Binesh.AddToHTML("R<sub>2</sub>: ?", "V")
		end
	end
	
	if R1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ „ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„  «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "R1") ~= -1)) then
		if R2 ~= nil and V1_Electric ~= nil and V2_Electric ~= nil then
			Binesh.CreateHTMLFile("<span>V<sub>1</sub>/V<sub>2</sub></span> = <span>R<sub>1</sub>/R<sub>2</sub></span>", "R<sub>1</sub> = <span>V<sub>1</sub>R<sub>2</sub>/V<sub>2</sub></span>")
			R1 = V1_Electric*R2/V2_Electric
			
			Binesh.AddToHTML("R<sub>1</sub> = <span>"..Binesh.Convert_e(V1_Electric).."*"..Binesh.Convert_e(R2).."/"..Binesh.Convert_e(V2_Electric).."</span> &#8658; R<sub>1</sub> = "..Binesh.Convert_e(R1).." Ohm")
			
			Binesh.AddToHTML("R<sub>2</sub>: "..Binesh.Convert_e(R2).." Ohm", "V")
			Binesh.AddToHTML("V<sub>2</sub>: "..Binesh.Convert_e(V2_Electric).." V", "V")
			Binesh.AddToHTML("V<sub>1</sub>: "..Binesh.Convert_e(V1_Electric).." v", "V")
			Binesh.AddToHTML("R<sub>1</sub>: ?", "V")
		end
	end
	
	if V1_Electric == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1)) then
		if R2 ~= nil and R1 ~= nil and V2_Electric ~= nil then
			Binesh.CreateHTMLFile("<span>V<sub>1</sub>/V<sub>2</sub></span> = <span>R<sub>1</sub>/R<sub>2</sub></span>", "V<sub>1</sub> = <span>R<sub>1</sub>V<sub>2</sub>/R<sub>2</sub></span>")
			V1_Electric = R1*V2_Electric/R2
			
			Binesh.AddToHTML("V<sub>1</sub> = <span>"..Binesh.Convert_e(R1).."*"..Binesh.Convert_e(V2_Electric).."/"..Binesh.Convert_e(R2).."</span> &#8658; V<sub>1</sub> = "..Binesh.Convert_e(V1_Electric).." V")
			
			Binesh.AddToHTML("R<sub>2</sub>: "..Binesh.Convert_e(R2).." Ohm", "V")
			Binesh.AddToHTML("V<sub>2</sub>: "..Binesh.Convert_e(V2_Electric).." V", "V")
			Binesh.AddToHTML("R<sub>1</sub>: "..Binesh.Convert_e(R1).." v", "V")
			Binesh.AddToHTML("V<sub>1</sub>: ?", "V")
		end
	end
	
	if V2_Electric == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é œÊ„Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ Ê· «é") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "V2") ~= -1) then
		if R2 ~= nil and R1 ~= nil and V1_Electric ~= nil then
			Binesh.CreateHTMLFile("<span>V<sub>1</sub>/V<sub>2</sub></span> = <span>R<sub>1</sub>/R<sub>2</sub></span>", "V<sub>2</sub> = V<sub>1</sub>R<sub>2</sub>/R<sub>1</sub>")
			V2_Electric = V1_Electric*R2/R1
			
			Binesh.AddToHTML("V<sub>2</sub> = <span>"..Binesh.Convert_e(V1_Electric).."*"..Binesh.Convert_e(R2).."/"..Binesh.Convert_e(R1).."</span> &#8658; V<sub>2</sub> = "..Binesh.Convert_e(V2_Electric).." V")
			
			Binesh.AddToHTML("R<sub>2</sub>: "..Binesh.Convert_e(R2).." Ohm", "V")
			Binesh.AddToHTML("V<sub>2</sub>: "..Binesh.Convert_e(V1_Electric).." V", "V")
			Binesh.AddToHTML("R<sub>1</sub>: "..Binesh.Convert_e(R1).." v", "V")
			Binesh.AddToHTML("V<sub>2</sub>: ?", "V")
		end
	end
end