function Binesh.F39_1()
	if _Deltax == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— ›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "x") ~= -1)) then
		if a ~= nil and t ~= nil and _V1_Speed ~= nil then
			Binesh.CreateHTMLFile("Deltax = <span>1/2</span>at<sup>2</sup>+V<sub>1</sub>t")
			_Deltax = 0.5*a*t^2+_V1_Speed*t
			
			Binesh.AddToHTML("Deltax = <span>1/2</span>"..Binesh.ProgressNumber(a).."*"..Binesh.ProgressNumber(t).."<sup>2</sup>+"..Binesh.ProgressNumber(_V1_Speed).."*"..Binesh.ProgressNumber(t).." &#8658; Deltax = "..Binesh.ProgressNumber(_Deltax).." m")
			
			Binesh.AddToHTML("a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s", "V")
			Binesh.AddToHTML("Deltax = ?", "V")
		end
	end
	
	if a == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "‘ «»") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "a") ~= -1) then
		if _Deltax ~= nil and t ~= nil and _V1_Speed ~= nil then
			Binesh.CreateHTMLFile("Deltax = <span>1/2</span>at<sup>2</sup>+V<sub>1</sub>t", "a = <span>2(Deltax-V<sub>1</sub>t)/t<sup>2</sup></span>")
			a = 2*(_Deltax-(_V1_Speed*t))/(t^2)
			
			Binesh.AddToHTML("a = <span>2("..Binesh.ProgressNumber(_Deltax).."-"..Binesh.ProgressNumber(_V1_Speed).."*"..Binesh.ProgressNumber(t)..")/"..Binesh.ProgressNumber(t).."<sup>2</sup></span> &#8658; a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>")
			
			Binesh.AddToHTML("Deltax = "..Binesh.ProgressNumber(_Deltax).." m", "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s", "V")
			Binesh.AddToHTML("a = ?", "V")
		end
	end
	
	if t == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1) then
		if _Deltax ~= nil and a ~= nil and _V1_Speed ~= nil then
			Binesh.CreateHTMLFile("x = <span>1/2</span>at<sup>2</sup>+V<sub>1</sub>t", "t = - <span>V<sub>1</sub>sqrt(V<sub>1</sub><sup>2</sup>+2aDeltax<sub>0</sub>)/a</span>")
			t = (-1*_V1_Speed+(_V1_Speed^2+2*a*_Deltax)^(1/2))/a
			
			Binesh.AddToHTML("t = - <span>"..Binesh.ProgressNumber(_V1_Speed).."*sqrt("..Binesh.ProgressNumber(_V1_Speed).."<sup>2</sup>+2*"..Binesh.ProgressNumber(a).."*"..Binesh.ProgressNumber(_Deltax)..")/"..Binesh.ProgressNumber(a).."</span> &#8658; t = "..Binesh.ProgressNumber(Math.Abs(t)).." s")
			
			Binesh.AddToHTML("Deltax = "..Binesh.ProgressNumber(_Deltax).." m", "V")
			Binesh.AddToHTML("a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s", "V")
			Binesh.AddToHTML("t = ?", "V")
		end
	end
	
	if _V1_Speed == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V0") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1)) then
		if _Deltax ~= nil and t ~= nil and a ~= nil then
			Binesh.CreateHTMLFile("x = <span>1/2</span>at<sup>2</sup>+V<sub>1</sub>t", "V<sub>1</sub> = <span>Deltax-(0.5at<sup>2</sup>)/t</span>")
			_V1_Speed = (_Deltax-(0.5*a*t^2))/t
			
			Binesh.AddToHTML("V<sub>1</sub> = <span>"..Binesh.ProgressNumber(_Deltax).."-(0.5*"..Binesh.ProgressNumber(a).."*"..Binesh.ProgressNumber(t)..")<sup>2</sup>/"..Binesh.ProgressNumber(t).."</span> &#8658; V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s")
			
			Binesh.AddToHTML("Deltax = "..Binesh.ProgressNumber(_Deltax).." m", "V")
			Binesh.AddToHTML("a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("V<sub>1</sub> = ?", "V")
		end
	end
end