function Binesh.F69_1()
	if _L1 ~= nil then
		V = _L1
	end
	if _V1L ~= nil then
		VL = _L1L
	end
	
	if _DeltaVL ~= nil or VL ~= nil or _V2L ~= nil then
		Binesh.CreateHTMLFile("V = V<sub>L</sub>*10<sup>-3</sup>")
	end
	
	if _DeltaVL ~= nil then
		_DeltaV = _DeltaVL * 10^-3
		Binesh.AddToHTML("DeltaV = ".._DeltaVL.."*10<sup>-3</sup> &#8658; DeltaV = ".._DeltaV.." m<sup>3</sup>")
	end
	
	if VL ~= nil then
		V = VL * 10^-3
		Binesh.AddToHTML("V<sub>1</sub> = "..VL.."*10<sup>-3</sup> &#8658; V<sub>1</sub> = "..VL.." m<sup>3</sup>")
	end
	
	if _V2L ~= nil then
		_V2 = _V2L * 10^-3
		Binesh.AddToHTML("V<sub>2</sub> = ".._V2L.."*10<sup>-3</sup> &#8658; V<sub>2</sub> = ".._V2L.." m<sup>3</sup>")
	end
	
	--------------------------{DELTA}--------------------------
	if _DeltaV == nil then
		if V ~= nil and _V2 ~= nil then
			Binesh.AddToHTML("DeltaV = V<sub>2</sub>-V<sub>1</sub>")
			_DeltaV = _V2 - V
			Binesh.AddToHTML("DeltaV = ".._V2.."-"..V.." &#8658; DeltaV = ".._DeltaV.." m<sup>3</sup>")
		end
	end
	
	if V == nil then
		if _DeltaV ~= nil and _V2 ~= nil then
			Binesh.AddToHTML("DeltaV = V<sub>2</sub>-V<sub>1</sub>", "V<sub>1</sub> = V<sub>2</sub>-DeltaV")
			V = _V2-_DeltaV
			Binesh.AddToHTML("V<sub>1</sub> = ".._V2.."-".._DeltaV.." &#8658; V<sub>1</sub> = "..V.." m<sup>3</sup>")
		end
	end
	
	if _V2 == nil then
		if _DeltaV ~= nil and V ~= nil then
			Binesh.AddToHTML("DeltaV = V<sub>2</sub>-V<sub>1</sub>", "V<sub>2</sub> = DeltaV+V<sub>1</sub>")
			_V2 = V+_DeltaV
			Binesh.AddToHTML("V<sub>2</sub> = ".._DeltaV.."+"..V.." &#8658; V<sub>2</sub> = ".._V2.." m<sup>3</sup>")
		end
	end
	--------------------------END {DELTA}--------------------------
	if _DeltaV == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "��� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaV") ~= -1 then
		if Beta_Length ~= nil and _DeltaTeta ~= nil and V ~= nil then
			Binesh.AddToHTML("DeltaV = V<sub>1</sub>BetaDeltaTeta")
			_DeltaV = V*Beta_Length*_DeltaTeta
			
			Binesh.AddToHTML("V<sub>1</sub>: "..V.." m<sup>3</sup>", "V")
			Binesh.AddToHTML("Beta: "..Beta_Length.." 1/C", "V")
			Binesh.AddToHTML("DeltaTeta: ".._DeltaTeta.."<sup>o</sup>C", "V")
			Binesh.AddToHTML("DeltaV: ?", "V")
			
			Binesh.AddToHTML("DeltaV = "..V.."*"..Beta_Length.."*".._DeltaTeta.." &#8658; DeltaV = ".._DeltaV.." m<sup>3</sup>")
		end
	end
	if Beta_Length == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "���� ������ ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Beta") ~= -1 then
		if _DeltaV ~= nil and _DeltaTeta ~= nil and V ~= nil then
			Binesh.AddToHTML("DeltaV = V<sub>1</sub>BetaDeltaTeta","Beta = <span>DeltaV/DeltaTetaV<sub>1</sub></span>")
			Beta_Length = _DeltaV/(_DeltaTeta*V)
			
			Binesh.AddToHTML("DeltaV: ".._DeltaV.." m<sup>3</sup>", "V")
			Binesh.AddToHTML("DeltaTeta: ".._DeltaTeta.."<sup>o</sup>C", "V")
			Binesh.AddToHTML("V<sub>1</sub>: "..V.." m<sup>3</sup>", "V")
			Binesh.AddToHTML("Beta: ?", "V")
			
			Binesh.AddToHTML("Beta = <span>".._DeltaV.."/".._DeltaTeta.."*"..V.."</span> &#8658; Beta_Length = "..Beta_Length.." 1/C")
		end
	end
	
	if _DeltaTeta == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "��� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaT") ~= -1 then
		if Beta_Length ~= nil and _DeltaV ~= nil and V ~= nil then
			Binesh.AddToHTML("DeltaV = V<sub>1</sub>BetaDeltaTeta", "DeltaTeta = <span>DeltaV/V<sub>1</sub>Beta</sapn>")
			_DeltaTeta = _DeltaV/(V*Beta_Length)
			
			Binesh.AddToHTML("DeltaV: ".._DeltaV.." m<sup>3</sup>", "V")
			Binesh.AddToHTML("V<sub>1</sub>: "..V.." m<sup>3</sup>", "V")
			Binesh.AddToHTML("Beta: "..Beta_Length.." 1/C", "V")
			Binesh.AddToHTML("DeltaTeta: ?", "V")
			
			Binesh.AddToHTML("DeltaTeta = <span>".._DeltaV.."/"..V.."*"..Beta_Length.."</span> &#8658; DeltaTeta = ".._DeltaTeta.."<sup>o</sup>C")
		end
	end
	
	if V == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "��� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1 then 
		if Beta_Length ~= nil and _DeltaV ~= nil and _DeltaTeta ~= nil then
			Binesh.AddToHTML("DeltaV = V<sub>1</sub>BetaDeltaTeta", "V<sub>1</sub> = <span>DeltaV/BetaDeltaTeta</sapn>")
			V = _DeltaV/(Beta_Length*_DeltaTeta)
			
			Binesh.AddToHTML("DeltaV: ".._DeltaV.." m<sup>3</sup>", "V")
			Binesh.AddToHTML("Beta: "..Beta_Length.." 1/C", "V")
			Binesh.AddToHTML("DeltaTeta: ".._DeltaTeta.."<sup>o</sup>C", "V")
			Binesh.AddToHTML("V<sub>1</sub>: ?", "V")
			
			Binesh.AddToHTML("V<sub>1</sub> = <span>".._DeltaV.."/"..Beta_Length.."*".._DeltaTeta.."</span> &#8658; V<sub>1</sub> = "..V.." m<sup>3</sup>")
		end
	end
end