function Binesh.F82_2()
	if Eta == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Eta") ~= -1) then
		if QH ~= nil and QC ~= nil then
			Binesh.CreateHTMLFile("Eta = 1- <span>|Q<sub>C</sub>|/Q<sub>H</sub></span>", "Eta = <span>Q<sub>H</sub>-|Q<sub>C</sub>|/Q<sub>H</sub></span>")
			Eta = (QH-Math.Abs(QC))/QH
			
			Binesh.AddToHTML("Eta = <span>"..Binesh.ProgressNumber(QH).."-|"..Binesh.ProgressNumber(QC).."|/"..Binesh.ProgressNumber(QH).."</span> &#8658; Eta = "..Binesh.ProgressNumber(Eta))
			
			Binesh.AddToHTML("Q<sub>H</sub> = "..Binesh.ProgressNumber(QH).." J", "V")
			Binesh.AddToHTML("Q<sub>C</sub> = "..Binesh.ProgressNumber(QC).." J", "V")
			Binesh.AddToHTML("Eta = ?", "V")
		end
	end
	
	if QH == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "���� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "QH") ~= -1) then
		if W ~= nil and Eta ~= nil then
			Binesh.CreateHTMLFile("Eta = 1- <span>|Q<sub>C</sub>|/Q<sub>H</sub></span>", "Q<sub>H</sub> = <span>|Q<sub>C</sub>|/Eta+1</span>")
			QH = Math.Abs(QC)/(Eta+1)
					
			Binesh.AddToHTML("Q<sub>H</sub> = <span>|"..Binesh.ProgressNumber(QC).."|/"..Binesh.ProgressNumber(Eta).."+1</span> &#8658; Q<sub>H</sub> = "..Binesh.ProgressNumber(QH).." J")
			
			Binesh.AddToHTML("Eta = "..Binesh.ProgressNumber(Eta) , "V")
			Binesh.AddToHTML("Q<sub>C</sub> = "..Binesh.ProgressNumber(QC).." J", "V")
			Binesh.AddToHTML("Q<sub>H</sub> = ?", "V")
		end
	end
	
	if QC == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "���� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "QC") ~= -1) then 
		if EtaK ~= nil and QH ~= nil then
			Binesh.CreateHTMLFile("Eta = 1- <span>|Q<sub>C</sub>|/Q<sub>H</sub></span>", "Q<sub>C</sub> = |Q<sub>H</sub>(Eta+1)|")
			QC = Math.Abs(QH*(Eta+1))
			
			Binesh.AddToHTML("Q<sub>C</sub> = "..Binesh.ProgressNumber(QH).."("..Binesh.ProgressNumber(Eta).."+1) &#8658; Q<sub>C</sub> = "..Binesh.ProgressNumber(QC).." J")
			
			Binesh.AddToHTML("Eta = "..Binesh.ProgressNumber(Eta) , "V")
			Binesh.AddToHTML("Q<sub>H</sub> = "..Binesh.ProgressNumber(QH).." J", "V")
			Binesh.AddToHTML("Q<sub>C</sub> = ?", "V")
		end
	end
end