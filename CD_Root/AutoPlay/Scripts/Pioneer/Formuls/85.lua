function Binesh.F85()
	if K_Ice == nil then
		Binesh.AddUnknown("÷—Ì» ⁄„·ò—œ", "K")
	end
	
	if W == nil then
		Binesh.AddUnknown("ò«—", "W")
	end
	
	if QC == nil then
		Binesh.AddUnknown("„‰»⁄ ”—œ", "QC")
	end
	
	FindK_Ice = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» ⁄„·ò—œ")
	if FindK_Ice ~= -1 and ListBox.GetItemData("unknowns", FindK_Ice) == "K" and ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» ⁄„·ò—œ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "K") ~= -1 then
		if W ~= nil and QC ~= nil then
			K_Ice = QC / W
			
			Binesh.CreateHTMLFile("K = <span>Q<sub>C</sub>/W</span>")
			Binesh.AddToHTML("K = <span>"..QC.."/"..W.."</span> &#8658; K = "..K_Ice)
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("Q<sub>C</sub> = "..QC.." J", "V")
			Binesh.AddToHTML("W = "..W.." J", "V")
			Binesh.AddToHTML("K = ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» ⁄„·ò—œ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "K");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindQC = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„‰»⁄ ”—œ")
	if FindQC ~= -1 and ListBox.GetItemData("unknowns", FindQC) == "QC" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„‰»⁄ ”—œ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "QC") ~= -1 then
		if K_Ice ~= nil and W ~= nil then
			QC = K_Ice*W
			
			Binesh.CreateHTMLFile("K = <span>Q<sub>C</sub>/W</span>", "Q<sub>C</sub> = KW")
			Binesh.AddToHTML("Q<sub>C</sub> = "..K_Ice.."*"..W.." &#8658; Q<sub>C</sub> = "..QC.." J")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("K = "..K_Ice ,"V")
			Binesh.AddToHTML("W = "..W.." J" ,"V")
			Binesh.AddToHTML("Q<sub>C</sub> = ?" ,"V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„‰»⁄ ”—œ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "QC");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindW = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«—");
	if FindW ~= -1 and ListBox.GetItemData("unknowns", FindW) == "W" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ò«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1 then
		if K_Ice ~= nil and QC ~= nil then
			W = QC/K_Ice
			Binesh.CreateHTMLFile("K = <span>Q<sub>C</sub>/W</span>", "W = <span>Q<sub>C</sub>/K</span>")
			Binesh.AddToHTML("W = <span>"..QC.."/"..K_Ice.."</span> &#8658; W = "..W.." J")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("Q<sub>C</sub> = "..QC.." J" ,"V")
			Binesh.AddToHTML("K = "..K_Ice ,"V")
			Binesh.AddToHTML("W = ?" ,"V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«—");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "W");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end