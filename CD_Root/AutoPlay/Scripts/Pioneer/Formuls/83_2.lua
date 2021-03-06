function Binesh.F83_2()
	if EtaK == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Eta_max") ~= -1) then 
		if QC ~= nil and QH ~= nil then
			Binesh.CreateHTMLFile("Eta<sub>max</sub> = 1- <span>|Q<sub>C</sub>|/Q<sub>H</sub></span>")
			EtaK = 1-Math.Abs(QC)/QH
			
			Binesh.AddToHTML("Eta<sub>max</sub> = 1-<span>"..Binesh.ProgressNumber(Math.Abs(QC)).."/"..Binesh.ProgressNumber(QH).."</span> &#8658; Eta<sub>max</sub> = "..Binesh.ProgressNumber(EtaK))
			
			Binesh.AddToHTML("|Q<sub>C</sub>| = "..Binesh.ProgressNumber(QC).." J", "V")
			Binesh.AddToHTML("Q<sub>H</sub> = "..Binesh.ProgressNumber(QH).." J", "V")
			Binesh.AddToHTML("Eta<sub>max</sub> = ?", "V")
		end
	end
	
	if QC == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "���� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "QC") ~= -1) then 
		if EtaK ~= nil and QH ~= nil then
			Binesh.CreateHTMLFile("Eta<sub>max</sub> = 1- <span>|Q<sub>C</sub>|/Q<sub>H</sub></span>", "Q<sub>C</sub> = |-(-1+Eta<sub>max</sub>)*Q<sub>H</sub>|")
			QC = Math.Abs(-(-1+EtaK)*QH)
			
			Binesh.AddToHTML("Q<sub>C</sub> = -(-1+"..Binesh.ProgressNumber(EtaK)..")*"..Binesh.ProgressNumber(QH).." &#8658; Q<sub>C</sub> = "..Binesh.ProgressNumber(QC).." J")
			
			Binesh.AddToHTML("Eta<sub>max</sub> = "..Binesh.ProgressNumber(EtaK), "V")
			Binesh.AddToHTML("Q<sub>H</sub> = "..Binesh.ProgressNumber(QH).." J", "V")
			Binesh.AddToHTML("|Q<sub>C</sub>| = ?", "V")
		end
	end
	
	if QH == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "���� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "QH") ~= -1) then 
		if EtaK ~= nil and QC ~= nil then
			Binesh.CreateHTMLFile("Eta<sub>max</sub> = 1- <span>|Q<sub>C</sub>|/Q<sub>H</sub></span>", "Q<sub>H</sub> = <span>-|Q<sub>C</sub>|/Eta<sub>max</sub>-1</span>")
			QH = -Math.Abs(QC)/(EtaK-1)
			
			Binesh.AddToHTML("Q<sub>H</sub> = -<span>"..Binesh.ProgressNumber(Math.Abs(QC)).."/("..Binesh.ProgressNumber(EtaK).."-1)</span> &#8658; Q<sub>H</sub> = "..Binesh.ProgressNumber(QH).." J")
			
			Binesh.AddToHTML("Eta<sub>max</sub> = "..Binesh.ProgressNumber(EtaK), "V")
			Binesh.AddToHTML("|Q<sub>C</sub>| = "..Binesh.ProgressNumber(QC).." J", "V")
			Binesh.AddToHTML("Q<sub>H</sub> = ?", "V")
		end
	end
end