function Binesh.F77_2_2()
	if _T1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "��� �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T1") ~= -1)) then
		if n ~= nil and W ~= nil and _T2 ~= nil then
			Binesh.CreateHTMLFile("W = nR(T<sub>2</sub>-T<sub>1</sub>)", "T<sub>2</sub>-T<sub>1</sub> = <span>W/nR</span>")
			Binesh.AddToHTML("T<sub>1</sub> = T<sub>2</sub>- <span>W/nR</span> &#8658; ")
			_T1 = _T2+(-W/(n*Zarib.R))
			Binesh.AddToHTML("T<sub>1</sub> = ".._T2.."- <span>"..W.."/"..n.."*"..Zarib.R.."</span> &#8658; T<sub>1</sub> = ".._T1.."<sup>o</sup>K")
			
			Binesh.AddToHTML("T<sub>2</sub>: ".._T2.."<sup>o</sup>K", "V")
			Binesh.AddToHTML("W: "..W.." J", "V")
			Binesh.AddToHTML("n: "..n.." mol", "V")
			Binesh.AddToHTML("T<sub>1</sub>: ?", "V")
		end
	end
	
	if _T2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "��� �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta2") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T2") ~= -1)) then
		if n ~= nil and W ~= nil and _T1 ~= nil then
			Binesh.CreateHTMLFile("W = nR(T<sub>2</sub>-T<sub>1</sub>)", "T<sub>2</sub>-T<sub>1</sub> = <span>W/nR</span>")
			Binesh.AddToHTML("T<sub>2</sub> = T<sub>1</sub>+ <span>W/nR</span> &#8658; ")
			_T2 = _T1+(W/(n*Zarib.R))
			Binesh.AddToHTML("T<sub>2</sub> = ".._T1.."+ <span>"..W.."/"..n.."*"..Zarib.R.."</span> &#8658; T<sub>2</sub> = ".._T2.."<sup>o</sup>K")
			
			Binesh.AddToHTML("T<sub>1</sub>: ".._T1.."<sup>o</sup>K", "V")
			Binesh.AddToHTML("W: "..W.." J", "V")
			Binesh.AddToHTML("n: "..n.." mol", "V")
			Binesh.AddToHTML("T<sub>2</sub>: ?", "V")
		end
	end
end