function Binesh.F74()
	if Ru == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "çê«·Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ru") ~= -1) then
		if Pa ~= nil and T ~= nil and M ~= nil then
			Binesh.CreateHTMLFile("Ru = <span>PM/RT</span>")
			Ru = P*M/Settings.Zarib.R*T
					
			Binesh.AddToHTML("Ru = <span>"..Binesh.ProgressNumber(P).."*"..Binesh.ProgressNumber(M).."/"..Binesh.ProgressNumber(Settings.Zarib.R).."*"..Binesh.ProgressNumber(T).."</span> &#8658; Ru = "..Binesh.ProgressNumber(Ru).."g/m<sup>3</sup>")
			
			Binesh.AddToHTML("P = "..Binesh.ProgressNumber(P).." Pa", "V")
			Binesh.AddToHTML("T = "..Binesh.ProgressNumber(T).." K", "V")
			Binesh.AddToHTML("M = "..Binesh.ProgressNumber(M).." <span>g/mol</span>", "V")
			Binesh.AddToHTML("Ru = ?", "V")
		end
	end
	
	if P == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "›‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1) then
		if Ru ~= nil and T ~= nil and M ~= nil then
			Binesh.CreateHTMLFile("Ru = <span>PM/RT</span>", "P = <span>RuRT/M</span>")
			
			P = Ru*Settings.Zarib.R*T/M
			
			Binesh.AddToHTML("P = <span>"..Binesh.ProgressNumber(Ru).."*"..Binesh.ProgressNumber(Settings.Zarib.R).."*"..Binesh.ProgressNumber(T).."/"..Binesh.ProgressNumber(M).."</span> &#8658; P = "..Binesh.ProgressNumber(P).."Pa")
			
			Binesh.AddToHTML("Ru = "..Binesh.ProgressNumber(Pa).." g/m<sup>3</sup>", "V")
			Binesh.AddToHTML("T = "..Binesh.ProgressNumber(T).." K", "V")
			Binesh.AddToHTML("M = "..Binesh.ProgressNumber(M).." <span>g/mol</span>", "V")
			Binesh.AddToHTML("P = ?", "V")
		end
	end
	
	if T == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T") ~= -1) then
		if Ru ~= nil and P ~= nil and M ~= nil then
			Binesh.CreateHTMLFile("Ru = <span>PM/RT</span>", "T = <span>PM/RRu</span>")
			T = P*M/(Settings.Zarib.R*Ru)
			
			Binesh.AddToHTML("T = <span>"..Binesh.ProgressNumber(P).."*"..Binesh.ProgressNumber(M).."/"..Binesh.ProgressNumber(Settings.Zarib.R).."*"..Binesh.ProgressNumber(Ru).."</span> &#8658; T = "..Binesh.ProgressNumber(T).."<sup>o</sup>K")
			
			Binesh.AddToHTML("Ru = "..Binesh.ProgressNumber(Pa).." g/m<sup>3</sup>", "V")
			Binesh.AddToHTML("P = "..Binesh.ProgressNumber(P).." Pa", "V")
			Binesh.AddToHTML("M = "..Binesh.ProgressNumber(M).." <span>g/mol</span>", "V")
			Binesh.AddToHTML("T = ?", "V")
		end
	end
	
	if M == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—„ „Ê·Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "M") ~= -1) then
		if Ru ~= nil and T ~= nil and P ~= nil then
			Binesh.CreateHTMLFile("Ru = <span>PM/RT</span>", "M = <span>RuRT/P</span>")
			M = Settings.Zarib.R*Ru*T/P
			
			Binesh.AddToHTML("M = <span>"..Binesh.ProgressNumber(Ru).."*"..Binesh.ProgressNumber(Settings.Zarib.R).."*"..Binesh.ProgressNumber(T).."/"..Binesh.ProgressNumber(P).."</span> &#8658; M = "..Binesh.ProgressNumber(M).." g/mol")
			
			Binesh.AddToHTML("Ru = "..Binesh.ProgressNumber(Pa).." g/m<sup>3</sup>", "V")
			Binesh.AddToHTML("P = "..Binesh.ProgressNumber(P).." Pa", "V")
			Binesh.AddToHTML("T = "..Binesh.ProgressNumber(T).." K", "V")
			Binesh.AddToHTML("M = ?", "V")
		end
	end
end