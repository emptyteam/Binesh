function Binesh.F81()
	if QH == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "���� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "QH") ~= -1) then
		if W ~= nil and QC ~= nil then
			Binesh.CreateHTMLFile("Q<sub>H</sub> = |W|+|Q<sub>C</sub>|")
			
			QH = Math.Abs(W) + Math.Abs(QC)
					
			Binesh.AddToHTML("Q<sub>H</sub> = |"..Binesh.ProgressNumber(W).."|+|"..Binesh.ProgressNumber(QC).."| &#8658; Q<sub>H</sub> = "..Binesh.ProgressNumber(QH).." J")
			
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(W).." J", "V")
			Binesh.AddToHTML("Q<sub>C</sub> = "..Binesh.ProgressNumber(QC).." J", "V")
			Binesh.AddToHTML("Q<sub>H</sub> = ?", "V")
		end
	end
	
	if W == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1) then
		if QC ~= nil and QH ~= nil then
			Binesh.CreateHTMLFile("Q<sub>H</sub> = |W|+|Q<sub>C</sub>|", "|W| = Q<sub>H</sub>-|Q<sub>C</sub>|")
			
			W = Math.Abs(QH-Math.Abs(QC))
			
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(QH).."+|"..Binesh.ProgressNumber(QC).."| &#8658; |W| = "..Binesh.ProgressNumber(W).." J")
			
			Binesh.AddToHTML("Q<sub>H</sub> = "..Binesh.ProgressNumber(QH).." J", "V")
			Binesh.AddToHTML("Q<sub>C</sub> = "..Binesh.ProgressNumber(QC).." J", "V")
			Binesh.AddToHTML("W = ?", "V")
		end
	end
	
	if QC == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "���� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "QC") ~= -1) then
		if QH ~= nil and W ~= nil then
			Binesh.CreateHTMLFile("Q<sub>H</sub> = |W|+|Q<sub>C</sub>|", "|Q<sub>C</sub>| = Q<sub>H</sub>-|W|")
			Binesh.AddToHTML("Q<sub>C</sub> = Q<sub>H</sub>+|W| &#8658; ")
			
			QC = math.abs(QH+Math.Abs(W))
			
			Binesh.AddToHTML("Q<sub>C</sub> = "..Binesh.ProgressNumber(QH).."+|"..Binesh.ProgressNumber(W).."| &#8658; Q<sub>C</sub> = "..Binesh.ProgressNumber(QC).." J")
			
			Binesh.AddToHTML("Q<sub>H</sub> = "..Binesh.ProgressNumber(QH).." J", "V")
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(W).." J", "V")
			Binesh.AddToHTML("Q<sub>C</sub> = ?", "V")
		end
	end
end