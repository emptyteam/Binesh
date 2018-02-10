function Binesh.F136_1()
	--------------------------{DELTA}--------------------------
	if _Deltaq == nil then
		if _q1 ~= nil and _q2 ~= nil then
			Binesh.CreateHTMLqle("Deltaq = q<sub>2</sub>-q<sub>1</sub>")
			_Deltaq = _q2 - _q1
			Binesh.AddToHTML("Deltaq = "..Binesh.Convert_e(_q2).."-"..Binesh.Convert_e(_q1).." &#8658; Deltaq = "..Binesh.Convert_e(_Deltaq).." C")
		end
	end
	
	if _q1 == nil then
		if _Deltaq ~= nil and _q2 ~= nil then
			Binesh.CreateHTMLqle("Deltaq = q<sub>2</sub>-q<sub>1</sub>", "q<sub>1</sub> = q<sub>2</sub>-Deltaq")
			_q1 = _q2-_Deltaq
			Binesh.AddToHTML("q<sub>1</sub> = "..Binesh.Convert_e(_q2).."-"..Binesh.Convert_e(_Deltaq).." &#8658; q<sub>1</sub> = "..Binesh.Convert_e(_q1).." C")
		end
	end
	
	if _q2 == nil then
		if _Deltaq ~= nil and _q1 ~= nil then
			Binesh.CreateHTMLqle("Deltaq = q<sub>2</sub>-q<sub>1</sub>", "q<sub>2</sub> = Deltaq+q<sub>1</sub>")
			_q2 = _q1+_Deltaq
			Binesh.AddToHTML("q<sub>2</sub> = "..Binesh.Convert_e(_Deltaq).."+"..Binesh.Convert_e(_q1).." &#8658; q<sub>2</sub> = "..Binesh.Convert_e(_q2).." C")
		end
	end
	--------------------------END {DELTA}--------------------------
	if _Deltaq == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— –—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltaq") ~= -1)) then
		if N_Round ~= nil and _DeltaFi ~= nil and R ~= nil then
			Binesh.CreateHTMLFile("Deltaq = <span>N/R</span>DeltaFi")
			_Deltaq = (N_Round/R)*_DeltaFi
			
			Binesh.AddToHTML("Deltaq = <span>"..Binesh.Convert_e(N_Round).."/"..Binesh.Convert_e(R).."</span>"..Binesh.Convert_e(_DeltaFi).." &#8658; Deltaq = "..Binesh.Convert_e(_Deltaq).." C")
			
			Binesh.AddToHTML("N: "..Binesh.Convert_e(N_Round), "V")
			Binesh.AddToHTML("R: "..Binesh.Convert_e(R).." Ohm", "V")
			Binesh.AddToHTML("DeltaFi: "..Binesh.Convert_e(_DeltaFi).." Wb", "V")
			Binesh.AddToHTML("Deltaq: ?", "V")
		end
	end
	
	if N_Round == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Õ·ﬁÂ") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1)) then
		if _Deltaq ~= nil and _DeltaFi ~= nil and R ~= nil then
			Binesh.CreateHTMLFile("Deltaq = <span>N/R</span>DeltaFi", "N = <span>RDeltaq/DeltaFi</span>")
			N_Round = (_Deltaq*R)/_DeltaFi
			
			Binesh.AddToHTML("N = <span>"..Binesh.Convert_e(_Deltaq).."*"..Binesh.Convert_e(R).."/"..Binesh.Convert_e(_DeltaFi).."</span> &#8658; N = "..Binesh.Convert_e(N_Round))
			
			Binesh.AddToHTML("Deltaq: "..Binesh.Convert_e(_Deltaq).." C", "V")
			Binesh.AddToHTML("R: "..Binesh.Convert_e(R).." Ohm", "V")
			Binesh.AddToHTML("DeltaFi: "..Binesh.Convert_e(_DeltaFi).." Wb", "V")
			Binesh.AddToHTML("N: ?", "V")
		end
	end
	
	if R == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1) then
		if N_Round ~= nil and _DeltaFi ~= nil and _Deltaq ~= nil then
			Binesh.CreateHTMLFile("Deltaq = <span>N/R</span>DeltaFi", "R = <span>N/Deltaq</span>DeltaFi")
			R = (N_Round/_Deltaq)*_DeltaFi
			
			Binesh.AddToHTML("R = <span>"..Binesh.Convert_e(N_Round).."/"..Binesh.Convert_e(_Deltaq).."</span>"..Binesh.Convert_e(_DeltaFi).." &#8658; R = "..Binesh.Convert_e(R).." Ohm")
			
			Binesh.AddToHTML("N: "..Binesh.Convert_e(N_Round), "V")
			Binesh.AddToHTML("Deltaq: "..Binesh.Convert_e(_Deltaq).." C", "V")
			Binesh.AddToHTML("DeltaFi: "..Binesh.Convert_e(_DeltaFi).." Wb", "V")
			Binesh.AddToHTML("R: ?", "V")
		end
	end
	
	if _DeltaFi == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— ‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "‘«—  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaFi") ~= -1)) then
		if N_Round ~= nil and _Deltaq ~= nil and R ~= nil then
			Binesh.CreateHTMLFile("Deltaq = <span>N/R</span>DeltaFi", "DeltaFi = <span>RDeltaq/N</span>")
			_DeltaFi = (_Deltaq*R)/N_Round
			
			Binesh.AddToHTML("DeltaFi = <span>"..Binesh.Convert_e(_Deltaq).."*"..Binesh.Convert_e(R).."/"..Binesh.Convert_e(N_Round).."</span> &#8658; DeltaFi = "..Binesh.Convert_e(_DeltaFi).." Wb")
			
			Binesh.AddToHTML("Deltaq: "..Binesh.Convert_e(_Deltaq).." C", "V")
			Binesh.AddToHTML("R: "..Binesh.Convert_e(R).." Ohm", "V")
			Binesh.AddToHTML("N: "..Binesh.Convert_e(N_Round), "V")
			Binesh.AddToHTML("DeltaFi: ?", "V")
		end
	end
end