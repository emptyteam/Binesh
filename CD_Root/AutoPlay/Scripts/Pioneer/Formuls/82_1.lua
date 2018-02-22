function Binesh.F82_1()
	if Eta == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "»«“œÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Eta") ~= -1) then
		if QH ~= nil and W ~= nil then
			Binesh.CreateHTMLFile("Eta = <span>|W|/Q<sub>H</sub></span>")
			
			Eta = Math.Abs(W)/QH
			
			Binesh.AddToHTML("Eta = <span>|"..Binesh.ProgressNumber(W).."|/"..Binesh.ProgressNumber(QH).."</span> &#8658; Eta = "..Binesh.ProgressNumber(Eta))
			
			Binesh.AddToHTML("Q<sub>H</sub> = "..Binesh.ProgressNumber(QH).." J", "V")
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(W).." J", "V")
			Binesh.AddToHTML("Eta = ?", "V")
		end
	end
	
	if QH == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„‰»⁄ ê—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "QH") ~= -1) then
		if W ~= nil and Eta ~= nil then
			Binesh.CreateHTMLFile("Eta = <span>|W|/Q<sub>H</sub></span>", "Q<sub>H</sub> = <span>|W|/Eta</span>")
			QH = Math.Abs(W)/Eta
					
			Binesh.AddToHTML("Q<sub>H</sub> = <span>|"..Binesh.ProgressNumber(W).."|/"..Binesh.ProgressNumber(Eta).."</span> &#8658; Q<sub>H</sub> = "..Binesh.ProgressNumber(QH).." J")
			
			Binesh.AddToHTML("Eta = "..Binesh.ProgressNumber(Eta), "V")
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(W).." J", "V")
			Binesh.AddToHTML("Q<sub>H</sub> = ?", "V")
		end
	end
	
	if W == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ò«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1) then
		if Eta ~= nil and QH ~= nil then
			Binesh.CreateHTMLFile("Eta = <span>|W|/Q<sub>H</sub></span>", "W = |EtaQ<sub>H</sub>|")
			W = Math.Abs(Eta*QH)
			
			Binesh.AddToHTML("W = |"..Binesh.ProgressNumber(Eta).."*"..Binesh.ProgressNumber(QH).."| &#8658; |W| = "..Binesh.ProgressNumber(W).." J")
			
			Binesh.AddToHTML("Eta = "..Binesh.ProgressNumber(Eta), "V")
			Binesh.AddToHTML("Q<sub>H</sub> = "..Binesh.ProgressNumber(QH).." J", "V")
			Binesh.AddToHTML("W = ?", "V")
		end
	end
end