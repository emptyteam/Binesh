function Binesh.F85()
	if K_Ice == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "���� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "K") ~= -1) then
		if W ~= nil and QC ~= nil then
			K_Ice = QC / W
			
			Binesh.CreateHTMLFile("K = <span>Q<sub>C</sub>/W</span>")
			Binesh.AddToHTML("K = <span>"..Binesh.ProgressNumber(QC).."/"..Binesh.ProgressNumber(W).."</span> &#8658; K = "..Binesh.ProgressNumber(K_Ice))
			
			Binesh.AddToHTML("Q<sub>C</sub> = "..Binesh.ProgressNumber(QC).." J", "V")
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(W).." J", "V")
			Binesh.AddToHTML("K = ?", "V")
		end
	end
	
	if QC == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "���� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "QC") ~= -1) then
		if K_Ice ~= nil and W ~= nil then
			QC = K_Ice*W
			
			Binesh.CreateHTMLFile("K = <span>Q<sub>C</sub>/W</span>", "Q<sub>C</sub> = KW")
			Binesh.AddToHTML("Q<sub>C</sub> = "..Binesh.ProgressNumber(K_Ice).."*"..Binesh.ProgressNumber(W).." &#8658; Q<sub>C</sub> = "..Binesh.ProgressNumber(QC).." J")
			
			Binesh.AddToHTML("K = "..Binesh.ProgressNumber(K_Ice) ,"V")
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(W).." J" ,"V")
			Binesh.AddToHTML("Q<sub>C</sub> = ?" ,"V")
		end
	end
	
	if W == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1) then
		if K_Ice ~= nil and QC ~= nil then
			W = QC/K_Ice
			Binesh.CreateHTMLFile("K = <span>Q<sub>C</sub>/W</span>", "W = <span>Q<sub>C</sub>/K</span>")
			Binesh.AddToHTML("W = <span>"..Binesh.ProgressNumber(QC).."/"..Binesh.ProgressNumber(K_Ice).."</span> &#8658; W = "..Binesh.ProgressNumber(W).." J")
			
			Binesh.AddToHTML("Q<sub>C</sub> = "..Binesh.ProgressNumber(QC).." J" ,"V")
			Binesh.AddToHTML("K = "..Binesh.ProgressNumber(K_Ice) ,"V")
			Binesh.AddToHTML("W = ?" ,"V")
		end
	end
end