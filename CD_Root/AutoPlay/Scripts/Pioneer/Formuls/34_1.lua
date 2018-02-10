function Binesh.F34_1()
	--------------------------{DELTA}--------------------------
	if _DeltaV_Speed == nil then
		if _V1_Speed ~= nil and _V2_Speed ~= nil then
			Binesh.CreateHTMLFile("DeltaV = V<sub>2</sub>-V<sub>1</sub>")
			_DeltaV_Speed = _V2_Speed - _V1_Speed
			Binesh.AddToHTML("DeltaV = "..Binesh.Convert_e(_V2_Speed).."-"..Binesh.Convert_e(_V1_Speed).." &#8658; DeltaV = "..Binesh.Convert_e(_DeltaV_Speed).." m/s")
		end
	end
	
	if _V1_Speed == nil then
		if _DeltaV_Speed ~= nil and _V2_Speed ~= nil then
			Binesh.CreateHTMLFile("DeltaV = V<sub>2</sub>-V<sub>1</sub>", "V<sub>1</sub> = V<sub>2</sub>-DeltaV")
			_V1_Speed = _V2_Speed-_DeltaV_Speed
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.Convert_e(_V2_Speed).."-"..Binesh.Convert_e(_DeltaV_Speed).." &#8658; V<sub>1</sub> = "..Binesh.Convert_e(_V1_Speed).." m/s")
		end
	end
	
	if _V2_Speed == nil then
		if _DeltaV_Speed ~= nil and _V1_Speed ~= nil then
			Binesh.CreateHTMLFile("DeltaV = V<sub>2</sub>-V<sub>1</sub>", "V<sub>2</sub> = DeltaV+V<sub>1</sub>")
			_V2_Speed = _V1_Speed+_DeltaV_Speed
			Binesh.AddToHTML("V<sub>2</sub> = "..Binesh.Convert_e(_DeltaV_Speed).."+"..Binesh.Convert_e(_V1_Speed).." &#8658; V<sub>2</sub> = "..Binesh.Convert_e(_V2_Speed).." m/s")
		end
	end
	--------------------------END {DELTA}--------------------------
	if a == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "‘ «»") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "a") ~= -1) then 
		if _DeltaV_Speed ~= nil and _Deltat ~= nil then
			Binesh.CreateHTMLFile("a = <span>DeltaV/Deltat</span>")
			a = _DeltaV_Speed/_Deltat
			
			Binesh.AddToHTML("a = <span>"..Binesh.Convert_e(_DeltaV_Speed).."/"..Binesh.Convert_e(_Deltat).."</span> &#8658; a = "..Binesh.Convert_e(a).." m/s<sup>2</sup>")
			
			Binesh.AddToHTML("DeltaV: "..Binesh.Convert_e(_DeltaV_Speed).." m/s", "V")
			Binesh.AddToHTML("Deltat: "..Binesh.Convert_e(_Deltat).." s", "V")
			Binesh.AddToHTML("a: ?" , "V")
		end
	end
	
	if _DeltaV_Speed == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄   €ÌÌ—") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaV") ~= -1) then 
		if a ~= nil and _Deltat ~= nil then
			Binesh.CreateHTMLFile("a = <span>DeltaV/Deltat</span>", "DeltaV = aDeltat")
			_DeltaV_Speed = a*_Deltat
			
			Binesh.AddToHTML("DeltaV = "..Binesh.Convert_e(a).."*"..Binesh.Convert_e(_Deltat).." &#8658; DeltaV = "..Binesh.Convert_e(_DeltaV_Speed).." m/s")
			
			Binesh.AddToHTML("a: "..Binesh.Convert_e(a).." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("Deltat: "..Binesh.Convert_e(_Deltat).." s", "V")
			Binesh.AddToHTML("DeltaV: ?", "V")
		end
	end
	
	if _Deltat == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— “„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰  €ÌÌ—") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltat") ~= -1) then
		if _DeltaV_Speed ~= nil and a ~= nil then
			Binesh.CreateHTMLFile("a = <span>DeltaV/Deltat</span>", "Deltat = <span>DeltaV/a</span>")
			_Deltat = _DeltaV_Speed/a
			
			Binesh.AddToHTML("Deltat = <span>"..Binesh.Convert_e(_DeltaV_Speed).."/"..Binesh.Convert_e(a).."</span> &#8658; Deltat = "..Binesh.Convert_e(_Deltat).." s")
			
			Binesh.AddToHTML("DeltaV: "..Binesh.Convert_e(_DeltaV_Speed).." m/s", "V")
			Binesh.AddToHTML("a: "..Binesh.Convert_e(a).." m/s<sup>2</sup>" , "V")
			Binesh.AddToHTML("Deltat: ?", "V")
		end
	end
end