function Binesh.F12()
	if f == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ������") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "f") ~= -1) then
		if q_Glass ~= nil and p_Glass ~= nil then
			Binesh.CreateHTMLFile("<span>1/f</span> = <span>1/p</span> + <span>1/q</span>", "f = <span>pq/q+p</span>")
			f = p_Glass*q_Glass/(q_Glass+p_Glass)
			
			Binesh.AddToHTML("f = <span>"..Binesh.ProgressNumber(p_Glass).."*"..Binesh.ProgressNumber(q_Glass).."/"..Binesh.ProgressNumber(q_Glass).."+"..Binesh.ProgressNumber(p_Glass).."</span> &#8658; f = "..Binesh.ProgressNumber(f).." m")
			
			Binesh.AddToHTML("p = "..Binesh.ProgressNumber(p_Glass).." m", "V")
			Binesh.AddToHTML("q = "..Binesh.ProgressNumber(q_Glass).." m", "V")
			Binesh.AddToHTML("f = ?", "V")
			if Binesh.F13_1 ~= nil and Binesh.F13_2 ~= nil then
				Binesh.F13_1()
				Binesh.F13_2()
			end
		end
	end
	
	if q_Glass == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1) then
		if p_Glass ~= nil and f ~= nil then
			Binesh.CreateHTMLFile("<span>1/f</span> = <span>1/p</span> + <span>1/q</span>", "<span>1/q</span> = <span>1/f</span> - <span>1/p</span> &#8658; q = <span>pf/p-f</span>")
			q_Glass = p_Glass*f/(p_Glass-f)
			
			Binesh.AddToHTML("q = <span>"..Binesh.ProgressNumber(p_Glass).."*"..Binesh.ProgressNumber(f).."/"..Binesh.ProgressNumber(p_Glass).."-"..Binesh.ProgressNumber(f).."</span> &#8658; q = "..Binesh.ProgressNumber(q_Glass).." m")
			
			Binesh.AddToHTML("p = "..Binesh.ProgressNumber(p_Glass).." m", "V")
			Binesh.AddToHTML("f = "..Binesh.ProgressNumber(f).." m", "V")
			Binesh.AddToHTML("q = ?", "V")
			if Binesh.F13_1 ~= nil and Binesh.F13_2 ~= nil then
				Binesh.F13_1()
				Binesh.F13_2()
			end
		end
	end
	
	if p_Glass == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "p") ~= -1) then
		if q_Glass ~= nil and f ~= nil then
			Binesh.CreateHTMLFile("<span>1/f</span> = <span>1/p</span> + <span>1/q</span>", "<span>1/p</span> = <span>1/f</span> - <span>1/q</span> &#8658; p = <span>qf/q-f</span>")
			p_Glass = q_Glass*f/(q_Glass-f)
			
			Binesh.AddToHTML("p = <span>"..Binesh.ProgressNumber(q_Glass).."*"..Binesh.ProgressNumber(f).."/"..Binesh.ProgressNumber(q_Glass).."-"..Binesh.ProgressNumber(f).."</span> &#8658; p = "..Binesh.ProgressNumber(p_Glass).." m")
			
			Binesh.AddToHTML("q = "..Binesh.ProgressNumber(q_Glass).." m", "V")
			Binesh.AddToHTML("f = "..Binesh.ProgressNumber(f).." m", "V")
			Binesh.AddToHTML("p = ?", "V")
			if Binesh.F13_1 ~= nil and Binesh.F13_2 ~= nil then
				Binesh.F13_1()
				Binesh.F13_2()
			end
		end
	end
end