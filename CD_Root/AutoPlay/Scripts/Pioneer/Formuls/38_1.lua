function Binesh.F38_1()
	if _Deltat == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— “„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltat") ~= -1)) then
		if _V2_Speed ~= nil and _V1_Speed ~= nil and _Deltax ~= nil then
			Binesh.CreateHTMLFile("Deltax = <span>V<sub>1</sub>+V<sub>2</sub>/2</span> Deltat", "Deltat = <span>2Deltax/V<sub>1</sub>+V<sub>2</sub></span>")
			_Deltat = 2*_Deltax/(_V1_Speed+_V2_Speed)
			
			Binesh.AddToHTML("Deltat = <span>2*"..Binesh.ProgressNumber(_Deltax).."/"..Binesh.ProgressNumber(_V1_Speed).."+"..Binesh.ProgressNumber(_V2_Speed).."</span> &#8658; Deltat = "..Binesh.ProgressNumber(_Deltat).." s")
			
			Binesh.AddToHTML("Deltax = "..Binesh.ProgressNumber(_Deltax).." m", "V")
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s", "V")
			Binesh.AddToHTML("V<sun>2</sub> = "..Binesh.ProgressNumber(_V2_Speed).." m/s", "V")
			Binesh.AddToHTML("Deltat = ?", "V")
		end
	end
	
	if _V1_Speed == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1)) then
		if _V2_Speed ~= nil and _Deltat ~= nil and _Deltax ~= nil then
			Binesh.CreateHTMLFile("Deltax = <span>V<sub>1</sub>+V<sub>2</sub>/2</span> Deltat", "V<sub>1</sub> = <span>2Deltax-V<sub>2</sub>Deltat/Deltat</span>")
			_V1_Speed = ((_Deltax*2)-(_V2_Speed*_Deltat))/_Deltat
			
			Binesh.AddToHTML("V<sub>1</sub> = <span>2*"..Binesh.ProgressNumber(_Deltax).."-"..Binesh.ProgressNumber(_V2_Speed).."*"..Binesh.ProgressNumber(_Deltat).."/"..Binesh.ProgressNumber(_Deltat).."</span> &#8658; V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s")
			
			Binesh.AddToHTML("Deltax = "..Binesh.ProgressNumber(_Deltax).." m", "V")
			Binesh.AddToHTML("V<sun>2</sub> = "..Binesh.ProgressNumber(_V2_Speed).." m/s", "V")
			Binesh.AddToHTML("Deltat = "..Binesh.ProgressNumber(_Deltat).." s", "V")
			Binesh.AddToHTML("V<sub>1</sub> = ?", "V")
		end
	end
	
	if _V2_Speed == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V2") ~= -1)) then
		if _V1_Speed ~= nil and _Deltat ~= nil and _Deltax ~= nil then
			Binesh.CreateHTMLFile("Deltax = <span>V<sub>1</sub>+V<sub>2</sub>/2</span> Deltat", "V<sub>2</sub> = <span>2Deltax-V<sub>1</sub>Deltat/Deltat</span>")
			_V2_Speed = ((_Deltax*2)-(_V1_Speed*_Deltat))/_Deltat
			
			Binesh.AddToHTML("V<sub>2</sub> = <span>2*"..Binesh.ProgressNumber(_Deltax).."-"..Binesh.ProgressNumber(_V1_Speed).."*"..Binesh.ProgressNumber(_Deltat).."/"..Binesh.ProgressNumber(_Deltat).."</span> &#8658; V<sub>2</sub> = "..Binesh.ProgressNumber(_V2_Speed).." m/s")
			
			Binesh.AddToHTML("Deltax = "..Binesh.ProgressNumber(_Deltax).." m", "V")
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s", "V")
			Binesh.AddToHTML("Deltat = "..Binesh.ProgressNumber(_Deltat).." s", "V")
			Binesh.AddToHTML("V<sun>2</sub> = ?", "V")
		end
	end
	
	if _Deltax == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— ›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltax") ~= -1)) then
		if _V2_Speed ~= nil and _Deltat ~= nil and _V1_Speed ~= nil then
			Binesh.CreateHTMLFile("Deltax = <span>V<sub>1</sub>+V<sub>2</sub>/2</span> Deltat")
			_Deltax = ((_V1_Speed+_V2_Speed)/2)*_Deltat
			
			Binesh.AddToHTML("Deltax = <span>"..Binesh.ProgressNumber(_V1_Speed).."+"..Binesh.ProgressNumber(_V2_Speed).."/2</span>*"..Binesh.ProgressNumber(_Deltat).." &#8658; Deltax = "..Binesh.ProgressNumber(_Deltax).." m")
			
			Binesh.AddToHTML("V<sun>2</sub> = "..Binesh.ProgressNumber(_V2_Speed).." m/s", "V")
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s", "V")
			Binesh.AddToHTML("Deltat = "..Binesh.ProgressNumber(_Deltat).." s", "V")
			Binesh.AddToHTML("Deltax = ?", "V")
		end
	end
end