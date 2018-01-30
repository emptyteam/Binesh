function Binesh.F79_2_2()
	if _P1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ›‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "›‘«— «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "P1") ~= -1)) then
		if Q ~= nil and V ~= nil and CV ~= nil and _P2 ~= nil then
			Binesh.CreateHTMLFile("Q = <span>C<sub>V</sub>/R</span>V(P<sub>2</sub>-P<sub>1</sub>)", "P<sub>2</sub>-P<sub>1</sub> = <span>QR/C<sub>V</sub>V</span>")
			Binesh.AddToHTML("P<sub>1</sub> = P<sub>2</sub>- <span>QR/C<sub>V</sub>V</span>")
			_P1 = _P2+(-(Q*Zarib.R)/(CV*V))
			
			Binesh.AddToHTML("P<sub>2</sub>: ".._P2.." Pa", "V")
			Binesh.AddToHTML("Q: "..Q.." J", "V")
			Binesh.AddToHTML("C<sub>V</sub>: "..CV.." J/mol.K", "V")
			Binesh.AddToHTML("V: "..V.." m<sup>3</sup>", "V")
			Binesh.AddToHTML("P<sub>1</sub>: ?", "V")
			
			Binesh.AddToHTML("P<sub>1</sub> = ".._P2.."- <span>"..Q.."*"..Zarib.R.."/"..CV.."*"..V.."</span> &#8658; P<sub>1</sub> = ".._P1.." Pa")
		end
	end
	
	if _P2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ›‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "›‘«— œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "P2") ~= -1)) then
		if Q ~= nil and V ~= nil and CV ~= nil and _P1 ~= nil then
			Binesh.CreateHTMLFile("Q = <span>C<sub>V</sub>/R</span>V(P<sub>2</sub>-P<sub>1</sub>)", "P<sub>2</sub>-P<sub>1</sub> = <span>QR/C<sub>V</sub>V</span>")
			Binesh.AddToHTML("P<sub>2</sub> = P<sub>1</sub>+ <span>QR/C<sub>V</sub>V</span>")
			_P2 = _P1+(Q*Zarib.R)/(CV*V)
			
			Binesh.AddToHTML("P<sub>1</sub>: ".._P1.." Pa", "V")
			Binesh.AddToHTML("Q: "..Q.." J", "V")
			Binesh.AddToHTML("C<sub>V</sub>: "..CV.." J/mol.K", "V")
			Binesh.AddToHTML("V: "..V.." m<sup>3</sup>", "V")
			Binesh.AddToHTML("P<sub>2</sub>: ?", "V")
			
			Binesh.AddToHTML("P<sub>2</sub> = ".._P1.."+ <span>"..Q.."*"..Zarib.R.."/"..CV.."*"..V.."</span> &#8658; P<sub>2</sub> = ".._P2.." Pa")
		end
	end
end