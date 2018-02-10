function Binesh.F59()
	if P0 == nil then
		if P == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "›‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1) then
			if Ru ~= nil and h ~= nil then
				Binesh.CreateHTMLFile("P = Rugh")
				P = Ru*Zarib.g*h
				
				Binesh.AddToHTML("Ru: "..Binesh.Convert_e(Ru).." g/m<sup>3</sup>", "V")
				Binesh.AddToHTML("h: "..Binesh.Convert_e(h).." m", "V")
				Binesh.AddToHTML("P: ?", "V")
				
				Binesh.AddToHTML("P = "..Binesh.Convert_e(Ru).."*"..Binesh.Convert_e(Zarib.g).."*"..Binesh.Convert_e(h).." &#8658; P = "..Binesh.Convert_e(P).." Pa")
			end
		end
		
		if Ru == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "çê«·Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ru") ~= -1) then
			if P ~= nil and h ~= nil then
				Binesh.CreateHTMLFile("P = Rugh", "Ru = <span>P/gh</span>")
				Ru = P/(Zarib.g*h)
				
				Binesh.AddToHTML("P: "..Binesh.Convert_e(P).." Pa", "V")
				Binesh.AddToHTML("h: "..Binesh.Convert_e(h).." m", "V")
				Binesh.AddToHTML("Ru: ?", "V")
				
				Binesh.AddToHTML("Ru = <span>"..Binesh.Convert_e(P).."/"..Binesh.Convert_e(Zarib.g).."*"..Binesh.Convert_e(h).."</span> &#8658; Ru = "..Binesh.Convert_e(Ru).." g/m<sup>3</sup>")
			end
		end
		
		if h == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "«— ›«⁄") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "h") ~= -1) then
			if Ru ~= nil and P ~= nil then
				Binesh.CreateHTMLFile("P = Rugh", "h = <span>P/gRu</span>")
				h = P/(Zarib.g*Ru)
				
				Binesh.AddToHTML("P: "..Binesh.Convert_e(P).." Pa", "V")
				Binesh.AddToHTML("Ru: "..Binesh.Convert_e(Ru).." g/m<sup>3</sup>", "V")
				Binesh.AddToHTML("h: ?", "V")
				
				Binesh.AddToHTML("h = <span>"..Binesh.Convert_e(P).."/"..Binesh.Convert_e(Zarib.g).."*"..Binesh.Convert_e(Ru).."</span> &#8658; h = "..Binesh.Convert_e(h).." m")
			end
		end
	end
end