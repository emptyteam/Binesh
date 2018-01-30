function Binesh.F74()
	if Ru == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "çê«·Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ru") ~= -1) then
		if Pa ~= nil and T ~= nil and M ~= nil then
			Binesh.CreateHTMLFile("Ru = <span>PM/RT</span>")
			Ru = P*M/Zarib.R*T
					
			Binesh.AddToHTML("Ru = <span>"..P.."*"..M.."/"..Zarib.R.."*"..T.."</span> &#8658; Ru = "..Ru.."g/m<sup>3</sup>")
			
			Binesh.AddToHTML("P: "..P.." Pa", "V")
			Binesh.AddToHTML("T: "..T.." K", "V")
			Binesh.AddToHTML("M: "..M.." <span>g/mol</span>", "V")
			Binesh.AddToHTML("Ru: ?", "V")
		end
	end
	
	if P == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "›‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1) then
		if Ru ~= nil and T ~= nil and M ~= nil then
			Binesh.CreateHTMLFile("Ru = <span>PM/RT</span>", "P = <span>RuRT/M</span>")
			
			P = Ru*Zarib.R*T/M
			
			Binesh.AddToHTML("P = <span>"..Ru.."*"..Zarib.R.."*"..T.."/"..M.."</span> &#8658; P = "..P.."Pa")
			
			Binesh.AddToHTML("Ru: "..Pa.." g/m<sup>3</sup>", "V")
			Binesh.AddToHTML("T: "..T.." K", "V")
			Binesh.AddToHTML("M: "..M.." <span>g/mol</span>", "V")
			Binesh.AddToHTML("P: ?", "V")
		end
	end
	
	if T == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T") ~= -1) then
		if Ru ~= nil and P ~= nil and M ~= nil then
			Binesh.CreateHTMLFile("Ru = <span>PM/RT</span>", "T = <span>PM/RRu</span>")
			T = P*M/(Zarib.R*Ru)
			
			Binesh.AddToHTML("T = <span>"..P.."*"..M.."/"..Zarib.R.."*"..Ru.."</span> &#8658; T = "..T.."<sup>o</sup>K")
			
			Binesh.AddToHTML("Ru: "..Pa.." g/m<sup>3</sup>", "V")
			Binesh.AddToHTML("P: "..P.." Pa", "V")
			Binesh.AddToHTML("M: "..M.." <span>g/mol</span>", "V")
			Binesh.AddToHTML("T: ?", "V")
		end
	end
	
	if M == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—„ „Ê·Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "M") ~= -1) then
		if Ru ~= nil and T ~= nil and P ~= nil then
			Binesh.CreateHTMLFile("Ru = <span>PM/RT</span>", "M = <span>RuRT/P</span>")
			M = Zarib.R*Ru*T/P
			
			Binesh.AddToHTML("M = <span>"..Ru.."*"..Zarib.R.."*"..T.."/"..P.."</span> &#8658; M = "..M.." g/mol")
			
			Binesh.AddToHTML("Ru: "..Pa.." g/m<sup>3</sup>", "V")
			Binesh.AddToHTML("P: "..P.." Pa", "V")
			Binesh.AddToHTML("T: "..T.." K", "V")
			Binesh.AddToHTML("M: ?", "V")
		end
	end
end