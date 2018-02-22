function Binesh.F41_1()
	if t0_Min ~= nil and t0 == nil then
		t0 = t0_Min*60
		Binesh.AddToHTML("t<sub>0</sub> = 60t<sub>Min</sub>", "t<sub>0</sub> = 60*"..t0_Min.." &#8658; t<sub>0</sub> = "..t0.." s")
	end
	
	if t0_Hour ~= nil and t0 == nil then
		t0 = t0_Hour*3600
		Binesh.AddToHTML("t<sub>0</sub> = 3600t<sub>Hour</sub>", "t<sub>0</sub> = 3600*"..t0_Hour.." &#8658; t<sub>0</sub> = "..t0.." s")
	end
	
	if t0_Day ~= nil and t0 == nil then
		t0 = t0_Day*86400
		Binesh.AddToHTML("t<sub>0</sub> = 86400<sub>Day</sub>", "t<sub>0</sub> = 86400*"..t0_Day.." &#8658; t<sub>0</sub> = "..t0.." s")
	end
	
	if _Deltax == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— ›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltax") ~= -1)) then
		if a ~= nil and (_V1_Speed ~= nil or V_Speed ~= nil) then
			Binesh.CreateHTMLFile("Deltax = <span>V<sub>1</sub><sup>2</sup>/2a</span>")
			if _V1_Speed ~= nil then
				_Deltax = (_V1_Speed^2)/(2*a)
				Binesh.AddToHTML("Deltax = <span>"..Binesh.ProgressNumber(_V1_Speed).."<sup>2</sup>/2*"..Binesh.ProgressNumber(a).."</span> &#8658; Deltax = "..Binesh.ProgressNumber(_Deltax).." m")
				
				Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s", "V")
			elseif V_Speed ~= nil then
				_Deltax = (V_Speed^2)/(2*a)
				Binesh.AddToHTML("Deltax = <span>"..Binesh.ProgressNumber(V_Speed).."<sup>2</sup>/2*"..Binesh.ProgressNumber(a).."</span> &#8658; Deltax = "..Binesh.ProgressNumber(_Deltax).." m")
				
				Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(V_Speed).." m/s", "V")
			end
			
			Binesh.AddToHTML("a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("Deltax = ?", "V")
		end
	end
	
	if _V1_Speed == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  «Ê·Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  ") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V0") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1)) then 
		if a ~= nil and _Deltax ~= nil then
			Binesh.CreateHTMLFile("Deltax = <span>V<sub>1</sub><sup>2</sup>/2a</span>", " V<sub>1</sub> = sqrt(2aDeltax)")
			_V1_Speed = Math.Sqrt(2*a*_Deltax);
			
			Binesh.AddToHTML("V<sub>1</sub> = sqrt(2*"..Binesh.ProgressNumber(a).."*"..Binesh.ProgressNumber(_Deltax)..")</span> &#8658; V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s")
			
			Binesh.AddToHTML("Deltax = "..Binesh.ProgressNumber(_Deltax).." m", "V")
			Binesh.AddToHTML("a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("V<sub>1</sub> = ?", "V")
		end
	end
	
	if a == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "‘ «»") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "a") ~= -1) then
		if (_V1_Speed ~= nil or V_Speed ~= nil) and _Deltax ~= nil then
			Binesh.CreateHTMLFile("Deltax = <span>V<sub>1</sub><sup>2</sup>/2a</span>", "a = <span>V<sub>1</sub><sup>2</sup>/2Deltax</span>")
			if _V1_Speed ~= nil then
				a = _V1_Speed^2/(2*_Deltax)
				Binesh.AddToHTML("a = <span>"..Binesh.ProgressNumber(_V1_Speed).."<sup>2</sup>/2*"..Binesh.ProgressNumber(_Deltax).."</span> &#8658; a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>")
				
				Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s", "V")
			elseif V_Speed ~= nil then
				a = V_Speed^2/(2*_Deltax)
				Binesh.AddToHTML("a = <span>"..Binesh.ProgressNumber(V_Speed).."<sup>2</sup>/2*"..Binesh.ProgressNumber(_Deltax).."</span> &#8658; a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>")
				
				Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(V_Speed).." m/s", "V")
			end
			
			Binesh.AddToHTML("Deltax = "..Binesh.ProgressNumber(_Deltax).." m", "V")
			Binesh.AddToHTML("a = ?", "V")
		end
	end
end