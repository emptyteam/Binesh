function Binesh.F39_2()
	if x == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "x") ~= -1)) then
		if a ~= nil and t ~= nil and _V1_Speed ~= nil and x0 ~= nil then
			Binesh.CreateHTMLFile("x = <span>1/2</span>at<sup>2</sup>+V<sub>1</sub>t+x<sub>0</sub>")
			x = 0.5*a*t^2+_V1_Speed*t+x0
			x2, _x2 = x, x
			Binesh.AddToHTML("x = <span>1/2</span>"..Binesh.ProgressNumber(a).."*"..Binesh.ProgressNumber(t).."<sup>2</sup>+"..Binesh.ProgressNumber(_V1_Speed).."*"..Binesh.ProgressNumber(t).."+"..Binesh.ProgressNumber(x0).." &#8658; x = "..Binesh.ProgressNumber(x).." m")
			
			Binesh.AddToHTML("a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s", "V")
			Binesh.AddToHTML("x<sub>0</sub> = "..Binesh.ProgressNumber(x0).." m", "V")
			Binesh.AddToHTML("x = ?", "V")
		end
	end
	
	if x0 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "x0") ~= -1)) then
		if a ~= nil and t ~= nil and _V1_Speed ~= nil and x ~= nil then
			Binesh.CreateHTMLFile("x = <span>1/2</span>at<sup>2</sup>+V<sub>1</sub>t+x<sub>0</sub>", "x<sub>0</sub> = x- <span>1/2</span>at<sup>2</sup>-V<sub>1</sub>t")
			x0 = x-(0.5*a*t^2)-(_V1_Speed*t)
			x1, _x1 = x0, x0
			Binesh.AddToHTML("x<sub>0</sub> = "..Binesh.ProgressNumber(x).."- <span>1/2</span>"..Binesh.ProgressNumber(a).."*"..Binesh.ProgressNumber(t).."<sup>2</sup>-"..Binesh.ProgressNumber(_V1_Speed).."*"..Binesh.ProgressNumber(t).." &#8658; x<sub>0</sub> = "..Binesh.ProgressNumber(x0).." m")
			
			Binesh.AddToHTML("x = "..Binesh.ProgressNumber(x).." m", "V")
			Binesh.AddToHTML("a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s", "V")
			Binesh.AddToHTML("x<sub>0</sub> = ?", "V")
		end
	end
end