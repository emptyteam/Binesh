function Binesh.F40_1()
	if V_Speed == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1)) then 
		if _V1_Speed ~= nil and a ~= nil and _Deltax ~= nil then
			Binesh.CreateHTMLFile("V<sup>2</sup>-V<sub>1</sub><sup>2</sup> = 2aDeltax", "V = Sqrt(2aDeltax+V<sub>1</sub><sup>2</sup>)")
			V_Speed = Math.Sqrt(2*a*_Deltax+_V1_Speed^2);
			
			Binesh.AddToHTML("V = sqrt(2*"..Binesh.ProgressNumber(a).."*"..Binesh.ProgressNumber(_Deltax).."+"..Binesh.ProgressNumber(_V1_Speed).."<sup>2</sup>) &#8658; V = "..Binesh.ProgressNumber(V_Speed).." m/s")
			
			Binesh.AddToHTML("a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("Deltax = "..Binesh.ProgressNumber(_Deltax).." m", "V")
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s", "V")
			Binesh.AddToHTML("V = ?", "V")
		end
	end
	
	if _V1_Speed == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V0") ~= -1)) then 
		if V_Speed ~= nil and a ~= nil and _Deltax ~= nil then
			Binesh.CreateHTMLFile("V<sup>2</sup>-V<sub>1</sub><sup>2</sup> = 2aDeltax", "V<sub>1</sub> = Sqrt(V<sup>2</sup>-2aDeltax)")
			_V1_Speed = Math.Sqrt(V_Speed^2-(2*a*_Deltax));
			
			Binesh.AddToHTML("V<sub>1</sub> = sqrt("..Binesh.ProgressNumber(V_Speed).."<sup>2</sup>-2*"..Binesh.ProgressNumber(a).."*"..Binesh.ProgressNumber(_Deltax)..") &#8658; V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s")
			
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Speed).." m/s", "V")
			Binesh.AddToHTML("a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("Deltax = "..Binesh.ProgressNumber(_Deltax).." m", "V")
			Binesh.AddToHTML("V<sub>1</sub> = ?", "V")
		end
	end
	
	if a == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "‘ «»") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "a") ~= -1) then
		if V_Speed ~= nil and _V1_Speed ~= nil and _Deltax ~= nil then
			Binesh.CreateHTMLFile("V<sup>2</sup>-V<sub>1</sub><sup>2</sup> = 2aDeltax", "a = <span>V<sup>2</sup>-V<sub>1</sub><sup>2</sup>/2Deltax</span>")
			a = ((V_Speed^2)-(_V1_Speed^2))/(2*_Deltax)
			
			Binesh.AddToHTML("a = <span>"..Binesh.ProgressNumber(V_Speed).."<sup>2</sup>-"..Binesh.ProgressNumber(_V1_Speed).."<sup>2</sup>/2*"..Binesh.ProgressNumber(_Deltax).."</span> &#8658; a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>")
			
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Speed).." m/s", "V")
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s", "V")
			Binesh.AddToHTML("Deltax = "..Binesh.ProgressNumber(_Deltax).." m", "V")
			Binesh.AddToHTML("a = ?", "V")
		end
	end
	
	if _Deltax == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— ›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltax") ~= -1)) then
		if V_Speed ~= nil and _V1_Speed ~= nil and a ~= nil then
			Binesh.CreateHTMLFile("V<sup>2</sup>-V<sub>1</sub><sup>2</sup> = 2aDeltax", "Deltax = <span>V<sup>2</sup>-V<sub>1</sub><sup>2</sup>/2a</span>")
			_Deltax = ((V_Speed^2) - (_V1_Speed^2)) / (2*a)
		  
			Binesh.AddToHTML("Deltax = <span>"..Binesh.ProgressNumber(V_Speed).."<sup>2</sup>-"..Binesh.ProgressNumber(_V1_Speed).."<sup>2</sup>/2*"..Binesh.ProgressNumber(a).."</span> &#8658; Deltax = "..Binesh.ProgressNumber(_Deltax).." m")
			
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Speed).." m/s", "V")
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s", "V")
			Binesh.AddToHTML("a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("Deltax = ?", "V")
		end
	end
end