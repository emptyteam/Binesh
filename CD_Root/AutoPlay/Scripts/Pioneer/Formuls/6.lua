function Binesh.F6()
	if t_Min ~= nil and t == nil then
		t = t_Min*60
		Binesh.AddToHTML("t = 60t<sub>Min</sub>", "t = 60*"..t_Min.." &#8658; t = "..t.." s")
	end
	
	if t_Hour ~= nil and t == nil then
		t = t_Hour*3600
		Binesh.AddToHTML("t = 3600t<sub>Hour</sub>", "t = 3600*"..t_Hour.." &#8658; t = "..t.." s")
	end
	
	if t_Day ~= nil and t == nil then
		t = t_Day*86400
		Binesh.AddToHTML("t = 86400<sub>Day</sub>", "t = 86400*"..t_Day.." &#8658; t = "..t.." s")
	end
	
	if I == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1) then
		if q ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("I = <span>q/t</span>")
			I = (q)/(t)
			
			Binesh.AddToHTML("I = <span>"..Binesh.ProgressNumber(q).."/"..Binesh.ProgressNumber(t).."</span> &#8658; I = "..Binesh.ProgressNumber(I).." A")
			
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("q = "..Binesh.ProgressNumber(q).." C", "V")
			Binesh.AddToHTML("I = ?", "V")
		end
	end
	
	if q == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1) then
		if I ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("I = <span>q/t</span>", "q = It")
			q = (I)*(t)
			
			Binesh.AddToHTML("q = "..Binesh.ProgressNumber(I).."*"..Binesh.ProgressNumber(t).." &#8658; q = "..Binesh.ProgressNumber(q).." C")
			
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("q = ?", "V")
		end
	end
	
	if t == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1) then
		if q ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("I = <span>q/t</span>", "t = <span>q/I</span>")
			t = (q)/(I)
			
			Binesh.AddToHTML("t = <span>"..Binesh.ProgressNumber(q).."/"..Binesh.ProgressNumber(I).."</span> &#8658; t = "..Binesh.ProgressNumber(t).." s")
			
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("q = "..Binesh.ProgressNumber(q).." C", "V")
			Binesh.AddToHTML("t = ?", "V")
		end
	end
end