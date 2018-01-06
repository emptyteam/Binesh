function Binesh.F141()
	if Teta == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Alpha") ~= -1 then
		if T_141 ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("Teta = <span>2Pi/T</span>t")
			
			Teta = 2*Zarib.Pi*t/T_141
			
			Binesh.AddToHTML("Teta = <span>2*"..Zarib.Pi.."/"..T_141.."</span>*"..t.." &#8658; Teta = "..Teta)
			
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("T: "..T_141, "V")
			Binesh.AddToHTML("Teta: ?", "V")
		end
	end
	
	if T_141 == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ—«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T") ~= -1 then
		if Teta ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("Teta = <span>2Pi/T<span>t", "T = <span>2Pi/Teta</span>t")
			
			T_141 = 2*Zarib.Pi*t/Math.Rad(Teta)
			
			Binesh.AddToHTML("T = <span>2*"..Zarib.Pi.."/"..Teta.."</span>*"..t.." &#8658; T = "..T_141)
			
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("T: ?", "V")
		end
	end
	
	if t == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1 then
		if Teta ~= nil and T_141 ~= nil then
			Binesh.CreateHTMLFile("Teta = <span>2Pi/T<span>*t", "t = <span>Teta/2Pi</span>T")
			
			t = Math.Rad(Teta)*T_141/(2*Zarib.Pi)
			
			Binesh.AddToHTML("t = <span>"..Teta.."/2*"..Zarib.Pi.."</span>*"..T_141.." &#8658; t = "..t.." s")
			
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("T: "..T_141, "V")
			Binesh.AddToHTML("t: ?", "V")
		end
	end
end