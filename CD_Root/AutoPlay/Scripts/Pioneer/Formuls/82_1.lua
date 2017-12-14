if Eta == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "»«“œÂ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Eta' then
		ListBox.AddItem("unknowns", "»«“œÂ", "Eta");
	end
end

if QH == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„‰»⁄ ê—„")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'QH' then
		ListBox.AddItem("unknowns", "„‰»⁄ ê—„", "QH");
	end
end

if W == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«—")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'W' then
		ListBox.AddItem("unknowns", "ò«—", "W");
	end
end

FindEta = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "»«“œÂ")
if FindEta ~= -1 and ListBox.GetItemData("unknowns", FindEta) == "Eta" or ListBox.GetItemData("unknowns", FindEta) == "R" and ListBox.FindItem("Words", -1, LB_BYTEXT, "»«“œÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Eta") ~= -1 then
	if QH ~= nil and W ~= nil then
		Binesh.CreateHTMLFile("Eta = <span>|W|/Q<sub>H</sub></span>")
		
		Eta = Math.Abs(W)/QH
		
		Binesh.AddToHTML("Eta = <span>|"..W.."|/"..QH.."</span> &#8658; Eta = "..Eta)
		Web.Refresh("Web1");
		
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
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ò«—");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "W");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end