function Binesh.F59()
	if P0 == nil then
		if P == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "›‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1) then
			if Ru ~= nil and h ~= nil then
				Binesh.CreateHTMLFile("P = Rugh")
				P = Ru*Zarib.g*h
				
				Binesh.AddToHTML("Ru: "..Ru.." g/m<sup>3</sup>", "V")
				Binesh.AddToHTML("h: "..h.." m", "V")
				Binesh.AddToHTML("P: ?", "V")
				
				Binesh.AddToHTML("P = "..Ru.."*"..Zarib.g.."*"..h.." &#8658; P = "..P.." Pa")
			end
		end
		
		if Ru == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "çê«·Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ru") ~= -1) then
			if P ~= nil and h ~= nil then
				Binesh.CreateHTMLFile("P = Rugh", "Ru = <span>P/gh</span>")
				Ru = P/(Zarib.g*h)
				
				Binesh.AddToHTML("P: "..P.." Pa", "V")
				Binesh.AddToHTML("h: "..h.." m", "V")
				Binesh.AddToHTML("Ru: ?", "V")
				
				Binesh.AddToHTML("Ru = <span>"..P.."/"..Zarib.g.."*"..h.."</span> &#8658; Ru = "..Ru.." g/m<sup>3</sup>")
			end
		end
		
		if h == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "«— ›«⁄") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "h") ~= -1) then
			if Ru ~= nil and P ~= nil then
				Binesh.CreateHTMLFile("P = Rugh", "h = <span>P/gRu</span>")
				h = P/(Zarib.g*Ru)
				
				Binesh.AddToHTML("P: "..P.." Pa", "V")
				Binesh.AddToHTML("Ru: "..Ru.." g/m<sup>3</sup>", "V")
				Binesh.AddToHTML("h: ?", "V")
				
				Binesh.AddToHTML("h = <span>"..P.."/"..Zarib.g.."*"..Ru.."</span> &#8658; h = "..h.." m")
			end
		end
	end
end