function Binesh.F38_3()
	if _t1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "���� �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "t1") ~= -1)) then
		if _V2_Speed ~= nil and _V1_Speed ~= nil and _Deltax ~= nil and _t2 ~= nil then
			Binesh.CreateHTMLFile("Deltax = <span>V<sub>1</sub>+V<sub>2</sub>/2</span>(t<sub>2</sub>-t<sub>1</sub>)", "t<sub>1</sub> = t<sub>2</sub>- <span>2Deltax/V<sub>1</sub>+V<sub>2</sub></span>")
			_t1 = (-2*_Deltax/(_V1_Speed+_V2_Speed))+_t2
			
			Binesh.AddToHTML("t<sub>1</sub> = "..Binesh.ProgressNumber(_t2).."- <span>2*"..Binesh.ProgressNumber(_Deltax).."/"..Binesh.ProgressNumber(_V1_Speed).."+"..Binesh.ProgressNumber(_V2_Speed).."</span> &#8658; t<sub>1</sub> = "..Binesh.ProgressNumber(_t1).." s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("t<sub>2</sub> = "..Binesh.ProgressNumber(_t2).." s", "V")
			Binesh.AddToHTML("V<sun>2</sub> = "..Binesh.ProgressNumber(_V2_Speed).." m/s", "V")
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s", "V")
			Binesh.AddToHTML("Deltax = "..Binesh.ProgressNumber(_Deltax).." m", "V")
			Binesh.AddToHTML("t<sub>1</sub> = ?", "V")
		end
	end
	
	if _t2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "���� �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "t2") ~= -1)) then
		if _V2_Speed ~= nil and _V1_Speed ~= nil and _Deltax ~= nil and _t1 ~= nil then
			Binesh.CreateHTMLFile("Deltax = <span>V<sub>1</sub>+V<sub>2</sub>/2</span>(t<sub>2</sub>-t<sub>1</sub>)", "t<sub>2</sub> = t<sub>1</sub>+ <span>2Deltax/V<sub>1</sub>+V<sub>2</sub></span>")
			_t2 = (2*_Deltax/(_V1_Speed+_V2_Speed))+_t1
			
			Binesh.AddToHTML("t<sub>2</sub> = "..Binesh.ProgressNumber(_t1).."+ <span>2*"..Binesh.ProgressNumber(_Deltax).."/"..Binesh.ProgressNumber(_V1_Speed).."+"..Binesh.ProgressNumber(_V2_Speed).."</span> &#8658; t<sub>2</sub> = "..Binesh.ProgressNumber(_t2).." s")
			
			Binesh.AddToHTML("t<sub>1</sub> = "..Binesh.ProgressNumber(_t1).." s", "V")
			Binesh.AddToHTML("V<sun>2</sub> = "..Binesh.ProgressNumber(_V2_Speed).." m/s", "V")
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s", "V")
			Binesh.AddToHTML("Deltax = "..Binesh.ProgressNumber(_Deltax).." m", "V")
			Binesh.AddToHTML("t<sub>1</sub> = ?", "V")
		end
	end
end