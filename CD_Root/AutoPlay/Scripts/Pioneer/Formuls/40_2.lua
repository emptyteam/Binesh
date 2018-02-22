function Binesh.F40_2()
	if _x1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â «Ê·Ì‰") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "x1") ~= -1) then
		if V_Speed ~= nil and _V1_Speed ~= nil and a ~= nil and _x2 ~= nil then
			Binesh.CreateHTMLFile("V<sup>2</sup>-V<sub>1</sub><sup>2</sup> = 2a(x<sub>2</sub>-x<sub>1</sub>)", "x<sub>2</sub>-x<sub>1</sub> = <span>V<sup>2</sup>-V<sub>1</sub><sup>2</sup>/2a</span>")
			Binesh.AddToHTML("x<sub>1</sub> = x<sub>2</sub>- <span>V<sup>2</sup>-V<sub>1</sub><sup>2</sup>/2a</span>")
		  _x1 = _x2-(((V_Speed^2) - (_V1_Speed^2)) / (2*a))
		  
			Binesh.AddToHTML("x<sub>1</sub> = "..Binesh.ProgressNumber(_x2).."- <span>"..Binesh.ProgressNumber(V_Speed).."<sup>2</sup>-"..Binesh.ProgressNumber(_V1_Speed).."<sup>2</sup>/2*"..Binesh.ProgressNumber(a).."</span> &#8658; x<sub>1</sub> = "..Binesh.ProgressNumber(_x1).." m")
			
			Binesh.AddToHTML("x<sub>2</sub> = "..Binesh.ProgressNumber(_x2).." m", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Speed).." m/s", "V")
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s", "V")
			Binesh.AddToHTML("a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("x<sub>1</sub> = ?", "V")
		end
	end
	
	if _x2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â œÊ„Ì‰") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "x2") ~= -1) then
		if V_Speed ~= nil and _V1_Speed ~= nil and a ~= nil and _x1 ~= nil then
			Binesh.CreateHTMLFile("V<sup>2</sup>-V<sub>1</sub><sup>2</sup> = 2a(x<sub>2</sub>-x<sub>1</sub>)", "x<sub>2</sub>-x<sub>1</sub> = <span>V<sup>2</sup>-V<sub>1</sub><sup>2</sup>/2a</span>")
			Binesh.AddToHTML("x<sub>1</sub> = x<sub>2</sub>- <span>V<sup>2</sup>-V<sub>1</sub><sup>2</sup>/2a</span>")
		  _x2 = _x1+((V_Speed^2) - (_V1_Speed^2)) / (2*a)
		  
			Binesh.AddToHTML("x<sub>2</sub> = "..Binesh.ProgressNumber(_x1).."+ <span>"..Binesh.ProgressNumber(V_Speed).."<sup>2</sup>-"..Binesh.ProgressNumber(_V1_Speed).."<sup>2</sup>/2*"..Binesh.ProgressNumber(a).."</span> &#8658; x<sub>2</sub> = "..Binesh.ProgressNumber(_x2).." m")
			
			Binesh.AddToHTML("x<sub>1</sub> = "..Binesh.ProgressNumber(_x1).." m", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Speed).." m/s", "V")
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s", "V")
			Binesh.AddToHTML("a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("x<sub>2</sub> = ?", "V")
		end
	end
end