function Binesh.F69_1()
	if _L1 ~= nil then
		V = _L1
	end
	if _V1L ~= nil then
		VL = _L1L
	end
	
	if (_DeltaVL ~= nil or VL ~= nil or _V2L ~= nil) and (_DeltaV == nil and V == nil and _V2 == nil) then
		Binesh.CreateHTMLFile("V = V<sub>L</sub>*10<sup>-3</sup>")
	end
	
	if _DeltaVL ~= nil and _DeltaV == nil then
		_DeltaV = math.abs(_DeltaVL * 10^-3)
		Binesh.AddToHTML("DeltaV = "..Binesh.Convert_e(_DeltaVL).."*10<sup>-3</sup> &#8658; DeltaV = "..Binesh.Convert_e(_DeltaV).." m<sup>3</sup>")
	end
	
	if VL ~= nil and V == nil then
		V = math.abs(VL * 10^-3)
		Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.Convert_e(VL).."*10<sup>-3</sup> &#8658; V<sub>1</sub> = "..Binesh.Convert_e(VL).." m<sup>3</sup>")
	end
	
	if _V2L ~= nil and _V2 == nil then
		_V2 = math.abs(_V2L * 10^-3)
		Binesh.AddToHTML("V<sub>2</sub> = "..Binesh.Convert_e(_V2L).."*10<sup>-3</sup> &#8658; V<sub>2</sub> = "..Binesh.Convert_e(_V2L).." m<sup>3</sup>")
	end
	
	--------------------------{DELTA}--------------------------
	if _DeltaV == nil then
		if V ~= nil and _V2 ~= nil then
			Binesh.CreateHTMLFile("DeltaV = V<sub>2</sub>-V<sub>1</sub>")
			_DeltaV = math.abs(_V2 - V)
			Binesh.AddToHTML("DeltaV = "..Binesh.Convert_e(_V2).."-"..Binesh.Convert_e(V).." &#8658; DeltaV = "..Binesh.Convert_e(_DeltaV).." m<sup>3</sup>")
		end
	end
	
	if V == nil then
		if _DeltaV ~= nil and _V2 ~= nil then
			Binesh.CreateHTMLFile("DeltaV = V<sub>2</sub>-V<sub>1</sub>", "V<sub>1</sub> = V<sub>2</sub>-DeltaV")
			V = math.abs(_V2-_DeltaV)
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.Convert_e(_V2).."-"..Binesh.Convert_e(_DeltaV).." &#8658; V<sub>1</sub> = "..Binesh.Convert_e(V).." m<sup>3</sup>")
		end
	end
	
	if _V2 == nil then
		if _DeltaV ~= nil and V ~= nil then
			Binesh.CreateHTMLFile("DeltaV = V<sub>2</sub>-V<sub>1</sub>", "V<sub>2</sub> = DeltaV+V<sub>1</sub>")
			_V2 = math.abs(V+_DeltaV)
			Binesh.AddToHTML("V<sub>2</sub> = "..Binesh.Convert_e(_DeltaV).."+"..Binesh.Convert_e(V).." &#8658; V<sub>2</sub> = "..Binesh.Convert_e(_V2).." m<sup>3</sup>")
		end
	end
	--------------------------END {DELTA}--------------------------
	if _DeltaV == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— ÕÃ„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "ÕÃ„  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaV") ~= -1)) then
		if Beta_Length ~= nil and _DeltaTeta ~= nil and V ~= nil then
			Binesh.CreateHTMLFile("DeltaV = V<sub>1</sub>BetaDeltaTeta")
			_DeltaV = V*Beta_Length*_DeltaTeta
			
			Binesh.AddToHTML("V<sub>1</sub>: "..Binesh.Convert_e(V).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("Beta: "..Binesh.Convert_e(Beta_Length).." 1/C", "V")
			Binesh.AddToHTML("DeltaTeta: "..Binesh.Convert_e(_DeltaTeta).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("DeltaV: ?", "V")
			
			Binesh.AddToHTML("DeltaV = "..Binesh.Convert_e(V).."*"..Binesh.Convert_e(Beta_Length).."*"..Binesh.Convert_e(_DeltaTeta).." &#8658; DeltaV = "..Binesh.Convert_e(_DeltaV).." m<sup>3</sup>")
		end
	end
	if Beta_Length == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» «‰»”«ÿ ÕÃ„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Beta") ~= -1) then
		if _DeltaV ~= nil and _DeltaTeta ~= nil and V ~= nil then
			Binesh.CreateHTMLFile("DeltaV = V<sub>1</sub>BetaDeltaTeta","Beta = <span>DeltaV/DeltaTetaV<sub>1</sub></span>")
			Beta_Length = _DeltaV/(_DeltaTeta*V)
			
			Binesh.AddToHTML("DeltaV: "..Binesh.Convert_e(_DeltaV).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("DeltaTeta: "..Binesh.Convert_e(_DeltaTeta).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("V<sub>1</sub>: "..Binesh.Convert_e(V).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("Beta: ?", "V")
			
			Binesh.AddToHTML("Beta = <span>"..Binesh.Convert_e(_DeltaV).."/"..Binesh.Convert_e(_DeltaTeta).."*"..Binesh.Convert_e(V).."</span> &#8658; Beta = "..Binesh.Convert_e(Beta_Length).." 1/C")
		end
	end
	
	if _DeltaTeta == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„«  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaT") ~= -1)) then
		if Beta_Length ~= nil and _DeltaV ~= nil and V ~= nil then
			Binesh.CreateHTMLFile("DeltaV = V<sub>1</sub>BetaDeltaTeta", "DeltaTeta = <span>DeltaV/V<sub>1</sub>Beta</span>")
			_DeltaTeta = _DeltaV/(V*Beta_Length)
			
			Binesh.AddToHTML("DeltaV: "..Binesh.Convert_e(_DeltaV).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("V<sub>1</sub>: "..Binesh.Convert_e(V).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("Beta: "..Binesh.Convert_e(Beta_Length).." 1/C", "V")
			Binesh.AddToHTML("DeltaTeta: ?", "V")
			
			Binesh.AddToHTML("DeltaTeta = <span>"..Binesh.Convert_e(_DeltaV).."/"..Binesh.Convert_e(V).."*"..Binesh.Convert_e(Beta_Length).."</span> &#8658; DeltaTeta = "..Binesh.Convert_e(_DeltaTeta).."<sup>o</sup>C")
		end
	end
	
	if V == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "ÕÃ„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ÕÃ„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "ÕÃ„ «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1)) then 
		if Beta_Length ~= nil and _DeltaV ~= nil and _DeltaTeta ~= nil then
			Binesh.CreateHTMLFile("DeltaV = V<sub>1</sub>BetaDeltaTeta", "V<sub>1</sub> = <span>DeltaV/BetaDeltaTeta</span>")
			V = _DeltaV/(Beta_Length*_DeltaTeta)
			
			Binesh.AddToHTML("DeltaV: "..Binesh.Convert_e(_DeltaV).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("Beta: "..Binesh.Convert_e(Beta_Length).." 1/C", "V")
			Binesh.AddToHTML("DeltaTeta: "..Binesh.Convert_e(_DeltaTeta).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("V<sub>1</sub>: ?", "V")
			
			Binesh.AddToHTML("V<sub>1</sub> = <span>"..Binesh.Convert_e(_DeltaV).."/"..Binesh.Convert_e(Beta_Length).."*"..Binesh.Convert_e(_DeltaTeta).."</span> &#8658; V<sub>1</sub> = "..Binesh.Convert_e(V).." m<sup>3</sup>")
		end
	end
end