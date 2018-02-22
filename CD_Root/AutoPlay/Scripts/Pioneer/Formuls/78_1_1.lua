function Binesh.F78_1_1()
	if Q == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ê—„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Q") ~= -1) then 
		if n ~= nil and CP ~= nil and _DeltaT ~= nil then
			Binesh.CreateHTMLFile("Q = nC<sub>p</sub>DeltaT")
			Q = n*CP*_DeltaT
			
			Binesh.AddToHTML("n = "..Binesh.ProgressNumber(n).." mol", "V")
			Binesh.AddToHTML("C<sub>P</sub> = "..Binesh.ProgressNumber(CP).." J/mol.K", "V")
			Binesh.AddToHTML("DeltaT = "..Binesh.ProgressNumber(_DeltaT).."<sup>o</sup>K", "V")
			Binesh.AddToHTML("Q = ?", "V")
			
			Binesh.AddToHTML("Q = "..Binesh.ProgressNumber(n).."*"..Binesh.ProgressNumber(CP).."*"..Binesh.ProgressNumber(_DeltaT).." &#8658; Q = "..Binesh.ProgressNumber(Q).." J")
		end
	end
	
	if n == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ê·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1) then 
		if Q ~= nil and CP ~= nil and EDeltaT ~= nil then
			Binesh.CreateHTMLFile("Q = nC<sub>p</sub>DeltaT", "n = <span>Q/C<sub>p</sub></span>DeltaT")
			n = Q/(CP*_DeltaT)
			
			Binesh.AddToHTML("Q = "..Binesh.ProgressNumber(Q).." J", "V")
			Binesh.AddToHTML("C<sub>P</sub> = "..Binesh.ProgressNumber(CP).." J/mol.K", "V")
			Binesh.AddToHTML("DeltaT = "..Binesh.ProgressNumber(_DeltaT).."<sup>o</sup>K", "V")
			Binesh.AddToHTML("n = ?", "V")
			
			Binesh.AddToHTML("n = <span>"..Binesh.ProgressNumber(Q).."/"..Binesh.ProgressNumber(CP).."*"..Binesh.ProgressNumber(_DeltaT).."</span> &#8658; n = "..Binesh.ProgressNumber(n).." mol")
		end
	end
	
	if CP == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "CP") ~= -1) then 
		if Q ~= nil and _DeltaT ~= nil and n ~= nil then
			Binesh.CreateHTMLFile("Q = nC<sub>p</sub>DeltaT", "C<sub>P</sub> = <span>Q/nDeltaT</span>")
			CP = Q/(n*_DeltaT)
			
			Binesh.AddToHTML("Q = "..Binesh.ProgressNumber(Q).." J", "V")
			Binesh.AddToHTML("n = "..Binesh.ProgressNumber(n).." mol", "V")
			Binesh.AddToHTML("DeltaT = "..Binesh.ProgressNumber(_DeltaT).."<sup>o</sup>K", "V")
			Binesh.AddToHTML("C<sub>P</sub> = ?", "V")
			
			Binesh.AddToHTML("C<sub>p</sub> = <span>"..Binesh.ProgressNumber(Q).."/"..Binesh.ProgressNumber(n).."*"..Binesh.ProgressNumber(_DeltaT).."</span> &#8658; C<sub>p</sub> = "..Binesh.ProgressNumber(CP).." J/mol.K")
		end
	end
	
	if _DeltaT == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„«  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaT") ~= -1)) then
		if Q ~= nil and CP ~= nil and n ~= nil then
			Binesh.CreateHTMLFile("Q = nC<sub>p</sub>DeltaT", "DeltaT = <span>Q/nC<sub>p</sub></span>")
			_DeltaT = Q/(n*CP)
			
			Binesh.AddToHTML("Q = "..Binesh.ProgressNumber(Q).." J", "V")
			Binesh.AddToHTML("n = "..Binesh.ProgressNumber(n).." mol", "V")
			Binesh.AddToHTML("C<sub>P</sub> = "..Binesh.ProgressNumber(CP).." J/mol.K", "V")
			Binesh.AddToHTML("DeltaT = ?", "V")
			
			Binesh.AddToHTML("DeltaT = <span>"..Binesh.ProgressNumber(Q).."/"..Binesh.ProgressNumber(n).."*"..Binesh.ProgressNumber(CP).."</span> &#8658; DeltaT = "..Binesh.ProgressNumber(_DeltaT).."<sup>o</sup>K")
		end
	end
end