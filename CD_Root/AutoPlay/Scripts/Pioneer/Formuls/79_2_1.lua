function Binesh.F79_2_1()
	if (_DeltaPa ~= nil or _Pa1 ~= nil or _Pa2 ~= nil) and (_DeltaP == nil and _P1 == nil and _P2 == nil) then
		Binesh.CreateHTMLFile("P<sub>Pascal</sub> = P<sub>atm</sub>*10<sup>5</sup>")
	end
	
	if _DeltaPa ~= nil and _DeltaP == nil then
		_DeltaP = _DeltaPa*10^5
		Binesh.AddToHTML("DeltaP<sub>Pascal</sub> = "..Binesh.ProgressNumber(_DeltaPa).."*10<sup>5</sup> &#8658; P<sub>Pascal</sub> = "..Binesh.ProgressNumber(_DeltaP).." Pa")
	end
	
	if _Pa1 ~= nil and _P1 == nil then
		_P1 = _Pa1*10^5
		Binesh.AddToHTML("P<sub>Pascal</sub> = "..Binesh.ProgressNumber(_Pa1).."*10<sup>5</sup> &#8658; P<sub>Pascal</sub> = "..Binesh.ProgressNumber(_P1).." Pa")
	end
	
	if _Pa2 ~= nil and _P2 == nil then
		_P2 = _Pa2*10^5
		Binesh.AddToHTML("P<sub>Pascal</sub> = "..Binesh.ProgressNumber(_Pa2).."*10<sup>5</sup> &#8658; P<sub>Pascal</sub> = "..Binesh.ProgressNumber(_P2).." Pa")
	end
	
	--------------------------{DELTA}--------------------------
	if _DeltaP == nil then
		if _P1 ~= nil and _P2 ~= nil then
			Binesh.CreateHTMLFile("DeltaP = P<sub>2</sub>-P<sub>1</sub>")
			_DeltaP = _P2 - _P1
			Binesh.AddToHTML("DeltaP = "..Binesh.ProgressNumber(_P2).."-"..Binesh.ProgressNumber(_P1).." &#8658; DeltaP = "..Binesh.ProgressNumber(_DeltaP).." Pa")
		end
	end
	
	if _P1 == nil then
		if _DeltaP ~= nil and _P2 ~= nil then
			Binesh.CreateHTMLFile("DeltaP = P<sub>2</sub>-P<sub>1</sub>", "P<sub>1</sub> = P<sub>2</sub>-DeltaP")
			_P1 = _P2-_DeltaP
			Binesh.AddToHTML("P<sub>1</sub> = "..Binesh.ProgressNumber(_P2).."-"..Binesh.ProgressNumber(_DeltaP).." &#8658; P<sub>1</sub> = "..Binesh.ProgressNumber(_P1).." Pa")
		end
	end
	
	if _P2 == nil then
		if _DeltaP ~= nil and _P1 ~= nil then
			Binesh.CreateHTMLFile("DeltaP = P<sub>2</sub>-P<sub>1</sub>", "P<sub>2</sub> = DeltaP+P<sub>1</sub>")
			_P2 = _P1+_DeltaP
			Binesh.AddToHTML("P<sub>2</sub> = "..Binesh.ProgressNumber(_DeltaP).."+"..Binesh.ProgressNumber(_P1).." &#8658; P<sub>2</sub> = "..Binesh.ProgressNumber(_P2).." Pa")
		end
	end
	--------------------------END {DELTA}--------------------------
	if Q == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ê—„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Q") ~= -1) then
		if CV ~= nil and V ~= nil and _DeltaP ~= nil then
			Binesh.CreateHTMLFile("Q = <span>C<sub>V</sub>/R</span>VDeltaP")
			Q = (CV/Settings.Zarib.R)*V*_DeltaP
			
			Binesh.AddToHTML("C<sub>V</sub> = "..Binesh.ProgressNumber(CV).." J/mol.K", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("DeltaP = "..Binesh.ProgressNumber(_DeltaP).." Pa", "V")
			Binesh.AddToHTML("Q = ?", "V")
			
			Binesh.AddToHTML("Q = <span>"..Binesh.ProgressNumber(CV).."/"..Binesh.ProgressNumber(Settings.Zarib.R).."</span>*"..Binesh.ProgressNumber(V).."*"..Binesh.ProgressNumber(_DeltaP).." &#8658; Q = "..Binesh.ProgressNumber(Q).." J")
		end
	end
	
	if CV == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "CV") ~= -1) then
		if Q ~= nil and V ~= nil and _DeltaP ~= nil then
			Binesh.CreateHTMLFile("Q = <span>C<sub>V</sub>/R</span>VDeltaP", "C<sub>V</sub> = <span>QR/VDeltaP</span>")
			CV = (Q*Settings.Zarib.R)/(V*_DeltaP)
			
			Binesh.AddToHTML("Q = "..Binesh.ProgressNumber(Q).." J", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("DeltaP = "..Binesh.ProgressNumber(_DeltaP).." Pa", "V")
			Binesh.AddToHTML("C<sub>V</sub> = ?", "V")
			
			Binesh.AddToHTML("C<sub>V</sub> = <span>"..Binesh.ProgressNumber(Q).."*"..Binesh.ProgressNumber(Settings.Zarib.R).."/"..Binesh.ProgressNumber(V).."*"..Binesh.ProgressNumber(_DeltaP).."</span> &#8658; C<sub>V</sub> = "..Binesh.ProgressNumber(CV).." J/mol.K")
		end
	end
	
	if V == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÕÃ„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then 
		if Q ~= nil and CV ~= nil and _DeltaP ~= nil then
			Binesh.CreateHTMLFile("Q = <span>C<sub>V</sub>/R</span>VDeltaP", "V = <span>QR/C<sub>V</sub>DeltaP</span>")
			V = (Q*Settings.Zarib.R)/(CV*_DeltaP)
			
			Binesh.AddToHTML("Q = "..Binesh.ProgressNumber(Q).." J", "V")
			Binesh.AddToHTML("C<sub>V</sub> = "..Binesh.ProgressNumber(CV).." J/mol.K", "V")
			Binesh.AddToHTML("DeltaP = "..Binesh.ProgressNumber(_DeltaP).." Pa", "V")
			Binesh.AddToHTML("V = ?", "V")
			
			Binesh.AddToHTML("V = <span>"..Binesh.ProgressNumber(Q).."*"..Binesh.ProgressNumber(Settings.Zarib.R).."/"..Binesh.ProgressNumber(CV).."*"..Binesh.ProgressNumber(_DeltaP).."</span> &#8658; V = "..Binesh.ProgressNumber(V).." m<sup>3</sup>")
		end
	end
	
	if _DeltaP == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— ›‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "›‘«—  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaP") ~= -1)) then
		if Q ~= nil and V ~= nil and CV ~= nil then
			Binesh.CreateHTMLFile("Q = <span>C<sub>V</sub>/R</span>VDeltaP", "DeltaP = <span>QR/C<sub>V</sub>V</span>")
			_DeltaP = (Q*Settings.Zarib.R)/(CV*V)
			
			Binesh.AddToHTML("Q = "..Binesh.ProgressNumber(Q).." J", "V")
			Binesh.AddToHTML("C<sub>V</sub> = "..Binesh.ProgressNumber(CV).." J/mol.K", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("DeltaP = ?", "V")
			
			Binesh.AddToHTML("DeltaP = <span>"..Binesh.ProgressNumber(Q).."*"..Binesh.ProgressNumber(Settings.Zarib.R).."/"..Binesh.ProgressNumber(CV).."*"..Binesh.ProgressNumber(V).."</span> &#8658; DeltaP = "..Binesh.ProgressNumber(_DeltaP).." Pa")
		end
	end
end