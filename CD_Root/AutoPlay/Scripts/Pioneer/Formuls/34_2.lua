function Binesh.F34_2()
	if __V1_Speed == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  «Ê·Ì‰") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "V0") ~= -1) then 
		if a ~= nil and _Deltat ~= nil and __V2_Speed ~= nil then
			Binesh.CreateHTMLFile("a = <span>(V<sub>2</sub>-V<sub>1</sub>)/Deltat</span>", "V<sub>1</sub> = V<sub>2</sub>-aDeltat")
			__V1_Speed = __V2_Speed+(-a*_Deltat)
			
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(__V2_Speed).."-"..Binesh.ProgressNumber(a).."*"..Binesh.ProgressNumber(_Deltat).." &#8658; V<sub>1</sub> = "..Binesh.ProgressNumber(__V1_Speed).." m/s")
			
			Binesh.AddToHTML("V<sub>2</sub> = "..Binesh.ProgressNumber(__V2_Speed).." m/s", "V")
			Binesh.AddToHTML("a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("Deltat = "..Binesh.ProgressNumber(_Deltat).." s", "V")
			Binesh.AddToHTML("V<sub>1</sub> = ?", "V")
		end
	end
	
	if __V2_Speed == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  œÊ„Ì‰") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then 
		if a ~= nil and _Deltat ~= nil and __V1_Speed ~= nil then
			Binesh.CreateHTMLFile("a = <span>(V<sub>2</sub>-V<sub>1</sub>)/Deltat</span>", "V<sub>2</sub> = V<sub>1</sub>+aDeltat")
			__V2_Speed = __V1_Speed+a*_Deltat
			
			Binesh.AddToHTML("V<sub>2</sub> = "..Binesh.ProgressNumber(__V1_Speed).."+"..Binesh.ProgressNumber(a).."*"..Binesh.ProgressNumber(_Deltat).." &#8658; V<sub>2</sub> = "..Binesh.ProgressNumber(__V2_Speed).." m/s")
			
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(__V1_Speed).." m/s", "V")
			Binesh.AddToHTML("a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("Deltat = "..Binesh.ProgressNumber(_Deltat).." s", "V")
			Binesh.AddToHTML("V<sub>2</sub> = ?", "V")
		end
	end
end