function Binesh.F21()
	if isLens == true then
		if f == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "⁄œ”Ì ›«’·Â ò«‰Ê‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "f") ~= -1) then
			if q_Lens ~= nil and p_Lens ~= nil then
				Binesh.CreateHTMLFile("<span>1/f</span> = <span>1/p+1/q</span>", "f = <span>qp/q+p</span>")
				f = q_Lens*p_Lens/q_Lens+p_Lens
				
				Binesh.AddToHTML("f = <span>"..Binesh.ProgressNumber(q_Lens).."*"..Binesh.ProgressNumber(p_Lens).."/"..Binesh.ProgressNumber(q_Lens).."+"..Binesh.ProgressNumber(p_Lens).."</span> &#8658; f = "..Binesh.ProgressNumber(f).."m")
				
				Binesh.AddToHTML("p = "..Binesh.ProgressNumber(p_Lens).." m", "V")
				Binesh.AddToHTML("q = "..Binesh.ProgressNumber(q_Lens).." m", "V")
				Binesh.AddToHTML("f = ?", "V")
			end
		end
		
		if q_Lens == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â  ’ÊÌ—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1) then
			if p_Lens ~= nil and f ~= nil then
				Binesh.CreateHTMLFile("<span>1/f</span> = <span>1/p+1/q</span>", "<span>1/q</span> = <span>1/f</span>-<span>1/p</span>")
				Binesh.AddToHTML("q = <span>fp/f-p</span> &#8658; ")
				q_Lens = f*p_Lens/(f-p_Lens)
				
				Binesh.AddToHTML("q = <span>"..Binesh.ProgressNumber(f).."*"..Binesh.ProgressNumber(p_Lens).."/"..Binesh.ProgressNumber(f).."-"..Binesh.ProgressNumber(p_Lens).."</span> &#8658; q = "..Binesh.ProgressNumber(q_Lens).."m")
				
				Binesh.AddToHTML("p = "..Binesh.ProgressNumber(p_Lens).." m", "V")
				Binesh.AddToHTML("f = "..Binesh.ProgressNumber(f).." m", "V")
				Binesh.AddToHTML("q = ?", "V")
			end
		end
		
		if p_Lens == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â Ã”„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "p") ~= -1) then
			if q_Lens ~= nil and f ~= nil then
				Binesh.CreateHTMLFile("<span>1/f</span> = <span>1/p+1/q</span>", "<span>1/p</span> = <span>1/f</span>-<span>1/q</span>")
				Binesh.AddToHTML("p = <span>fq/f-q</span> &#8658; ")
				p_Lens = f*q_Lens/f-q_Lens
				
				Binesh.AddToHTML("p = <span>"..Binesh.ProgressNumber(f).."*"..Binesh.ProgressNumber(q_Lens).."/"..Binesh.ProgressNumber(f).."-"..Binesh.ProgressNumber(q_Lens).."</span> &#8658; p = "..Binesh.ProgressNumber(p_Lens).."m")
				
				Binesh.AddToHTML("f = "..Binesh.ProgressNumber(f).." m", "V")
				Binesh.AddToHTML("q = "..Binesh.ProgressNumber(q_Lens).." m", "V")
				Binesh.AddToHTML("p = ?", "V")
			end
		end
	end -- isLens
end