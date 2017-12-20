if Eta == nil then
	Binesh.AddUnknown("»«“œÂ", "Eta")
end

if QH == nil then
	Binesh.AddUnknown("„‰»⁄ ê—„", "QH")
end

if W == nil then
	Binesh.AddUnknown("ò«—", "W")
end

FindEta = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "»«“œÂ")
if FindEta ~= -1 and ListBox.GetItemData("unknowns", FindEta) == "Eta" or ListBox.GetItemData("unknowns", FindEta) == "R" and ListBox.FindItem("Words", -1, LB_BYTEXT, "»«“œÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Eta") ~= -1 then
	if QH ~= nil and W ~= nil then
		Binesh.CreateHTMLFile("Eta = <span>|W|/Q<sub>H</sub></span>")
		
		Eta = Math.Abs(W)/QH
		
		Binesh.AddToHTML("Eta = <span>|"..W.."|/"..QH.."</span> &#8658; Eta = "..Eta)
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("Q<sub>H</sub>: "..QH.." J", "V")
		Binesh.AddToHTML("W: "..W.." J", "V")
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
		Binesh.CreateHTMLFile("Eta = <span>|W|/Q<sub>H</sub></span>", "Q<sub>H</sub> = <span>|W|/Eta</span>")
		QH = Math.Abs(W)/Eta
				
		Binesh.AddToHTML("Q<sub>H</sub> = <span>|"..W.."|/"..Eta.."</span> &#8658; Q<sub>H</sub> = "..QH.." J")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("Eta: "..Eta, "V")
		Binesh.AddToHTML("W: "..W.." J", "V")
		Binesh.AddToHTML("Q<sub>H</sub>: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„‰»⁄ ê—„");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "QH");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindW = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«—");
if FindW ~= -1 and ListBox.GetItemData("unknowns", FindW) == "W" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ò«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1 then
	if Eta ~= nil and QH ~= nil then
		Binesh.CreateHTMLFile("Eta = <span>|W|/Q<sub>H</sub></span>", "W = |EtaQ<sub>H</sub>|")
		W = Math.Abs(Eta*QH)
		
		Binesh.AddToHTML("W = |"..Eta.."*"..QH.."| &#8658; |W| = "..W.." J")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("Eta: "..Eta, "V")
		Binesh.AddToHTML("Q<sub>H</sub>: "..QH.." J", "V")
		Binesh.AddToHTML("W: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«—");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "W");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end