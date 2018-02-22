function Binesh.F50()
	if W == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "˜ÇÑ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1) then
		if h ~= nil and m ~= nil then
			Binesh.CreateHTMLFile("W<sub>mg</sub> = m*g*h")
			W = m*Settings.Zarib.g*h
			
			Binesh.AddToHTML("W<sub>mg</sub> = "..Binesh.ProgressNumber(m).."*"..Binesh.ProgressNumber(Settings.Zarib.g).."*"..Binesh.ProgressNumber(h).." &#8658; W<sub>mg</sub> = "..Binesh.ProgressNumber(W).." J")
			
			Binesh.AddToHTML("h = "..Binesh.ProgressNumber(h).." m", "V")
			Binesh.AddToHTML("m = "..Binesh.ProgressNumber(m).." Kg", "V")
			Binesh.AddToHTML("W = ?", "V")
		end
	end
	
	if h == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÇÑÊÝÇÚ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "h") ~= -1) then
		if W ~= nil and m ~= nil then
			Binesh.CreateHTMLFile("W<sub>mg</sub> = m*g*h", "h = <span>W<sub>mg</sub>/m*g</span>")
			h = W/m*Settings.Zarib.g
			
			Binesh.AddToHTML("h = <span>"..Binesh.ProgressNumber(W).."/"..Binesh.ProgressNumber(m).."*"..Binesh.ProgressNumber(Settings.Zarib.g).."</span> &#8658; h = "..Binesh.ProgressNumber(h).." m")
			
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(W).." J", "V")
			Binesh.AddToHTML("m = "..Binesh.ProgressNumber(m).." Kg", "V")
			Binesh.AddToHTML("h = ?", "V")
		end
	end
	
	if m == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÌÑã") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1) then
		if W ~= nil and h ~= nil then
			Binesh.CreateHTMLFile("W<sub>mg</sub> = m*g*h", "m = <span>W<sub>mg</sub>/h*g</span>")
			m = W/h*Settings.Zarib.g
			
			Binesh.AddToHTML("m = <span>"..Binesh.ProgressNumber(W).."/"..Binesh.ProgressNumber(h).."*"..Binesh.ProgressNumber(Settings.Zarib.g).."</span> &#8658; m = "..Binesh.ProgressNumber(math.abs(m)).." Kg")
			
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(W).." J", "V")
			Binesh.AddToHTML("h = "..Binesh.ProgressNumber(h).." m", "V")
			Binesh.AddToHTML("m = ?", "V")
		end
	end
end