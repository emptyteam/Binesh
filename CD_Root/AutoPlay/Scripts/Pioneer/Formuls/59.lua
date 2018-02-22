function Binesh.F59()
	if P0 == nil then
		if P == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "›‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1) then
			if Ru ~= nil and h ~= nil then
				Binesh.CreateHTMLFile("P = Rugh")
				P = Ru*Settings.Zarib.g*h
				
				Binesh.AddToHTML("Ru = "..Binesh.ProgressNumber(Ru).." g/m<sup>3</sup>", "V")
				Binesh.AddToHTML("h = "..Binesh.ProgressNumber(h).." m", "V")
				Binesh.AddToHTML("P = ?", "V")
				
				Binesh.AddToHTML("P = "..Binesh.ProgressNumber(Ru).."*"..Binesh.ProgressNumber(Settings.Zarib.g).."*"..Binesh.ProgressNumber(h).." &#8658; P = "..Binesh.ProgressNumber(P).." Pa")
			end
		end
		
		if Ru == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "çê«·Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ru") ~= -1) then
			if P ~= nil and h ~= nil then
				Binesh.CreateHTMLFile("P = Rugh", "Ru = <span>P/gh</span>")
				Ru = P/(Settings.Zarib.g*h)
				
				Binesh.AddToHTML("P = "..Binesh.ProgressNumber(P).." Pa", "V")
				Binesh.AddToHTML("h = "..Binesh.ProgressNumber(h).." m", "V")
				Binesh.AddToHTML("Ru = ?", "V")
				
				Binesh.AddToHTML("Ru = <span>"..Binesh.ProgressNumber(P).."/"..Binesh.ProgressNumber(Settings.Zarib.g).."*"..Binesh.ProgressNumber(h).."</span> &#8658; Ru = "..Binesh.ProgressNumber(Ru).." g/m<sup>3</sup>")
			end
		end
		
		if h == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "«— ›«⁄") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "h") ~= -1) then
			if Ru ~= nil and P ~= nil then
				Binesh.CreateHTMLFile("P = Rugh", "h = <span>P/gRu</span>")
				h = P/(Settings.Zarib.g*Ru)
				
				Binesh.AddToHTML("P = "..Binesh.ProgressNumber(P).." Pa", "V")
				Binesh.AddToHTML("Ru = "..Binesh.ProgressNumber(Ru).." g/m<sup>3</sup>", "V")
				Binesh.AddToHTML("h = ?", "V")
				
				Binesh.AddToHTML("h = <span>"..Binesh.ProgressNumber(P).."/"..Binesh.ProgressNumber(Settings.Zarib.g).."*"..Binesh.ProgressNumber(Ru).."</span> &#8658; h = "..Binesh.ProgressNumber(h).." m")
			end
		end
	end
end