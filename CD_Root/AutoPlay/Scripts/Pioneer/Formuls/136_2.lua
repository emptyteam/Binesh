function Binesh.F136_2()
	if _q1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "��� �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "q1") ~= -1)) then
		if N_Ring ~= nil and _DeltaFi ~= nil and R ~= nil and _q2 ~= nil then
			Binesh.CreateHTMLFile("q<sub>2</sub>-q<sub>1</sub> = <span>N/R</span>DeltaFi", "q<sub>1</sub> = q<sub>2</sub>- <span>N/R</span>DeltaFi")
			_q1 = _q2-(N_Ring/R)*_DeltaFi
			
			Binesh.AddToHTML("q<sub>1</sub> = "..Binesh.ProgressNumber(_q2).."- <span>"..Binesh.ProgressNumber(N_Ring).."/"..Binesh.ProgressNumber(R).."</span>"..Binesh.ProgressNumber(_DeltaFi).." &#8658; q<sub>1</sub> = "..Binesh.ProgressNumber(_q1).." C")
			
			Binesh.AddToHTML("q<sub>2</sub> = "..Binesh.ProgressNumber(_q2).." C", "V")
			Binesh.AddToHTML("N = "..Binesh.ProgressNumber(N_Ring), "V")
			Binesh.AddToHTML("R = "..Binesh.ProgressNumber(R).." Ohm", "V")
			Binesh.AddToHTML("DeltaFi = "..Binesh.ProgressNumber(_DeltaFi).." Wb", "V")
			Binesh.AddToHTML("q<sub>1</sub> = ?", "V")
		end
	end
	
	if _q2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "��� �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "q2") ~= -1)) then
		if N_Ring ~= nil and _DeltaFi ~= nil and R ~= nil and _q1 ~= nil then
			Binesh.CreateHTMLFile("q<sub>2</sub>-q<sub>1</sub> = <span>N/R</span>DeltaFi", "q<sub>2</sub> = q<sub>1</sub>+ <span>N/R</span>DeltaFi")
			_q2 = _q1+(N_Ring/R)*_DeltaFi
			
			Binesh.AddToHTML("q<sub>2</sub> = "..Binesh.ProgressNumber(_q1).."+ <span>"..Binesh.ProgressNumber(N_Ring).."/"..Binesh.ProgressNumber(R).."</span>"..Binesh.ProgressNumber(_DeltaFi).." &#8658; q<sub>2</sub> = "..Binesh.ProgressNumber(_q2).." C")
			
			Binesh.AddToHTML("q<sub>1</sub> = "..Binesh.ProgressNumber(_q1).." C", "V")
			Binesh.AddToHTML("N = "..Binesh.ProgressNumber(N_Ring), "V")
			Binesh.AddToHTML("R = "..Binesh.ProgressNumber(R).." Ohm", "V")
			Binesh.AddToHTML("DeltaFi = "..Binesh.ProgressNumber(_DeltaFi).." Wb", "V")
			Binesh.AddToHTML("q<sub>2</sub> = ?", "V")
		end
	end
end