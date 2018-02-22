function Binesh.F48()
	UP = ListBox.FindItem("Words", -1, LB_BYTEXT, "»«·«")
	DOWN = ListBox.FindItem("Words", -1, LB_BYTEXT, "Å«ÌÌ‰")
	if N == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1) then
		if a ~= nil and m ~= nil then
			if UP ~= -1 then
				Binesh.CreateHTMLFile("N = m(g+a)")
				N = m*(Settings.Zarib.g+a)
				
				Binesh.AddToHTML("m = "..Binesh.ProgressNumber(m).." m", "V")
				Binesh.AddToHTML("a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>", "V")
				Binesh.AddToHTML("N = ?", "V")
				
				Binesh.AddToHTML("N = "..Binesh.ProgressNumber(m).."*("..Binesh.ProgressNumber(Settings.Zarib.g).."+"..Binesh.ProgressNumber(a)..") &#8658; N = "..Binesh.ProgressNumber(N).." N")
			elseif DOWN ~= -1 then
				Binesh.CreateHTMLFile("N = m(g-a)")
				N = m*(Settings.Zarib.g-a)
				
				Binesh.AddToHTML("m = "..Binesh.ProgressNumber(m).." m", "V")
				Binesh.AddToHTML("a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>", "V")
				Binesh.AddToHTML("N = ?", "V")
				
				Binesh.AddToHTML("N = "..Binesh.ProgressNumber(m).."*("..Binesh.ProgressNumber(Settings.Zarib.g).."+"..Binesh.ProgressNumber(a)..") &#8658; N = "..Binesh.ProgressNumber(N).." N")
			end
		end
	end
	
	if m == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1) then
		if N ~= nil and a ~= nil then
			if UP ~= -1 then
				Binesh.CreateHTMLFile("N = m(g+a)", "m = <span>N/(g+a)</span>")
				m = N/(Settings.Zarib.g+a)
				
				Binesh.AddToHTML("N = "..Binesh.ProgressNumber(N).." N", "V")
				Binesh.AddToHTML("a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>", "V")
				Binesh.AddToHTML("m = ?", "V")
				
				Binesh.AddToHTML("m = <span>N/("..Binesh.ProgressNumber(Settings.Zarib.g).."+a)</span> &#8658; m = "..Binesh.ProgressNumber(math.abs(m)).." Kg")
			elseif DOWN ~= -1 then
				Binesh.CreateHTMLFile("N = m(g+a)", "m = -<span>N/(-g+a)</span>")
				m = -N/(-Settings.Zarib.g+a)
				
				Binesh.AddToHTML("N = "..Binesh.ProgressNumber(N).." N", "V")
				Binesh.AddToHTML("a = "..Binesh.ProgressNumber(a).." m/s<sup>2</sup>", "V")
				Binesh.AddToHTML("m = ?", "V")
				
				Binesh.AddToHTML("m = -<span>"..Binesh.ProgressNumber(N).."/(-"..Binesh.ProgressNumber(Settings.Zarib.g).."+"..Binesh.ProgressNumber(a)..")</span> &#8658; m = "..Binesh.ProgressNumber(math.abs(m)).." Kg")
			end
		end
	end
	
	if a == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "‘ «»") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "a") ~= -1) then
		if m ~= nil and N ~= nil then
			if UP ~= -1 then
				Binesh.CreateHTMLFile("N = m(g+a)", "a = -<span>(gm-N)/m</span>")
				a = -1*(Settings.Zarib.g*m-N)/m
				
				Binesh.AddToHTML("N = "..Binesh.ProgressNumber(N).." N", "V")
				Binesh.AddToHTML("m = "..Binesh.ProgressNumber(m).." m", "V")
				Binesh.AddToHTML("a = ?", "V")
				
				Binesh.AddToHTML("a = -<span>("..Binesh.ProgressNumber(Settings.Zarib.g).."*"..Binesh.ProgressNumber(m).."-"..Binesh.ProgressNumber(N)..")/"..Binesh.ProgressNumber(m).."</span> &#8658; a = "..Binesh.ProgressNumber(a).." m/s")
			elseif DOWN ~= -1 then
				Binesh.CreateHTMLFile("N = m(g+a)", "a = <span>(gm-N)/m</span>")
				a = (Settings.Zarib.g*m-N)/m
				
				Binesh.AddToHTML("N = "..Binesh.ProgressNumber(N).." N", "V")
				Binesh.AddToHTML("m = "..Binesh.ProgressNumber(m).." m", "V")
				Binesh.AddToHTML("a = ?", "V")
				
				Binesh.AddToHTML("a = <span>("..Binesh.ProgressNumber(Settings.Zarib.g).."*"..Binesh.ProgressNumber(m).."-"..Binesh.ProgressNumber(N).."/"..Binesh.ProgressNumber(m)..")</span> &#8658; a = "..Binesh.ProgressNumber(a).." m/s")
			end
		end
	end
end