function Binesh.F35_2()
	if V2_Speed == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  œÊ„Ì‰") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then 
		if a ~= nil and t ~= nil and V0_Speed ~= nil then
			Binesh.CreateHTMLFile("V = at+V<sub>0</sub>")
			V2_Speed = (a*t)+V0_Speed
			
			Binesh.AddToHTML("V = "..Binesh.Convert_e(a).."*"..Binesh.Convert_e(t).."+"..Binesh.Convert_e(V0_Speed).." &#8658; V = "..Binesh.Convert_e(V2_Speed).." m/s")
			
			Binesh.AddToHTML("a: "..Binesh.Convert_e(a).." m/s<sup>2</sup>" , "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("V<sub>0</sub>: "..Binesh.Convert_e(V0_Speed).." m/s", "V")
			Binesh.AddToHTML("V<sub>2</sub>: ?", "V")
		end
	end
	
	if V0_Speed == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  «Ê·Ì‰") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "V0") ~= -1) then
		if V2_Speed ~= nil and a ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("V = at+V<sub>0</sub>", "V<sub>0</sub> = V-at")
			V0_Speed = V2_Speed-(a*t)
			
			Binesh.AddToHTML("V<sub>0</sub> = "..Binesh.Convert_e(V2_Speed).."-"..Binesh.Convert_e(a).."*"..Binesh.Convert_e(t).." &#8658; V<sub>0</sub> = "..Binesh.Convert_e(V0_Speed).." m/s")
			
			Binesh.AddToHTML("V<sub>2</sub>: "..Binesh.Convert_e(V2_Speed).." m/s", "V")
			Binesh.AddToHTML("a: "..Binesh.Convert_e(a).." m/s<sup>2</sup>" , "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("V<sub>0</sub>: ?", "V")
		end
	end
end