function Binesh.F83_2()
	if EtaK == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "»«“œÂ ò«—‰Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Eta_max") ~= -1) then 
		if QC ~= nil and QH ~= nil then
			Binesh.CreateHTMLFile("Eta<sub>max</sub> = 1-<span>|Q<sub>C</sub>|/Q<sub>H</sub></span>")
			EtaK = 1-Math.Abs(QC)/QH
			
			Binesh.AddToHTML("Eta<sub>max</sub> = 1-<span>"..Binesh.Convert_e(Math.Abs(QC)).."/"..Binesh.Convert_e(QH).."</span> &#8658; Eta<sub>max</sub> = "..Binesh.Convert_e(EtaK))
			
			Binesh.AddToHTML("|Q<sub>C</sub>|: "..Binesh.Convert_e(QC).." J", "V")
			Binesh.AddToHTML("Q<sub>H</sub>: "..Binesh.Convert_e(QH).." J", "V")
			Binesh.AddToHTML("Eta<sub>max</sub>: ?", "V")
		end
	end
	
	if QC == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„‰»⁄ ”—œ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "QC") ~= -1) then 
		if EtaK ~= nil and QH ~= nil then
			Binesh.CreateHTMLFile("Eta<sub>max</sub> = 1-<span>|Q<sub>C</sub>|/Q<sub>H</sub></span>", "Q<sub>C</sub> = |-(-1+Eta<sub>max</sub>)*Q<sub>H</sub>|")
			QC = Math.Abs(-(-1+EtaK)*QH)
			
			Binesh.AddToHTML("Q<sub>C</sub> = -(-1+"..Binesh.Convert_e(EtaK)..")*"..Binesh.Convert_e(QH).." &#8658; Q<sub>C</sub> = "..Binesh.Convert_e(QC).." J")
			
			Binesh.AddToHTML("Eta<sub>max</sub>: "..Binesh.Convert_e(EtaK), "V")
			Binesh.AddToHTML("Q<sub>H</sub>: "..Binesh.Convert_e(QH).." J", "V")
			Binesh.AddToHTML("|Q<sub>C</sub>|: ?", "V")
		end
	end
	
	if QH == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„‰»⁄ ê—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "QH") ~= -1) then 
		if EtaK ~= nil and QC ~= nil then
			Binesh.CreateHTMLFile("Eta<sub>max</sub> = 1-<span>|Q<sub>C</sub>|/Q<sub>H</sub></span>", "Q<sub>H</sub> = <span>-|Q<sub>C</sub>|/Eta<sub>max</sub>-1</span>")
			QH = -Math.Abs(QC)/(EtaK-1)
			
			Binesh.AddToHTML("Q<sub>H</sub> = -<span>"..Binesh.Convert_e(Math.Abs(QC)).."/("..Binesh.Convert_e(EtaK).."-1)</span> &#8658; Q<sub>H</sub> = "..Binesh.Convert_e(QH).." J")
			
			Binesh.AddToHTML("Eta<sub>max</sub>: "..Binesh.Convert_e(EtaK), "V")
			Binesh.AddToHTML("|Q<sub>C</sub>|: "..Binesh.Convert_e(QC).." J", "V")
			Binesh.AddToHTML("Q<sub>H</sub>: ?", "V")
		end
	end
end