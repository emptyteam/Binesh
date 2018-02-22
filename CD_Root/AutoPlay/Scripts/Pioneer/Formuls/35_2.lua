function Binesh.F35_2()
	if V_Speed == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V2") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1)) then 
		if a ~= nil and t ~= nil and (_V1_Speed ~= nil or _V1_Speed ~= nil) then
			Binesh.CreateHTMLFile("V = at+V<sub>1</sub>")
			if _V1_Speed ~= nil then
				V_Speed = (a*t)+_V1_Speed
				Binesh.AddToHTML("V = "..Binesh.ProgressNumber(a).."*"..Binesh.ProgressNumber(t).."+"..Binesh.ProgressNumber(_V1_Speed).." &#8658; V = "..Binesh.ProgressNumber(V_Speed).." m/s")
				
				Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s", "V")
			elseif _V1_Speed ~= nil then
				V_Speed = (a*t)+_V1_Speed
				Binesh.AddToHTML("V = "..Binesh.ProgressNumber(a).."*"..Binesh.ProgressNumber(t).."+"..Binesh.ProgressNumber(_V1_Speed).." &#8658; V = "..Binesh.ProgressNumber(V_Speed).." m/s")
				
				Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s", "V")
			end
			
			Binesh.AddToHTML("a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>" , "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("V<sub>2</sub> = ?", "V")
		end
	end
	
	if _V1_Speed == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V0") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1)) then
		if (V_Speed ~= nil or _V2_Speed ~= nil) and a ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("V = at+V<sub>1</sub>", "V<sub>1</sub> = V-at")
			if V_Speed ~= nil then
				_V1_Speed = V_Speed-(a*t)
				Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(V_Speed).."-"..Binesh.ProgressNumber(a).."*"..Binesh.ProgressNumber(t).." &#8658; V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s")
				
				Binesh.AddToHTML("V<sub>2</sub> = "..Binesh.ProgressNumber(V_Speed).." m/s", "V")
			elseif _V2_Speed ~= nil then
				_V1_Speed = _V2_Speed-(a*t)
				Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V2_Speed).."-"..Binesh.ProgressNumber(a).."*"..Binesh.ProgressNumber(t).." &#8658; V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s")
				
				Binesh.AddToHTML("V<sub>2</sub> = "..Binesh.ProgressNumber(_V2_Speed).." m/s", "V")
			end
			
			Binesh.AddToHTML("a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>" , "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("V<sub>1</sub> = ?", "V")
		end
	end
end