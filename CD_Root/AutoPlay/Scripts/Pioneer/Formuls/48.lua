function Binesh.F48()
	UP = ListBox.FindItem("Words", -1, LB_BYTEXT, "»«·«")
	DOWN = ListBox.FindItem("Words", -1, LB_BYTEXT, "Å«ÌÌ‰")
	if N == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1) then
		if a ~= nil and m ~= nil then
			if UP ~= -1 then
				Binesh.CreateHTMLFile("N = m(g+a)")
				N = m*(Zarib.g+a)
				
				Binesh.AddToHTML("m: "..m.." m", "V")
				Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>", "V")
				Binesh.AddToHTML("N: ?", "V")
				
				Binesh.AddToHTML("N = "..m.."*("..Zarib.g.."+"..a..") &#8658; N = "..N.." N")
			elseif DOWN ~= -1 then
				Binesh.CreateHTMLFile("N = m(g-a)")
				N = m*(Zarib.g-a)
				
				Binesh.AddToHTML("m: "..m.." m", "V")
				Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>", "V")
				Binesh.AddToHTML("N: ?", "V")
				
				Binesh.AddToHTML("N = "..m.."*("..Zarib.g.."+"..a..") &#8658; N = "..N.." N")
			end
		end
	end
	
	if m == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1) then
		if N ~= nil and a ~= nil then
			if UP ~= -1 then
				Binesh.CreateHTMLFile("N = m(g+a)", "m = <span>N/(g+a)</span>")
				m = N/(Zarib.g+a)
				
				Binesh.AddToHTML("N: "..N.." N", "V")
				Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>", "V")
				Binesh.AddToHTML("m: ?", "V")
				
				Binesh.AddToHTML("m = <span>N/("..Zarib.g.."+a)</span> &#8658; m = "..math.abs(m).." Kg")
			elseif DOWN ~= -1 then
				Binesh.CreateHTMLFile("N = m(g+a)", "m = -<span>N/(-g+a)</span>")
				m = -N/(-Zarib.g+a)
				
				Binesh.AddToHTML("N: "..N.." N", "V")
				Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>", "V")
				Binesh.AddToHTML("m: ?", "V")
				
				Binesh.AddToHTML("m = -<span>"..N.."/(-"..Zarib.g.."+"..a..")</span> &#8658; m = "..math.abs(m).." Kg")
			end
		end
	end
	
	if a == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "‘ «»") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "a") ~= -1) then
		if m ~= nil and N ~= nil then
			if UP ~= -1 then
				Binesh.CreateHTMLFile("N = m(g+a)", "a = -<span>(gm-N)/m</span>")
				a = -1*(Zarib.g*m-N)/m
				
				Binesh.AddToHTML("N: "..N.." N", "V")
				Binesh.AddToHTML("m: "..m.." m", "V")
				Binesh.AddToHTML("a: ?", "V")
				
				Binesh.AddToHTML("a = -<span>("..Zarib.g.."*"..m.."-"..N..")/"..m.."</span> &#8658; a = "..a.." m/s")
			elseif DOWN ~= -1 then
				Binesh.CreateHTMLFile("N = m(g+a)", "a = <span>(gm-N)/m</span>")
				a = (Zarib.g*m-N)/m
				
				Binesh.AddToHTML("N: "..N.." N", "V")
				Binesh.AddToHTML("m: "..m.." m", "V")
				Binesh.AddToHTML("a: ?", "V")
				
				Binesh.AddToHTML("a = <span>("..Zarib.g.."*"..m.."-"..N.."/"..m..")</span> &#8658; a = "..a.." m/s")
			end
		end
	end
end