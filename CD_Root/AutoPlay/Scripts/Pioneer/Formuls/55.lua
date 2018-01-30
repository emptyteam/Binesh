function Binesh.F55()
	if P_Power_Bar == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, " Ê«‰ „ Ê”ÿ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "PBar") ~= -1) then
		if W ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("P = <span>W/t</span>")
			P_Power_Bar = W/t
			
			Binesh.AddToHTML("P = <span>"..W.."/"..t.."</span> &#8658; P = "..P_Power_Bar.." W")
			
			Binesh.AddToHTML("W: "..W.." J", "V")
			Binesh.AddToHTML("t: "..t.." ", "V")
			Binesh.AddToHTML("P: ?", "V")
		end
	end
	
	if W == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ò«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1) then
		if P_Power_Bar ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("P = <span>W/t</span>", "W = Pt")
			W = P_Power_Bar*t
			
			Binesh.AddToHTML("W = "..P_Power_Bar.."*"..t.." &#8658; W = "..W.." J")
			
			Binesh.AddToHTML("P: "..P.." Pa", "V")
			Binesh.AddToHTML("t: "..t.." ", "V")
			Binesh.AddToHTML("W: ?", "V")
		end
	end
	
	if t == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1) then
		if P_Power_Bar ~= nil and W ~= nil then
			Binesh.CreateHTMLFile("P = <span>W/t</span>", "t = <span>W/P</span>")
			t = W/P_Power_Bar
			
			Binesh.AddToHTML("t = <span>"..W.."/"..P_Power_Bar.."</span> &#8658; t = "..t.." s")
			
			Binesh.AddToHTML("P: "..P.." Pa", "V")
			Binesh.AddToHTML("W: "..W.." J", "V")
			Binesh.AddToHTML("t: ?", "V")
		end
	end
end