function Binesh.F77_1_2()
	if _V1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "��� �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1)) then 
		if Beta ~= nil and _Teta ~= nil and _V2 ~= nil then
			Binesh.CreateHTMLFile("W = -P(V<sub>2</sub>-V<sub>1</sub>)", "V<sub>2</sub>-V<sub>1</sub> = <span>-W/P</span>")
			Binesh.AddToHTML("V<sub>1</sub> = V<sub>2</sub>+ <span>W/P</span> &#8658; ")
			_V1 = _V2+(W/P)
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V2).."+ <span>"..Binesh.ProgressNumber(W).."/"..Binesh.ProgressNumber(P).." &#8658; V<sub>1</sub> = "..Binesh.ProgressNumber(math.abs(_V1)).." m<sup>3</sup>")
			
			Binesh.AddToHTML("V<sub>2</sub> = "..Binesh.ProgressNumber(_V2).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(W).." J", "V")
			Binesh.AddToHTML("P = "..Binesh.ProgressNumber(P).." Pa", "V")
			Binesh.AddToHTML("V<sub>1</sub> = ?", "V")
		end
	end
	
	if _V2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "��� �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1)) then 
		if Beta ~= nil and _Teta ~= nil and _V1 ~= nil then
			Binesh.CreateHTMLFile("W = -P(V<sub>2</sub>-V<sub>1</sub>)", "V<sub>2</sub>-V<sub>1</sub> = <span>-W/P</span>")
			Binesh.AddToHTML("V<sub>2</sub> = V<sub>2</sub>- <span>W/P</span> &#8658; ")
			_V2 = _V1+(-W/P)
			Binesh.AddToHTML("V<sub>2</sub> = "..Binesh.ProgressNumber(_V1).."- <span>"..Binesh.ProgressNumber(W).."/"..Binesh.ProgressNumber(P).." &#8658; V<sub>2</sub> = "..Binesh.ProgressNumber(math.abs(_V2)).." m<sup>3</sup>")
			
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(W).." J", "V")
			Binesh.AddToHTML("P = "..Binesh.ProgressNumber(P).." Pa", "V")
			Binesh.AddToHTML("V<sub>2</sub> = ?", "V")
		end
	end
end