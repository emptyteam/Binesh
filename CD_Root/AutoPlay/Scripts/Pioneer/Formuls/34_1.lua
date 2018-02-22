function Binesh.F34_1()
	--------------------------{DELTA}--------------------------
	if _DeltaV_Speed == nil then
		if __V1_Speed ~= nil and __V2_Speed ~= nil then
			Binesh.CreateHTMLFile("DeltaV = V<sub>2</sub>-V<sub>1</sub>")
			_DeltaV_Speed = __V2_Speed - __V1_Speed
			Binesh.AddToHTML("DeltaV = "..Binesh.ProgressNumber(__V2_Speed).."-"..Binesh.ProgressNumber(__V1_Speed).." &#8658; DeltaV = "..Binesh.ProgressNumber(_DeltaV_Speed).." m/s")
		end
	end
	
	if __V1_Speed == nil then
		if _DeltaV_Speed ~= nil and __V2_Speed ~= nil then
			Binesh.CreateHTMLFile("DeltaV = V<sub>2</sub>-V<sub>1</sub>", "V<sub>1</sub> = V<sub>2</sub>-DeltaV")
			__V1_Speed = __V2_Speed-_DeltaV_Speed
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(__V2_Speed).."-"..Binesh.ProgressNumber(_DeltaV_Speed).." &#8658; V<sub>1</sub> = "..Binesh.ProgressNumber(__V1_Speed).." m/s")
		end
	end
	
	if __V2_Speed == nil then
		if _DeltaV_Speed ~= nil and __V1_Speed ~= nil then
			Binesh.CreateHTMLFile("DeltaV = V<sub>2</sub>-V<sub>1</sub>", "V<sub>2</sub> = DeltaV+V<sub>1</sub>")
			__V2_Speed = __V1_Speed+_DeltaV_Speed
			Binesh.AddToHTML("V<sub>2</sub> = "..Binesh.ProgressNumber(_DeltaV_Speed).."+"..Binesh.ProgressNumber(__V1_Speed).." &#8658; V<sub>2</sub> = "..Binesh.ProgressNumber(__V2_Speed).." m/s")
		end
	end
	--------------------------END {DELTA}--------------------------
	if a == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "‘ «»") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "a") ~= -1) then 
		if _DeltaV_Speed ~= nil and _Deltat ~= nil then
			Binesh.CreateHTMLFile("a = <span>DeltaV/Deltat</span>")
			a = _DeltaV_Speed/_Deltat
			
			Binesh.AddToHTML("a = <span>"..Binesh.ProgressNumber(_DeltaV_Speed).."/"..Binesh.ProgressNumber(_Deltat).."</span> &#8658; a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>")
			
			Binesh.AddToHTML("DeltaV = "..Binesh.ProgressNumber(_DeltaV_Speed).." m/s", "V")
			Binesh.AddToHTML("Deltat = "..Binesh.ProgressNumber(_Deltat).." s", "V")
			Binesh.AddToHTML("a = ?" , "V")
		end
	end
	
	if _DeltaV_Speed == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄   €ÌÌ—") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaV") ~= -1) then 
		if a ~= nil and _Deltat ~= nil then
			Binesh.CreateHTMLFile("a = <span>DeltaV/Deltat</span>", "DeltaV = aDeltat")
			_DeltaV_Speed = a*_Deltat
			
			Binesh.AddToHTML("DeltaV = "..Binesh.ProgressNumber(a).."*"..Binesh.ProgressNumber(_Deltat).." &#8658; DeltaV = "..Binesh.ProgressNumber(_DeltaV_Speed).." m/s")
			
			Binesh.AddToHTML("a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("Deltat = "..Binesh.ProgressNumber(_Deltat).." s", "V")
			Binesh.AddToHTML("DeltaV = ?", "V")
		end
	end
	
	if _Deltat == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— “„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰  €ÌÌ—") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltat") ~= -1) then
		if _DeltaV_Speed ~= nil and a ~= nil then
			Binesh.CreateHTMLFile("a = <span>DeltaV/Deltat</span>", "Deltat = <span>DeltaV/a</span>")
			_Deltat = _DeltaV_Speed/a
			
			Binesh.AddToHTML("Deltat = <span>"..Binesh.ProgressNumber(_DeltaV_Speed).."/"..Binesh.ProgressNumber(a).."</span> &#8658; Deltat = "..Binesh.ProgressNumber(_Deltat).." s")
			
			Binesh.AddToHTML("DeltaV = "..Binesh.ProgressNumber(_DeltaV_Speed).." m/s", "V")
			Binesh.AddToHTML("a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>" , "V")
			Binesh.AddToHTML("Deltat = ?", "V")
		end
	end
end