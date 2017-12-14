if EtaK == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "»«“œÂ ò«—‰Ê")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Eta_max' then
		ListBox.AddItem("unknowns", "»«“œÂ ò«—‰Ê", "Eta_max");
	end
end

if T_C == nil and T_CC == nil and T_CF == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œ„« „‰»⁄ ”—œ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'TC' then
		ListBox.AddItem("unknowns", "œ„« „‰»⁄ ”—œ", "TC");
	end
end

if T_H == nil and T_HC == nil and T_HF == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œ„« „‰»⁄ ê—„")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'TH' then
		ListBox.AddItem("unknowns", "œ„« „‰»⁄ ê—„", "TH");
	end
end

if T_CF ~= nil or T_HF then
	Binesh.CreateHTMLFile("F = <span>9/5</span>Teta+32", "Teta = <span>5/9</span>(F-32)")
end

if T_CF ~= nil then
	T_CC = 5/9*(T_CF-32)
	Binesh.AddToHTML("Teta<sub>T<sub>C</sub></sub> = <span>5/9</span>("..T_CF.."-32) &#8658; Teta = "..T_CC.." C")
	Binesh.AddToHTML("<br>") -- Create ENTER in HTML
end

if T_HF ~= nil then
	T_HC = 5/9*(T_HF-32)
	Binesh.AddToHTML("Teta<sub>T<sub>H</sub></sub> = <span>5/9</span>("..T_HF.."-32) &#8658; Teta = "..T_HC.." C")
	Binesh.AddToHTML("<br>") -- Create ENTER in HTML
end

if T_CC ~= nil or T_HC ~= nil then
	Binesh.CreateHTMLFile("T = Teta+273")
end

if T_CC ~= nil then
	T_C = T_CC+273
	Binesh.AddToHTML("T<sub>C</sub> = "..T_CC.."+273 &#8658; T<sub>C</sub> = "..T_C.." K")
	Binesh.AddToHTML("<br>") -- Create ENTER in HTML
end
if T_HC ~= nil then
	T_H = T_HC+273
	Binesh.AddToHTML("T<sub>H</sub> = "..T_HC.."+273 &#8658; T<sub>H</sub> = "..T_H.." K")
	Binesh.AddToHTML("<br>") -- Create ENTER in HTML
end

FindEtaK = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "»«“œÂ ò«—‰Ê");
if FindEtaK ~= -1 and ListBox.GetItemData("unknowns", FindEtaK) == "Eta_max" and ListBox.FindItem("Words", -1, LB_BYTEXT, "»«“œÂ ò«—‰Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Eta_max") ~= -1 then
	if T_C ~= nil and T_H ~= nil then
		Binesh.CreateHTMLFile("Eta<sub>max</sub> = 1- <span>T<sub>C</sub>/T<sub>H</sub></span>")
		
		EtaK = 1-(T_C/T_H)
		
		Binesh.AddToHTML("Eta<sub>max</sub> = 1-<span>"..T_C.."/"..T_H.."</span> &#8658; Eta<sub>max</sub> = "..EtaK)
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "»«“œÂ ò«—‰Ê");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Eta_max");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindT_C = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œ„« „‰»⁄ ”—œ");
if FindT_C ~= -1 and ListBox.GetItemData("unknowns", FindT_C) == "TC" and ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„« „‰»⁄ ”—œ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "TC") ~= -1 then
	if EtaK ~= nil and T_H ~= nil then
		Binesh.CreateHTMLFile("Eta<sub>max</sub> = 1- <span>T<sub>C</sub>/T<sub>H</sub></span>", "T<sub>C</sub> = -(-1+Eta<sub>max</sub>)T<sub>H</sub>")
		
		TC = -(-1+EtaK)*TH
		
		Binesh.AddToHTML("T<sub>C</sub> = -(-1+"..EtaK..")*"..TH.." &#8658; T<sub>C</sub> = "..TC.."<sup>o</sup>K")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œ„« „‰»⁄ ”—œ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "TC");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindT_H = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œ„« „‰»⁄ ê—„");
if FindT_H ~= -1 and ListBox.GetItemData("unknowns", FindT_H) == "TH" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„‰»⁄ ê—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "TH") ~= -1 then
	if EtaK ~= nil and T_C ~= nil then
		Binesh.CreateHTMLFile("Eta<sub>max</sub> = 1- <span>T<sub>C</sub>/T<sub>H</sub></span>", "T<sub>H</sub> = - <span>T<sub>C</sub>/(-1+Eta<sub>max</sub>)</span>")
		T_H = -T_C/(-1+EtaK)
		
		Binesh.AddToHTML("T<sub>H</sub> = - <span>"..T_C.."/(-1+"..EtaK.."</span> &#8658; T<sub>H</sub> = "..T_H.."<sup>o</sup>K")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œ„« „‰»⁄ ê—„");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "TH");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end