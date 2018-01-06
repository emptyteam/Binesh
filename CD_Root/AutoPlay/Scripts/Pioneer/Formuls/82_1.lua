function Binesh.F82_1()
	if Eta == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "»«“œÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Eta") ~= -1 then
		if QH ~= nil and W ~= nil then
			Binesh.CreateHTMLFile("Eta = <span>|W|/Q<sub>H</sub></span>")
			
			Eta = Math.Abs(W)/QH
			
			Binesh.AddToHTML("Eta = <span>|"..W.."|/"..QH.."</span> &#8658; Eta = "..Eta)
			
			Binesh.AddToHTML("Q<sub>H</sub>: "..QH.." J", "V")
			Binesh.AddToHTML("W: "..W.." J", "V")
			Binesh.AddToHTML("Eta: ?", "V")
		end
	end
	
	if QH == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "„‰»⁄ ê—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "QH") ~= -1 then
		if W ~= nil and Eta ~= nil then
			Binesh.CreateHTMLFile("Eta = <span>|W|/Q<sub>H</sub></span>", "Q<sub>H</sub> = <span>|W|/Eta</span>")
			QH = Math.Abs(W)/Eta
					
			Binesh.AddToHTML("Q<sub>H</sub> = <span>|"..W.."|/"..Eta.."</span> &#8658; Q<sub>H</sub> = "..QH.." J")
			
			Binesh.AddToHTML("Eta: "..Eta, "V")
			Binesh.AddToHTML("W: "..W.." J", "V")
			Binesh.AddToHTML("Q<sub>H</sub>: ?", "V")
		end
	end
	
	if W == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "ò«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1 then
		if Eta ~= nil and QH ~= nil then
			Binesh.CreateHTMLFile("Eta = <span>|W|/Q<sub>H</sub></span>", "W = |EtaQ<sub>H</sub>|")
			W = Math.Abs(Eta*QH)
			
			Binesh.AddToHTML("W = |"..Eta.."*"..QH.."| &#8658; |W| = "..W.." J")
			
			Binesh.AddToHTML("Eta: "..Eta, "V")
			Binesh.AddToHTML("Q<sub>H</sub>: "..QH.." J", "V")
			Binesh.AddToHTML("W: ?", "V")
		end
	end
end