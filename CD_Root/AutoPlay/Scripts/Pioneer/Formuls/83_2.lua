if EtaK == nil then
	Binesh.AddUnknown("»«“œÂ ò«—‰Ê", "Eta_max")
end

if QC == nil then
	Binesh.AddUnknown("„‰»⁄ ”—œ", "QC")
end

if QH == nil then
	Binesh.AddUnknown("„‰»⁄ ê—„", "QH")
end

FindEtaK = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "»«“œÂ ò«—‰Ê");
if FindEtaK ~= -1 and ListBox.GetItemData("unknowns", FindEtaK) == "Eta_max" and ListBox.FindItem("Words", -1, LB_BYTEXT, "»«“œÂ ò«—‰Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Eta_max") ~= -1 then 
	if QC ~= nil and QH ~= nil then
		Binesh.CreateHTMLFile("Eta<sub>max</sub> = 1-<span>|Q<sub>C</sub>|/Q<sub>H</sub></span>")
		EtaK = 1-Math.Abs(QC)/QH
		
		Binesh.AddToHTML("Eta<sub>max</sub> = 1-<span>"..Math.Abs(QC).."/"..QH.."</span> &#8658; Eta<sub>max</sub> = "..EtaK)
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("|Q<sub>C</sub>|: "..QC.." J", "V")
		Binesh.AddToHTML("Q<sub>H</sub>: "..QH.." J", "V")
		Binesh.AddToHTML("Eta<sub>max</sub>: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "»«“œÂ ò«—‰Ê");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Eta_max");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindQC = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„‰»⁄ ”—œ");
if FindQC ~= -1 and ListBox.GetItemData("unknowns", FindQH) == "QH" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„‰»⁄ ”—œ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "QH") ~= -1 then 
	if EtaK ~= nil and QH ~= nil then
		Binesh.CreateHTMLFile("Eta<sub>max</sub> = 1-<span>|Q<sub>C</sub>|/Q<sub>H</sub></span>", "Q<sub>C</sub> = |-(-1+Eta<sub>max</sub>)*Q<sub>H</sub>|")
		QC = Math.Abs(-(-1+EtaK)*QH)
		
		Binesh.AddToHTML("Q<sub>C</sub> = -(-1+"..EtaK..")*"..QH.." &#8658; Q<sub>C</sub> = "..QC.." J")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("Eta<sub>max</sub>: "..EtaK, "V")
		Binesh.AddToHTML("Q<sub>H</sub>: "..QH.." J", "V")
		Binesh.AddToHTML("|Q<sub>C</sub>|: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„‰»⁄ ”—œ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "QC");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindQH = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„‰»⁄ ê—„");
if FindQH ~= -1 and ListBox.GetItemData("unknowns", FindQH) == "QH" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„‰»⁄ ê—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "QH") ~= -1 then 
	if EtaK ~= nil and QC ~= nil then
		Binesh.CreateHTMLFile("Eta<sub>max</sub> = 1-<span>|Q<sub>C</sub>|/Q<sub>H</sub></span>", "Q<sub>H</sub> = <span>-|Q<sub>C</sub>|/Eta<sub>max</sub>-1</span>")
		QH = -Math.Abs(QC)/(EtaK-1)
		
		Binesh.AddToHTML("Q<sub>H</sub> = -<span>"..Math.Abs(QC).."/("..EtaK.."-1)</span> &#8658; Q<sub>H</sub> = "..QH.." J")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("Eta<sub>max</sub>: "..EtaK, "V")
		Binesh.AddToHTML("|Q<sub>C</sub>|: "..QC.." J", "V")
		Binesh.AddToHTML("Q<sub>H</sub>: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„‰»⁄ ê—„");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "QH");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end