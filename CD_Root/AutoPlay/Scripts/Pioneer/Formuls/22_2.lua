function Binesh.F22_2()
	if isLens == true then
		if m_Zoom == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "»“—ê ‰„«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1) then
			if ApBp ~= nil and AB ~= nil then
				Binesh.CreateHTMLFile("m = <span>A`B`/AB</span>")
				m_Zoom = ApBp/AB
				
				Binesh.AddToHTML("m = <span>"..Binesh.ProgressNumber(ApBp).."/"..Binesh.ProgressNumber(AB).."<span> &#8658; m = "..Binesh.ProgressNumber(m_Zoom))
			
				Binesh.AddToHTML("A`B` = "..Binesh.ProgressNumber(ApBp).." m", "V")
				Binesh.AddToHTML("AB = "..Binesh.ProgressNumber(AB).." m", "V")
				Binesh.AddToHTML("m = ?", "V")
			end
		end
		
		if ApBp == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "”«ÌÂ ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "A`B`") ~= -1) then
			if m_Zoom ~= nil and AB ~= nil then
				Binesh.CreateHTMLFile("m = <span>A`B`/AB</span>", "A`B` = m*AB")
				ApBp = m_Zoom*AB
				
				Binesh.AddToHTML("A`B` = "..Binesh.ProgressNumber(m_Zoom).."*"..Binesh.ProgressNumber(AB).." &#8658; A`B` = "..Binesh.ProgressNumber(ApBp).." m")
				
				Binesh.AddToHTML("m = "..Binesh.ProgressNumber(m_Zoom), "V")
				Binesh.AddToHTML("AB = "..Binesh.ProgressNumber(AB).." m", "V")
				Binesh.AddToHTML("A`B` = ?", "V")
			end
		end
		
		if AB == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã”„ ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "AB") ~= -1) then
			if ApBp ~= nil and m_Zoom ~= nil then
				Binesh.CreateHTMLFile("m = <span>A`B`/AB</span>", "AB = <span>A`B`/m</span>")
				AB = ApBp/m_Zoom
				
				Binesh.AddToHTML("AB = <span>"..Binesh.ProgressNumber(ApBp).."/"..Binesh.ProgressNumber(m_Zoom).."<span> &#8658; AB = "..Binesh.ProgressNumber(AB).." m")
				
				Binesh.AddToHTML("m = "..Binesh.ProgressNumber(m_Zoom), "V")
				Binesh.AddToHTML("A`B` = "..Binesh.ProgressNumber(ApBp).." m", "V")
				Binesh.AddToHTML("AB = ?", "V")
			end
		end
	end
end