function Binesh.F78_1_2()
	if _T1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "��� �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T1") ~= -1)) then
		if Q ~= nil and CP ~= nil and n ~= nil and _T2 ~= nil then
			Binesh.CreateHTMLFile("Q = nC<sub>p</sub>(T<sub>2</sub>-T<sub>1</sub>)", "T<sub>2</sub>-T<sub>1</sub> = <span>Q/nC<sub>p</sub></span>")
			Binesh.AddToHTML("T<sub>1</sub> = T<sub>2</sub>- <span>Q/nC<sub>p</sub></span> &#8658; ")
			_T1 = _T2+(-Q/(n*CP))
			
			Binesh.AddToHTML("T<sub>2</sub> = "..Binesh.ProgressNumber(_T2).."<sup>o</sup>K", "V")
			Binesh.AddToHTML("Q = "..Binesh.ProgressNumber(Q).." J", "V")
			Binesh.AddToHTML("n = "..Binesh.ProgressNumber(n).." mol", "V")
			Binesh.AddToHTML("C<sub>P</sub> = "..Binesh.ProgressNumber(CP).." J/mol.K", "V")
			Binesh.AddToHTML("T<sub>1</sub> = ?", "V")
			
			Binesh.AddToHTML("T<sub>1</sub> = "..Binesh.ProgressNumber(_T2).."- <span>"..Binesh.ProgressNumber(Q).."/"..Binesh.ProgressNumber(n).."*"..Binesh.ProgressNumber(CP).."</span> &#8658; T<sub>1</sub> = "..Binesh.ProgressNumber(_T1).."<sup>o</sup>K")
		end
	end
	
	if _T2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "��� �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta2") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T2") ~= -1)) then
		if Q ~= nil and CP ~= nil and n ~= nil and _T1 ~= nil then
			Binesh.CreateHTMLFile("Q = nC<sub>p</sub>(T<sub>2</sub>-T<sub>1</sub>)", "T<sub>2</sub>-T<sub>1</sub> = <span>Q/nC<sub>p</sub></span>")
			Binesh.AddToHTML("T<sub>2</sub> = T<sub>1</sub>+ <span>Q/nC<sub>p</sub></span>")
			_T2 = _T1+(Q/(n*CP))
			
			Binesh.AddToHTML("T<sub>1</sub> = "..Binesh.ProgressNumber(_T1).."<sup>o</sup>K", "V")
			Binesh.AddToHTML("Q = "..Binesh.ProgressNumber(Q).." J", "V")
			Binesh.AddToHTML("n = "..Binesh.ProgressNumber(n).." mol", "V")
			Binesh.AddToHTML("C<sub>P</sub> = "..Binesh.ProgressNumber(CP).." J/mol.K", "V")
			Binesh.AddToHTML("T<sub>2</sub> = ?", "V")
			
			Binesh.AddToHTML("T<sub>2</sub> = "..Binesh.ProgressNumber(_T1).."- <span>"..Binesh.ProgressNumber(Q).."/"..Binesh.ProgressNumber(n).."*"..Binesh.ProgressNumber(CP).."</span> &#8658; T<sub>1</sub> = "..Binesh.ProgressNumber(_T2).."<sup>o</sup>K")
		end
	end
end