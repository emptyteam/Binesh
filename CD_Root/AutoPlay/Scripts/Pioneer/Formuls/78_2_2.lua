function Binesh.F78_2_2()
	if _V1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ÕÃ„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "ÕÃ„ «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1)) then
		if Q ~= nil and CP ~= nil and P ~= nil and _V2 ~= nil then
			Binesh.CreateHTMLFile("Q = <span>C<sub>p</sub>/R</span>P(V<sub>2</sub>-V<sub>1</sub>)", "V<sub>2</sub>-V<sub>1</sub> = <span>QR/C<sub>p</sub>P</span>")
			Binesh.AddToHTML("V<sub>1</sub> = V<sub>2</sub>- <span>QR/C<sub>p</sub>P</span> &#8658; ")
			_V1 = _V2+(-(Q*R)/(CP*P))
			
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V2).."- <span>("..Binesh.ProgressNumber(Q).."*"..Binesh.ProgressNumber(R)..")/("..Binesh.ProgressNumber(CP).."*"..Binesh.ProgressNumber(P)..")</span> &#8658; V<sub>1</sub> = "..Binesh.ProgressNumber(_V1).." m<sup>3</sup>")
			
			Binesh.AddToHTML("V<sub>2</sub> = "..Binesh.ProgressNumber(_V2).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("Q = "..Binesh.ProgressNumber(Q).." J", "V")
			Binesh.AddToHTML("P = "..Binesh.ProgressNumber(P).." Pa", "V")
			Binesh.AddToHTML("C<sub>P</sub> = "..Binesh.ProgressNumber(CP).." J/mol.K", "V")
			Binesh.AddToHTML("V<sub>1</sub> = ?", "V")
		end
	end
	
	if _V2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ÕÃ„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "ÕÃ„ œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V2") ~= -1)) then
		if Q ~= nil and CP ~= nil and P ~= nil and _V1 ~= nil then
			Binesh.CreateHTMLFile("Q = <span>C<sub>p</sub>/R</span>P(V<sub>2</sub>-V<sub>1</sub>)", "V<sub>2</sub>-V<sub>1</sub> = <span>QR/C<sub>p</sub>P</span>")
			Binesh.AddToHTML("V<sub>2</sub> = V<sub>1</sub>+ <span>QR/C<sub>p</sub>P</span> &#8658; ")
			_V2 = _V1+(Q*R)/(CP*P)
			
			Binesh.AddToHTML("V<sub>2</sub> = "..Binesh.ProgressNumber(_V1).."+ <span>("..Binesh.ProgressNumber(Q).."*"..Binesh.ProgressNumber(R)..")/("..Binesh.ProgressNumber(CP).."*"..Binesh.ProgressNumber(P)..")</span> &#8658; V<sub>2</sub> = "..Binesh.ProgressNumber(_V2).." m<sup>3</sup>")
			
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("Q = "..Binesh.ProgressNumber(Q).." J", "V")
			Binesh.AddToHTML("P = "..Binesh.ProgressNumber(P).." Pa", "V")
			Binesh.AddToHTML("C<sub>P</sub> = "..Binesh.ProgressNumber(CP).." J/mol.K", "V")
			Binesh.AddToHTML("V<sub>2</sub> = ?", "V")
		end
	end
end