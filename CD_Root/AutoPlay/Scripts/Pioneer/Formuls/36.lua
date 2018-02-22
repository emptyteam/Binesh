function Binesh.F36()
	if t0 == nil and t == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or (ListBox.FindItem("Words", -1, LB_BYTEXT, "t0") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1)) then
		if (_V1_Speed ~= nil or V_Speed ~= nil) and a ~= nil and (_Deltax == nil or _x1 == nil or _x2 == nil) then
			Binesh.CreateHTMLFile("t<sub>0</sub> = <span>V<sub>1</sub>/a</span>")
			if _V1_Speed ~= nil then
				t0 = (_V1_Speed)/(a)
				Binesh.AddToHTML("t<sub>0</sub> = <span>"..Binesh.ProgressNumber(_V1_Speed).."/"..Binesh.ProgressNumber(a).."</span> &#8658; t<sub>0</sub> = "..Binesh.ProgressNumber(t0).." s")
				
				Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s", "V")
			elseif V_Speed ~= nil then
				t0 = (V_Speed)/(a)
				Binesh.AddToHTML("t<sub>0</sub> = <span>"..Binesh.ProgressNumber(V_Speed).."/"..Binesh.ProgressNumber(a).."</span> &#8658; t<sub>0</sub> = "..Binesh.ProgressNumber(t0).." s")
				
				Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(V_Speed).." m/s", "V")
			end
			
			Binesh.AddToHTML("a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>" , "V")
			Binesh.AddToHTML("t<sub>0</sub> = ?", "V")
		end
	end
	
	if _V1_Speed == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  «Ê·Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  ") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V0") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1)) then 
		if t0 ~= nil and a ~= nil and (_Deltax == nil or _x1 == nil or _x2 == nil) then
			Binesh.CreateHTMLFile("t<sub>0</sub> = <span>V<sub>1</sub>/a</span>", "V<sub>1</sub> = t<sub>0</sub>a")
			_V1_Speed = (t0)*(a)
			
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(t0).."*"..Binesh.ProgressNumber(a).." &#8658; V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s")
			
			Binesh.AddToHTML("a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>" , "V")
			Binesh.AddToHTML("t<sub>0</sub> = "..Binesh.ProgressNumber(t0).." s", "V")
			Binesh.AddToHTML("V<sub>1</sub> = ?", "V")
		end
	end
	
	if a == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " Êﬁ›") ~= -1 and ListBox.FindItem("Words", -1, LB_BYTEXT, "‘ «»") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "a") ~= -1)) then
		if t0 ~= nil and (_V1_Speed ~= nil or V_Speed ~= nil) and (_Deltax == nil or _x1 == nil or _x2 == nil) then
			Binesh.CreateHTMLFile("t<sub>0</sub> = <span>V<sub>1</sub>/a</span>", "a = <span>V<sub>1</sub>/t<sub>0</sub></span>")
			if _V1_Speed ~= nil then
				a = (_V1_Speed)/(t0)
				Binesh.AddToHTML("a = <span>"..Binesh.ProgressNumber(_V1_Speed).."/"..Binesh.ProgressNumber(t0).."</span> &#8658; a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>")
				
				Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s", "V")
			elseif V_Speed ~= nil then
				a = (V_Speed)/(t0)
				Binesh.AddToHTML("a = <span>"..Binesh.ProgressNumber(V_Speed).."/"..Binesh.ProgressNumber(t0).."</span> &#8658; a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>")
				
				Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(V_Speed).." m/s", "V")
			end
			
			Binesh.AddToHTML("t<sub>0</sub> = "..Binesh.ProgressNumber(t0).." s", "V")
			Binesh.AddToHTML("a = ?" , "V")
		end
	end
end