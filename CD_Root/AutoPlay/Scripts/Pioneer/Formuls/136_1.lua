function Binesh.F136_1()
	--------------------------{DELTA}--------------------------
	if _Deltaq == nil then
		if _q1 ~= nil and _q2 ~= nil then
			Binesh.CreateHTMLqle("Deltaq = q<sub>2</sub>-q<sub>1</sub>")
			_Deltaq = _q2 - _q1
			Binesh.AddToHTML("Deltaq = "..Binesh.ProgressNumber(_q2).."-"..Binesh.ProgressNumber(_q1).." &#8658; Deltaq = "..Binesh.ProgressNumber(_Deltaq).." C")
		end
	end
	
	if _q1 == nil then
		if _Deltaq ~= nil and _q2 ~= nil then
			Binesh.CreateHTMLqle("Deltaq = q<sub>2</sub>-q<sub>1</sub>", "q<sub>1</sub> = q<sub>2</sub>-Deltaq")
			_q1 = _q2-_Deltaq
			Binesh.AddToHTML("q<sub>1</sub> = "..Binesh.ProgressNumber(_q2).."-"..Binesh.ProgressNumber(_Deltaq).." &#8658; q<sub>1</sub> = "..Binesh.ProgressNumber(_q1).." C")
		end
	end
	
	if _q2 == nil then
		if _Deltaq ~= nil and _q1 ~= nil then
			Binesh.CreateHTMLqle("Deltaq = q<sub>2</sub>-q<sub>1</sub>", "q<sub>2</sub> = Deltaq+q<sub>1</sub>")
			_q2 = _q1+_Deltaq
			Binesh.AddToHTML("q<sub>2</sub> = "..Binesh.ProgressNumber(_Deltaq).."+"..Binesh.ProgressNumber(_q1).." &#8658; q<sub>2</sub> = "..Binesh.ProgressNumber(_q2).." C")
		end
	end
	--------------------------END {DELTA}--------------------------
	if _Deltaq == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— –—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltaq") ~= -1)) then
		if N_Ring ~= nil and _DeltaFi ~= nil and R ~= nil then
			Binesh.CreateHTMLFile("Deltaq = <span>N/R</span>DeltaFi")
			_Deltaq = (N_Ring/R)*_DeltaFi
			
			Binesh.AddToHTML("Deltaq = <span>"..Binesh.ProgressNumber(N_Ring).."/"..Binesh.ProgressNumber(R).."</span>"..Binesh.ProgressNumber(_DeltaFi).." &#8658; Deltaq = "..Binesh.ProgressNumber(_Deltaq).." C")
			
			Binesh.AddToHTML("N = "..Binesh.ProgressNumber(N_Ring), "V")
			Binesh.AddToHTML("R = "..Binesh.ProgressNumber(R).." Ohm", "V")
			Binesh.AddToHTML("DeltaFi = "..Binesh.ProgressNumber(_DeltaFi).." Wb", "V")
			Binesh.AddToHTML("Deltaq = ?", "V")
		end
	end
	
	if N_Ring == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Õ·ﬁÂ") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1)) then
		if _Deltaq ~= nil and _DeltaFi ~= nil and R ~= nil then
			Binesh.CreateHTMLFile("Deltaq = <span>N/R</span>DeltaFi", "N = <span>RDeltaq/DeltaFi</span>")
			N_Ring = (_Deltaq*R)/_DeltaFi
			
			Binesh.AddToHTML("N = <span>"..Binesh.ProgressNumber(_Deltaq).."*"..Binesh.ProgressNumber(R).."/"..Binesh.ProgressNumber(_DeltaFi).."</span> &#8658; N = "..Binesh.ProgressNumber(N_Ring))
			
			Binesh.AddToHTML("Deltaq = "..Binesh.ProgressNumber(_Deltaq).." C", "V")
			Binesh.AddToHTML("R = "..Binesh.ProgressNumber(R).." Ohm", "V")
			Binesh.AddToHTML("DeltaFi = "..Binesh.ProgressNumber(_DeltaFi).." Wb", "V")
			Binesh.AddToHTML("N = ?", "V")
		end
	end
	
	if R == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1) then
		if ListBox.GetItemText("Words", ListBox.FindItem("Words", -1, LB_BYTEXT, "R")) == "R" then
			if N_Ring ~= nil and _DeltaFi ~= nil and _Deltaq ~= nil then
				Binesh.CreateHTMLFile("Deltaq = <span>N/R</span>DeltaFi", "R = <span>N/Deltaq</span>DeltaFi")
				R = (N_Ring/_Deltaq)*_DeltaFi
				
				Binesh.AddToHTML("R = <span>"..Binesh.ProgressNumber(N_Ring).."/"..Binesh.ProgressNumber(_Deltaq).."</span>"..Binesh.ProgressNumber(_DeltaFi).." &#8658; R = "..Binesh.ProgressNumber(R).." Ohm")
				
				Binesh.AddToHTML("N = "..Binesh.ProgressNumber(N_Ring), "V")
				Binesh.AddToHTML("Deltaq = "..Binesh.ProgressNumber(_Deltaq).." C", "V")
				Binesh.AddToHTML("DeltaFi = "..Binesh.ProgressNumber(_DeltaFi).." Wb", "V")
				Binesh.AddToHTML("R = ?", "V")
			end
		end
	end
	
	if _DeltaFi == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— ‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "‘«—  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaFi") ~= -1)) then
		if N_Ring ~= nil and _Deltaq ~= nil and R ~= nil then
			Binesh.CreateHTMLFile("Deltaq = <span>N/R</span>DeltaFi", "DeltaFi = <span>RDeltaq/N</span>")
			_DeltaFi = (_Deltaq*R)/N_Ring
			
			Binesh.AddToHTML("DeltaFi = <span>"..Binesh.ProgressNumber(_Deltaq).."*"..Binesh.ProgressNumber(R).."/"..Binesh.ProgressNumber(N_Ring).."</span> &#8658; DeltaFi = "..Binesh.ProgressNumber(_DeltaFi).." Wb")
			
			Binesh.AddToHTML("Deltaq = "..Binesh.ProgressNumber(_Deltaq).." C", "V")
			Binesh.AddToHTML("R = "..Binesh.ProgressNumber(R).." Ohm", "V")
			Binesh.AddToHTML("N = "..Binesh.ProgressNumber(N_Ring), "V")
			Binesh.AddToHTML("DeltaFi = ?", "V")
		end
	end
end