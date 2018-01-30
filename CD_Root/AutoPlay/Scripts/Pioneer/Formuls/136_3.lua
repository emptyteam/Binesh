function Binesh.F136_3()
	if _Fi1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "‘«— «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Fi1") ~= -1)) then
		if N_Round ~= nil and _Deltaq ~= nil and R ~= nil and _Fi2 ~= nil then
			Binesh.CreateHTMLFile("Deltaq = <span>N/R</span>Fi<sub>2</sub>-Fi<sub>1</sub>", "Fi<sub>2</sub>-Fi<sub>1</sub> = <span>RDeltaq/N</span>")
			Binesh.AddToHTML("Fi<sub>1</sub> = Fi<sub>2</sub>- <span>RDeltaq/N</span> &#8658; ")
			
			_Fi1 = _Fi2-(_Deltaq*R)/N_Round
			
			Binesh.AddToHTML("Fi<sub>1</sub> = ".._Fi2.."- <span>".._Deltaq.."*"..R.."/"..N_Round.."</span> &#8658; Fi<sub>1</sub> = ".._Fi1.." Wb")
			
			Binesh.AddToHTML("Fi<sub>2</sub>: ".._Fi2.." Wb", "V")
			Binesh.AddToHTML("Deltaq: ".._Deltaq.." C", "V")
			Binesh.AddToHTML("R: "..R.." Ohm", "V")
			Binesh.AddToHTML("N: "..N_Round, "V")
			Binesh.AddToHTML("Fi<sub>1</sub>: ?", "V")
		end
	end
	
	if _Fi2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "‘«— œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Fi2") ~= -1)) then
		if N_Round ~= nil and _Deltaq ~= nil and R ~= nil and _Fi1 ~= nil then
			Binesh.CreateHTMLFile("Deltaq = <span>N/R</span>Fi<sub>2</sub>-Fi<sub>1</sub>", "Fi<sub>2</sub>-Fi<sub>1</sub> = <span>RDeltaq/N</span>")
			Binesh.AddToHTML("Fi<sub>2</sub> = Fi<sub>1</sub>+ <span>RDeltaq/N</span> &#8658; ")
			
			_Fi2 = _Fi1+(_Deltaq*R)/N_Round
			
			Binesh.AddToHTML("Fi<sub>2</sub> = ".._Fi1.."+ <span>".._Deltaq.."*"..R.."/"..N_Round.."</span> &#8658; Fi<sub>2</sub> = ".._Fi2.." Wb")
			
			Binesh.AddToHTML("Fi<sub>1</sub>: ".._Fi1.." Wb", "V")
			Binesh.AddToHTML("Deltaq: ".._Deltaq.." C", "V")
			Binesh.AddToHTML("R: "..R.." Ohm", "V")
			Binesh.AddToHTML("N: "..N_Round, "V")
			Binesh.AddToHTML("Fi<sub>2</sub>: ?", "V")
		end
	end
end