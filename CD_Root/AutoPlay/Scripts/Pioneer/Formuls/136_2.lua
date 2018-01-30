function Binesh.F136_2()
	if _q1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ –—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "q1") ~= -1)) then
		if N_Round ~= nil and _DeltaFi ~= nil and R ~= nil and _q2 ~= nil then
			Binesh.CreateHTMLFile("q<sub>2</sub>-q<sub>1</sub> = <span>N/R</span>DeltaFi", "q<sub>1</sub> = q<sub>2</sub>- <span>N/R</span>DeltaFi")
			_q1 = _q2-(N_Round/R)*_DeltaFi
			
			Binesh.AddToHTML("q<sub>1</sub> = ".._q2.."- <span>"..N_Round.."/"..R.."</span>".._DeltaFi.." &#8658; q<sub>1</sub> = ".._q1.." C")
			
			Binesh.AddToHTML("q<sub>2</sub>: ".._q2.." C", "V")
			Binesh.AddToHTML("N: "..N_Round, "V")
			Binesh.AddToHTML("R: "..R.." Ohm", "V")
			Binesh.AddToHTML("DeltaFi: ".._DeltaFi.." Wb", "V")
			Binesh.AddToHTML("q<sub>1</sub>: ?", "V")
		end
	end
	
	if _q2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ –—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "q2") ~= -1)) then
		if N_Round ~= nil and _DeltaFi ~= nil and R ~= nil and _q1 ~= nil then
			Binesh.CreateHTMLFile("q<sub>2</sub>-q<sub>1</sub> = <span>N/R</span>DeltaFi", "q<sub>2</sub> = q<sub>1</sub>+ <span>N/R</span>DeltaFi")
			_q2 = _q1+(N_Round/R)*_DeltaFi
			
			Binesh.AddToHTML("q<sub>2</sub> = ".._q1.."+ <span>"..N_Round.."/"..R.."</span>".._DeltaFi.." &#8658; q<sub>2</sub> = ".._q2.." C")
			
			Binesh.AddToHTML("q<sub>1</sub>: ".._q1.." C", "V")
			Binesh.AddToHTML("N: "..N_Round, "V")
			Binesh.AddToHTML("R: "..R.." Ohm", "V")
			Binesh.AddToHTML("DeltaFi: ".._DeltaFi.." Wb", "V")
			Binesh.AddToHTML("q<sub>2</sub>: ?", "V")
		end
	end
end