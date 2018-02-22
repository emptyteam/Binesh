function Binesh.F86()
	if F == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1) then
		if q1 ~= nil and q2 ~= nil and r ~= nil then
			F = 9*10^9 * (Math.Abs(q1)* Math.Abs(q2) / (r^2))
			
			Binesh.CreateHTMLFile("F = k<span>|q<sub>1</sub>||q<sub>2</sub>|/r<sup>2</sup></span>")
			Binesh.AddToHTML("F = 9*10<sup>9</sup>*<span>"..Binesh.ProgressNumber(Math.Abs(q1)).."*"..Binesh.ProgressNumber(Math.Abs(q2)).."/"..Binesh.ProgressNumber(r).."<sup>2</sup></span> &#8658; F = "..Binesh.ProgressNumber(F).." N")
			
			Binesh.AddToHTML("q<sub>1</sub> = "..Binesh.ProgressNumber(q1).." C", "V")
			Binesh.AddToHTML("q<sub>2</sub> = "..Binesh.ProgressNumber(q2).." C", "V")
			Binesh.AddToHTML("r = "..Binesh.ProgressNumber(r).." m", "V")
			Binesh.AddToHTML("F = ?", "V")
		end
	end
	
	if q1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "��� �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "q1") ~= -1)) then
		if F ~= nil and q2 ~= nil and r ~= nil then
			q1 = F*r^2/(9*10^9*Math.Abs(q2))
			
			Binesh.CreateHTMLFile("F = k<span>|q<sub>1</sub>||q<sub>2</sub>|/r<sup>2</sup></span>", "|q<sub>1</sub>| = <span>Fr<sup>2</sup>/k|q<sub>2</sub>|</span>")
			Binesh.AddToHTML("|q<sub>1</sub>| = <span>"..Binesh.ProgressNumber(F).."*"..Binesh.ProgressNumber(r).."<sup>2</sup>/9*10<sup>9</sup>*"..Binesh.ProgressNumber(Math.Abs(q2)).."</span> &#8658; q<sub>1</sub> = "..Binesh.ProgressNumber(Math.Abs(q1)).." C")
			
			Binesh.AddToHTML("F = "..Binesh.ProgressNumber(F).." N", "V")
			Binesh.AddToHTML("q<sub>2</sub> = "..Binesh.ProgressNumber(q2).." C", "V")
			Binesh.AddToHTML("r = "..Binesh.ProgressNumber(r).." m", "V")
			Binesh.AddToHTML("q<sub>1</sub> = ?", "V")
		end
	end
	
	if q2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "��� �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "q2") ~= -1)) then
		if F ~= nil and r ~= nil and q1 ~= nil then
			q2 = F*r^2/(9*10^9*Math.Abs(q1))
			
			Binesh.CreateHTMLFile("F = k<span>|q<sub>1</sub>||q<sub>2</sub>|/r<sup>2</sup></span>", "|q<sub>2</sub>| = <span>Fr<sup>2</sup>/k|q<sub>1</sub>|</span>")
			Binesh.AddToHTML("|q<sub>2</sub>| = <span>"..Binesh.ProgressNumber(F).."*"..Binesh.ProgressNumber(r).."<sup>2</sup>/9*10<sup>9</sup>*"..Binesh.ProgressNumber(Math.Abs(q1)).."</span> &#8658; q<sub>2</sub> = "..Binesh.ProgressNumber(Math.Abs(q2)).." C")
			
			Binesh.AddToHTML("F = "..Binesh.ProgressNumber(F).." N", "V")
			Binesh.AddToHTML("q<sub>1</sub> = "..Binesh.ProgressNumber(q1).." C", "V")
			Binesh.AddToHTML("r = "..Binesh.ProgressNumber(r).." m", "V")
			Binesh.AddToHTML("q<sub>2</sub> = ?", "V")
		end
	end
	
	if r == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "r") ~= -1) then
		if q1 ~= nil and q2 ~= nil and F ~= nil then
			r = Math.Sqrt(9*10^9*Math.Abs(q1)*Math.Abs(q2)/F)
			
			Binesh.CreateHTMLFile("F = k<span>|q<sub>1</sub>||q<sub>2</sub>|/r<sup>2</sup></span>", "r = Sqrt(<span>k|q<sub>1</sub>||q<sub>2</sub>|/F</span>)")
			Binesh.AddToHTML("r = Sqrt(<span>9*10<sup>9</sup>*"..Binesh.ProgressNumber(Math.Abs(q1)).."*"..Binesh.ProgressNumber(Math.Abs(q2)).."/"..Binesh.ProgressNumber(F).."</span>) &#8658; r = "..Binesh.ProgressNumber(r).." m")
			
			Binesh.AddToHTML("F = "..Binesh.ProgressNumber(F).." N", "V")
			Binesh.AddToHTML("q<sub>1</sub> = "..Binesh.ProgressNumber(q1).." C", "V")
			Binesh.AddToHTML("q<sub>2</sub> = "..Binesh.ProgressNumber(q2).." C", "V")
			Binesh.AddToHTML("r = ?", "V")
		end
	end
end