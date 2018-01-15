function Binesh.F136_1()
	--------------------------{DELTA}--------------------------
	if _Deltaq == nil then
		if _q1 ~= nil and _q2 ~= nil then
			Binesh.CreateHTMLqle("Deltaq = q<sub>2</sub>-q<sub>1</sub>")
			_Deltaq = _q2 - _q1
			Binesh.AddToHTML("Deltaq = ".._q2.."-".._q1.." &#8658; Deltaq = ".._Deltaq.." C")
		end
	end
	
	if _q1 == nil then
		if _Deltaq ~= nil and _q2 ~= nil then
			Binesh.CreateHTMLqle("Deltaq = q<sub>2</sub>-q<sub>1</sub>", "q<sub>1</sub> = q<sub>2</sub>-Deltaq")
			_q1 = _q2-_Deltaq
			Binesh.AddToHTML("q<sub>1</sub> = ".._q2.."-".._Deltaq.." &#8658; q<sub>1</sub> = ".._q1.." C")
		end
	end
	
	if _q2 == nil then
		if _Deltaq ~= nil and _q1 ~= nil then
			Binesh.CreateHTMLqle("Deltaq = q<sub>2</sub>-q<sub>1</sub>", "q<sub>2</sub> = Deltaq+q<sub>1</sub>")
			_q2 = _q1+_Deltaq
			Binesh.AddToHTML("q<sub>2</sub> = ".._Deltaq.."+".._q1.." &#8658; q<sub>2</sub> = ".._q2.." C")
		end
	end
	--------------------------END {DELTA}--------------------------
	if _Deltaq == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— –—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â  €ÌÌ—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltaq") ~= -1 then
		if N_Round ~= nil and _DeltaFi ~= nil and R ~= nil then
			Binesh.CreateHTMLFile("Deltaq = <span>N/R</span>DeltaFi")
			_Deltaq = (N_Round/R)*_DeltaFi
			
			Binesh.AddToHTML("Deltaq = <span>"..N_Round.."/"..R.."</span>".._DeltaFi.." &#8658; Deltaq = ".._Deltaq.." C")
			
			Binesh.AddToHTML("N: "..N_Round, "V")
			Binesh.AddToHTML("R: "..R.." Ohm", "V")
			Binesh.AddToHTML("DeltaFi: ".._DeltaFi.." Wb", "V")
			Binesh.AddToHTML("Deltaq: ?", "V")
		end
	end
	
	if N_Round == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Õ·ﬁÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1 then
		if _Deltaq ~= nil and _DeltaFi ~= nil and R ~= nil then
			Binesh.CreateHTMLFile("Deltaq = <span>N/R</span>DeltaFi", "N = <span>RDeltaq/DeltaFi</span>")
			N_Round = (_Deltaq*R)/_DeltaFi
			
			Binesh.AddToHTML("N = <span>".._Deltaq.."*"..R.."/".._DeltaFi.."</span> &#8658; N = "..N_Round.." C")
			
			Binesh.AddToHTML("Deltaq: ".._Deltaq.." C", "V")
			Binesh.AddToHTML("R: "..R.." Ohm", "V")
			Binesh.AddToHTML("DeltaFi: ".._DeltaFi.." Wb", "V")
			Binesh.AddToHTML("N: ?", "V")
		end
	end
	
	if R == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1 then
		if N_Round ~= nil and _DeltaFi ~= nil and _Deltaq ~= nil then
			Binesh.CreateHTMLFile("Deltaq = <span>N/R</span>DeltaFi", "R = <span>N/Deltaq</span>DeltaFi")
			R = (N_Round/_Deltaq)*_DeltaFi
			
			Binesh.AddToHTML("R = <span>"..N_Round.."/".._Deltaq.."</span>".._DeltaFi.." &#8658; R = "..R.." Ohm")
			
			Binesh.AddToHTML("N: "..N_Round, "V")
			Binesh.AddToHTML("Deltaq: ".._Deltaq.." C", "V")
			Binesh.AddToHTML("DeltaFi: ".._DeltaFi.." Wb", "V")
			Binesh.AddToHTML("R: ?", "V")
		end
	end
	
	if _DeltaFi == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— ‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "‘«—  €ÌÌ—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaFi") ~= -1 then
		if N_Round ~= nil and _Deltaq ~= nil and R ~= nil then
			Binesh.CreateHTMLFile("Deltaq = <span>N/R</span>DeltaFi", "DeltaFi = <span>RDeltaq/N</span>")
			_DeltaFi = (_Deltaq*R)/N_Round
			
			Binesh.AddToHTML("DeltaFi = <span>".._Deltaq.."*"..R.."/"..N_Round.."</span> &#8658; DeltaFi = ".._DeltaFi.." Wb")
			
			Binesh.AddToHTML("Deltaq: ".._Deltaq.." C", "V")
			Binesh.AddToHTML("R: "..R.." Ohm", "V")
			Binesh.AddToHTML("N: "..N_Round, "V")
			Binesh.AddToHTML("DeltaFi: ?", "V")
		end
	end
end