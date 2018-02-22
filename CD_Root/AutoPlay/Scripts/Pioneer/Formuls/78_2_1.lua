function Binesh.F78_2_1()
	if Q == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ê—„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Q") ~= -1) then
		if P ~= nil and CP ~= nil and _DeltaV ~= nil then
			Binesh.CreateHTMLFile("Q = <span>C<sub>p</sub>/R</span>PDeltaV")
			Q = (CP/Settings.Zarib.R)*P*_DeltaV
			
			Binesh.AddToHTML("Q = <span>"..Binesh.ProgressNumber(CP).."/"..Binesh.ProgressNumber(Settings.Zarib.R).."</span>*"..Binesh.ProgressNumber(P).."*"..Binesh.ProgressNumber(_DeltaV).." &#8658; Q = "..Binesh.ProgressNumber(Q).." J")
			
			Binesh.AddToHTML("P = "..Binesh.ProgressNumber(P).." Pa", "V")
			Binesh.AddToHTML("C<sub>P</sub> = "..Binesh.ProgressNumber(CP).." J/mol.K", "V")
			Binesh.AddToHTML("DeltaV = "..Binesh.ProgressNumber(_DeltaV).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("Q = ?", "V")
		end
	end
	
	if P == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "›‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1) then
		if Q ~= nil and CP ~= nil and _DeltaV ~= nil then
			Binesh.CreateHTMLFile("Q = <span>C<sub>p</sub>/R</span>PDeltaV", "P = <span>QR/C<sub>P</sub>DeltaV</span>")
			P = (Q*Settings.Zarib.R)/(CP*_DeltaV)
			
			Binesh.AddToHTML("P = <span>"..Binesh.ProgressNumber(Q).."*"..Binesh.ProgressNumber(Settings.Zarib.R).."/"..Binesh.ProgressNumber(CP).."*"..Binesh.ProgressNumber(_DeltaV).."</span> &#8658; P = "..Binesh.ProgressNumber(P).." Pa")
			
			Binesh.AddToHTML("Q = "..Binesh.ProgressNumber(Q).." J", "V")
			Binesh.AddToHTML("C<sub>P</sub> = "..Binesh.ProgressNumber(CP).." J/mol.K", "V")
			Binesh.AddToHTML("DeltaV = "..Binesh.ProgressNumber(_DeltaV).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("P = ?", "V")
		end
	end
	
	if CP == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "CP") ~= -1) then
		if Q ~= nil and _DeltaV ~= nil and P ~= nil then
			Binesh.CreateHTMLFile("Q = <span>C<sub>p</sub>/R</span>PDeltaV", "C<sub>P</sub> = <span>QR/PDeltaV</span>")
			CP = (Q*Settings.Zarib.R)/(P*_DeltaV)
			
			Binesh.AddToHTML("C<sub>p</sub> = <span>"..Binesh.ProgressNumber(Q).."*"..Binesh.ProgressNumber(Settings.Zarib.R).."/"..Binesh.ProgressNumber(P).."*"..Binesh.ProgressNumber(_DeltaV).."</span> &#8658; C<sub>p</sub> = "..Binesh.ProgressNumber(CP).." J/mol.K")
			
			Binesh.AddToHTML("Q = "..Binesh.ProgressNumber(Q).." J", "V")
			Binesh.AddToHTML("P = "..Binesh.ProgressNumber(P).." Pa", "V")
			Binesh.AddToHTML("DeltaV = "..Binesh.ProgressNumber(_DeltaV).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("C<sub>P</sub> = ?", "V")
		end
	end
	
	if _DeltaV == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— ÕÃ„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "ÕÃ„  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaV") ~= -1)) then
		if Q ~= nil and CP ~= nil and P ~= nil then
			Binesh.CreateHTMLFile("Q = <span>C<sub>p</sub>/R</span>PDeltaV", "DeltaV = <span>QR/C<sub>p</sub>P</span>")
			_DeltaV = (Q*R)/(CP*P)
			
			Binesh.AddToHTML("DeltaV = <span>("..Binesh.ProgressNumber(Q).."*"..Binesh.ProgressNumber(R)..")/("..Binesh.ProgressNumber(CP).."*"..Binesh.ProgressNumber(P)..")</span> &#8658; DeltaV = "..Binesh.ProgressNumber(_DeltaV).." m<sup>3</sup>")
			
			Binesh.AddToHTML("Q = "..Binesh.ProgressNumber(Q).." J", "V")
			Binesh.AddToHTML("P = "..Binesh.ProgressNumber(P).." Pa", "V")
			Binesh.AddToHTML("C<sub>P</sub> = "..Binesh.ProgressNumber(CP).." J/mol.K", "V")
			Binesh.AddToHTML("DeltaV = ?", "V")
		end
	end
end