if Ru == nil then
	Binesh.AddUnknown("çê«·Ì", "Ru")
end

if P == nil and Pa == nil then
	Binesh.AddUnknown("›‘«—", "P")
end

if T == nil and TC == nil then
	Binesh.AddUnknown("œ„«", "T")
end

if M == nil then
	Binesh.AddUnknown("Ã—„ „Ê·Ì", "M")
end

FindRu = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "çê«·Ì");
if FindRu ~= -1 and ListBox.GetItemData("unknowns", FindRu) == "Ru" and ListBox.FindItem("Words", -1, LB_BYTEXT, "çê«·Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ru") ~= -1 then
	if Pa ~= nil and T ~= nil and M ~= nil then
		Binesh.CreateHTMLFile("Ru = <span>PM/RT</span>")
		Ru = P*M/Zarib.R*T
				
		Binesh.AddToHTML("Ru = <span>"..P.."*"..M.."/"..Zarib.R.."*"..T.."</span> &#8658; Ru = "..Ru.."g/m<sup>3</sup>")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("P: "..P.." Pa", "V")
		Binesh.AddToHTML("T: "..T.." K", "V")
		Binesh.AddToHTML("M: "..M.." <span>g/mol</span>", "V")
		Binesh.AddToHTML("Ru: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "çê«·Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Ru");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindP = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›‘«—");
if FindP ~= -1 and ListBox.GetItemData("unknowns", FindP) == "P" and ListBox.FindItem("Words", -1, LB_BYTEXT, "›‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1 then
	if Ru ~= nil and T ~= nil and M ~= nil then
		Binesh.CreateHTMLFile("Ru = <span>PM/RT</span>", "P = <span>RuRT/M</span>")
		
		P = Ru*Zarib.R*T/M
		
		Binesh.AddToHTML("P = <span>"..Ru.."*"..Zarib.R.."*"..T.."/"..M.."</span> &#8658; P = "..P.."Pa")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("Ru: "..Pa.." g/m<sup>3</sup>", "V")
		Binesh.AddToHTML("T: "..T.." K", "V")
		Binesh.AddToHTML("M: "..M.." <span>g/mol</span>", "V")
		Binesh.AddToHTML("P: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›‘«—");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "P");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindT = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œ„«");
if FindT ~= -1 and ListBox.GetItemData("unknowns", FindT) == "T" and ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T") ~= -1 then
	if Ru ~= nil and P ~= nil and M ~= nil then
		Binesh.CreateHTMLFile("Ru = <span>PM/RT</span>", "T = <span>PM/RRu</span>")
		T = P*M/(Zarib.R*Ru)
		
		Binesh.AddToHTML("T = <span>"..P.."*"..M.."/"..Zarib.R.."*"..Ru.."</span> &#8658; T = "..T.."K")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("Ru: "..Pa.." g/m<sup>3</sup>", "V")
		Binesh.AddToHTML("P: "..P.." Pa", "V")
		Binesh.AddToHTML("M: "..M.." <span>g/mol</span>", "V")
		Binesh.AddToHTML("T: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œ„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "T");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindM = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„ „Ê·Ì");
if FindM ~= -1 and ListBox.GetItemData("unknowns", FindM) == "M" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—„ „Ê·Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "M") ~= -1 then
	if Ru ~= nil and T ~= nil and P ~= nil then
		Binesh.CreateHTMLFile("Ru = <span>PM/RT</span>", "M = <span>RuRT/P</span>")
		M = Zarib.R*Ru*T/P
		
		Binesh.AddToHTML("M = <span>"..Ru.."*"..Zarib.R.."*"..T.."/"..P.."</span> &#8658; M = "..M.."<span>g/mol</span>")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("Ru: "..Pa.." g/m<sup>3</sup>", "V")
		Binesh.AddToHTML("P: "..P.." Pa", "V")
		Binesh.AddToHTML("T: "..T.." K", "V")
		Binesh.AddToHTML("M: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„ „Ê·Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "M");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end