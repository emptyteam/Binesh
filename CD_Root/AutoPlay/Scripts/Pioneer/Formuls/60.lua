function Binesh.F60()
	if P == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "›‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1 then
		if Ru ~= nil and P0 ~= nil and h ~= nil then
			Binesh.CreateHTMLFile("P = P<sub>0</sub>+(Rugh)")
			P = P0 + (Ru*Zarib.g*h)
			
			Binesh.AddToHTML("P<sub>0</sub>: "..P0.." Pa", "V")
			Binesh.AddToHTML("Ru: "..Ru.." g/m<sup>3</sup>", "V")
			Binesh.AddToHTML("h: "..h.." m", "V")
			Binesh.AddToHTML("P: ?", "V")
			
			Binesh.AddToHTML("P = "..P0.."+("..Ru.."*"..Zarib.g.."*"..h..") &#8658; P = "..P.." Pa")
		end
	end
	
	if P0 == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "«ÿ—«› „«Ì⁄ ›‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P0") ~= -1 then
		if P ~= nil and Ru ~= nil and h ~= nil then
			Binesh.CreateHTMLFile("P = P<sub>0</sub>+(Rugh)", "P<sub>0</sub> = P-Rugh")
			P0 = P-Ru*Zarib.g*h
			
			Binesh.AddToHTML("P: "..P.." Pa", "V")
			Binesh.AddToHTML("Ru: "..Ru.." g/m<sup>3</sup>", "V")
			Binesh.AddToHTML("h: "..h.." m", "V")
			Binesh.AddToHTML("P<sub>0</sub>: ?", "V")
			
			Binesh.AddToHTML("P<sub>0</sub> = "..P.."-"..Ru.."*"..Zarib.g.."*"..h.." &#8658; P<sub>0</sub> = "..P0.." Pa")
		end
	end
	
	if Ru == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "çê«·Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ru") ~= -1 then
		if P ~= nil and P0 ~= nil and h ~= nil then
			Binesh.CreateHTMLFile("P = P<sub>0</sub>+(Rugh)", "Ru = <span>P-P<sub>0</sub>/gh</span>")
			Ru = P-P0/Zarib.g*h
			
			Binesh.AddToHTML("P: "..P.." Pa", "V")
			Binesh.AddToHTML("P<sub>0</sub>: "..P0.." Pa", "V")
			Binesh.AddToHTML("h: "..h.." m", "V")
			Binesh.AddToHTML("Ru: ?", "V")
			
			Binesh.AddToHTML("Ru = <span>"..P.."-"..P0.."/"..Zarib.g.."*"..h.."</span> &#8658; Ru = "..Ru.." g/m<sup>3</sup>")
		end
	end
	
	if h == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "«— ›«⁄") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "h") ~= -1 then
		if P ~= nil and P0 ~= nil and Ru ~= nil then
			Binesh.CreateHTMLFile("P = P<sub>0</sub>+(Rugh)", "h = <span>P-P<sub>0</sub>/Rug</span>")
			h = P-P0/Ru*Zarib.g
			
			Binesh.AddToHTML("P: "..P.." Pa", "V")
			Binesh.AddToHTML("P<sub>0</sub>: "..P0.." Pa", "V")
			Binesh.AddToHTML("Ru: "..Ru.." g/m<sup>3</sup>", "V")
			Binesh.AddToHTML("h: ?", "V")
			
			Binesh.AddToHTML("h = <span>"..P.."-"..P0.."/"..Ru.."*"..Zarib.g.."</span> &#8658; h = "..h.." m")
		end
	end
end