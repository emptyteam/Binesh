if Eta == nil then
	
	Binesh.AddUnknown("»«“œÂ", "Eta")
end

if QH == nil then
	
	Binesh.AddUnknown("„‰»⁄ ê—„", "QH")
end

if QC == nil then
	
	Binesh.AddUnknown("„‰»⁄ ”—œ", "QC")
end

FindEta = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "»«“œÂ")
if FindEta ~= -1 and ListBox.GetItemData("unknowns", FindEta) == "Eta" or ListBox.GetItemData("unknowns", FindEta) == "R" and ListBox.FindItem("Words", -1, LB_BYTEXT, "»«“œÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Eta") ~= -1 then
	if QH ~= nil and QC ~= nil then
		Binesh.CreateHTMLFile("Eta = 1- <span>|Q<sub>C</sub>|/Q<sub>H</sub></span>", "Eta = <span>Q<sub>H</sub>-|Q<sub>C</sub>|/Q<sub>H</sub></span>")
		Eta = (QH-Math.Abs(QC))/QH
		
		Binesh.AddToHTML("Eta = <span>"..QH.."-|"..QC.."|/"..QH.."</span> &#8658; Eta = "..Eta)
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("Q<sub>H</sub>: "..QH.." J", "V")
		Binesh.AddToHTML("Q<sub>C</sub>: "..QC.." J", "V")
		Binesh.AddToHTML("Eta: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "»«“œÂ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Eta");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindQH = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„‰»⁄ ê—„")
if FindQH ~= -1 and ListBox.GetItemData("unknowns", FindQH) == "QH" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„‰»⁄ ê—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "QH") ~= -1 then
	if W ~= nil and Eta ~= nil then
		Binesh.CreateHTMLFile("Eta = 1- <span>|Q<sub>C</sub>|/Q<sub>H</sub></span>", "Q<sub>H</sub> = <span>|Q<sub>C</sub>|/Eta+1</span>")
		QH = Math.Abs(QC)/(Eta+1)
				
		Binesh.AddToHTML("Q<sub>H</sub> = <span>|"..QC.."|/"..Eta.."+1</span> &#8658; Q<sub>H</sub> = "..QH.." J")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("Eta: "..Eta , "V")
		Binesh.AddToHTML("Q<sub>C</sub>: "..QC.." J", "V")
		Binesh.AddToHTML("Q<sub>H</sub>: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„‰»⁄ ê—„");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "QH");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindQC = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„‰»⁄ ”—œ");
if FindQC ~= -1 and ListBox.GetItemData("unknowns", FindQH) == "QH" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„‰»⁄ ”—œ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "QH") ~= -1 then 
	if EtaK ~= nil and QH ~= nil then
		Binesh.CreateHTMLFile("Eta = 1- <span>|Q<sub>C</sub>|/Q<sub>H</sub></span>", "Q<sub>C</sub> = |Q<sub>H</sub>(Eta+1)|")
		QC = Math.Abs(QH*(Eta+1))
		
		Binesh.AddToHTML("Q<sub>C</sub> = "..QH.."("..Eta.."+1) &#8658; Q<sub>C</sub> = "..QC.." J")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("Eta: "..Eta , "V")
		Binesh.AddToHTML("Q<sub>H</sub>: "..QH.." J", "V")
		Binesh.AddToHTML("Q<sub>C</sub>: ?", "V")

		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„‰»⁄ ”—œ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "QC");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end