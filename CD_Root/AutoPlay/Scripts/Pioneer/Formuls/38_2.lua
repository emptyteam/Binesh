function Binesh.F38_2()
	if _x1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "x1") ~= -1)) then
		if _V2_Speed ~= nil and _Deltat ~= nil and _V1_Speed ~= nil and _x2 ~= nil then
			Binesh.CreateHTMLFile("Deltax = <span>V<sub>1</sub>+V<sub>2</sub>/2</span>Deltat", "x<sub>1</sub> = x<sub>2</sub>- <span>V<sub>1</sub>+V<sub>2</sub>/2</span>Deltat")
			_x1 = ((-(_V1_Speed+_V2_Speed)/2)*_Deltat)+_x2
			
			Binesh.AddToHTML("x<sub>1</sub> = "..Binesh.ProgressNumber(_x2).."- <span>"..Binesh.ProgressNumber(_V1_Speed).."+"..Binesh.ProgressNumber(_V2_Speed).."/2</span>*"..Binesh.ProgressNumber(_Deltat).." &#8658; x<sub>1</sub> = "..Binesh.ProgressNumber(_x1).." m")
			
			Binesh.AddToHTML("x<sun>2</sub> = "..Binesh.ProgressNumber(_x2).." m", "V")
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s", "V")
			Binesh.AddToHTML("V<sun>2</sub> = "..Binesh.ProgressNumber(_V2_Speed).." m/s", "V")
			Binesh.AddToHTML("Deltat = "..Binesh.ProgressNumber(_Deltat).." s", "V")
			Binesh.AddToHTML("x<sun>1</sub> = ?", "V")
		end
	end
	
	if _x2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "x2") ~= -1)) then
		if _V2_Speed ~= nil and _Deltat ~= nil and _V1_Speed ~= nil and _x1 ~= nil then
			Binesh.CreateHTMLFile("Deltax = <span>V<sub>1</sub>+V<sub>2</sub>/2</span>Deltat", "x<sub>2</sub> = x<sub>1</sub>+ <span>V<sub>1</sub>+V<sub>2</sub>/2</span>Deltat")
			_x2 = (((_V1_Speed+_V2_Speed)/2)*_Deltat)+_x1
			
			Binesh.AddToHTML("x<sub>2</sub> = "..Binesh.ProgressNumber(_x1).."+ <span>"..Binesh.ProgressNumber(_V1_Speed).."+"..Binesh.ProgressNumber(_V2_Speed).."/2</span>*"..Binesh.ProgressNumber(_Deltat).." &#8658; x<sub>2</sub> = "..Binesh.ProgressNumber(_x2).." m")
			
			Binesh.AddToHTML("x<sun>1</sub> = "..Binesh.ProgressNumber(_x1).." m", "V")
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s", "V")
			Binesh.AddToHTML("V<sun>2</sub> = "..Binesh.ProgressNumber(_V2_Speed).." m/s", "V")
			Binesh.AddToHTML("Deltat = "..Binesh.ProgressNumber(_Deltat).." s", "V")
			Binesh.AddToHTML("x<sun>2</sub> = ?", "V")
		end
	end
end