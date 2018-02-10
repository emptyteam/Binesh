function Binesh.F85()
	if K_Ice == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» ⁄„·ò—œ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "K") ~= -1) then
		if W ~= nil and QC ~= nil then
			K_Ice = QC / W
			
			Binesh.CreateHTMLFile("K = <span>Q<sub>C</sub>/W</span>")
			Binesh.AddToHTML("K = <span>"..Binesh.Convert_e(QC).."/"..Binesh.Convert_e(W).."</span> &#8658; K = "..Binesh.Convert_e(K_Ice))
			
			Binesh.AddToHTML("Q<sub>C</sub> = "..Binesh.Convert_e(QC).." J", "V")
			Binesh.AddToHTML("W = "..Binesh.Convert_e(W).." J", "V")
			Binesh.AddToHTML("K = ?", "V")
		end
	end
	
	if QC == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„‰»⁄ ”—œ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "QC") ~= -1) then
		if K_Ice ~= nil and W ~= nil then
			QC = K_Ice*W
			
			Binesh.CreateHTMLFile("K = <span>Q<sub>C</sub>/W</span>", "Q<sub>C</sub> = KW")
			Binesh.AddToHTML("Q<sub>C</sub> = "..Binesh.Convert_e(K_Ice).."*"..Binesh.Convert_e(W).." &#8658; Q<sub>C</sub> = "..Binesh.Convert_e(QC).." J")
			
			Binesh.AddToHTML("K = "..Binesh.Convert_e(K_Ice) ,"V")
			Binesh.AddToHTML("W = "..Binesh.Convert_e(W).." J" ,"V")
			Binesh.AddToHTML("Q<sub>C</sub> = ?" ,"V")
		end
	end
	
	if W == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ò«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1) then
		if K_Ice ~= nil and QC ~= nil then
			W = QC/K_Ice
			Binesh.CreateHTMLFile("K = <span>Q<sub>C</sub>/W</span>", "W = <span>Q<sub>C</sub>/K</span>")
			Binesh.AddToHTML("W = <span>"..Binesh.Convert_e(QC).."/"..Binesh.Convert_e(K_Ice).."</span> &#8658; W = "..Binesh.Convert_e(W).." J")
			
			Binesh.AddToHTML("Q<sub>C</sub> = "..Binesh.Convert_e(QC).." J" ,"V")
			Binesh.AddToHTML("K = "..Binesh.Convert_e(K_Ice) ,"V")
			Binesh.AddToHTML("W = ?" ,"V")
		end
	end
end