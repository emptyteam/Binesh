function Binesh.F79_2_2()
	if _P1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "���� �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "P1") ~= -1)) then
		if Q ~= nil and V ~= nil and CV ~= nil and _P2 ~= nil then
			Binesh.CreateHTMLFile("Q = <span>C<sub>V</sub>/R</span>V(P<sub>2</sub>-P<sub>1</sub>)", "P<sub>2</sub>-P<sub>1</sub> = <span>QR/C<sub>V</sub>V</span>")
			Binesh.AddToHTML("P<sub>1</sub> = P<sub>2</sub>- <span>QR/C<sub>V</sub>V</span>")
			_P1 = _P2+(-(Q*Settings.Zarib.R)/(CV*V))
			
			Binesh.AddToHTML("P<sub>2</sub> = "..Binesh.ProgressNumber(_P2).." Pa", "V")
			Binesh.AddToHTML("Q = "..Binesh.ProgressNumber(Q).." J", "V")
			Binesh.AddToHTML("C<sub>V</sub> = "..Binesh.ProgressNumber(CV).." J/mol.K", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("P<sub>1</sub> = ?", "V")
			
			Binesh.AddToHTML("P<sub>1</sub> = "..Binesh.ProgressNumber(_P2).."- <span>"..Binesh.ProgressNumber(Q).."*"..Binesh.ProgressNumber(Settings.Zarib.R).."/"..Binesh.ProgressNumber(CV).."*"..Binesh.ProgressNumber(V).."</span> &#8658; P<sub>1</sub> = "..Binesh.ProgressNumber(_P1).." Pa")
		end
	end
	
	if _P2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "���� �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "P2") ~= -1)) then
		if Q ~= nil and V ~= nil and CV ~= nil and _P1 ~= nil then
			Binesh.CreateHTMLFile("Q = <span>C<sub>V</sub>/R</span>V(P<sub>2</sub>-P<sub>1</sub>)", "P<sub>2</sub>-P<sub>1</sub> = <span>QR/C<sub>V</sub>V</span>")
			Binesh.AddToHTML("P<sub>2</sub> = P<sub>1</sub>+ <span>QR/C<sub>V</sub>V</span>")
			_P2 = _P1+(Q*Settings.Zarib.R)/(CV*V)
			
			Binesh.AddToHTML("P<sub>1</sub> = "..Binesh.ProgressNumber(_P1).." Pa", "V")
			Binesh.AddToHTML("Q = "..Binesh.ProgressNumber(Q).." J", "V")
			Binesh.AddToHTML("C<sub>V</sub> = "..Binesh.ProgressNumber(CV).." J/mol.K", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("P<sub>2</sub> = ?", "V")
			
			Binesh.AddToHTML("P<sub>2</sub> = "..Binesh.ProgressNumber(_P1).."+ <span>"..Binesh.ProgressNumber(Q).."*"..Binesh.ProgressNumber(Settings.Zarib.R).."/"..Binesh.ProgressNumber(CV).."*"..Binesh.ProgressNumber(V).."</span> &#8658; P<sub>2</sub> = "..Binesh.ProgressNumber(_P2).." Pa")
		end
	end
end