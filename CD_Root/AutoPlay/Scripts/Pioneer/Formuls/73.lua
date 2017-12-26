function Binesh.F73()
	if P == nil and Pa == nil then
		Binesh.AddUnknown("›‘«—", "P")
	end
	
	if V == nil and VL == nil then
		Binesh.AddUnknown("ÕÃ„", "V")
	end
	
	if n == nil then
		Binesh.AddUnknown("„Ê·", "n")
	end
	
	if T == nil and TC == nil and TF == nil then
		Binesh.AddUnknown("œ„«", "T")
	end
	
	if m == nil then
		Binesh.AddUnknown("Ã—„", "m")
	end
	
	if M == nil then
		Binesh.AddUnknown("Ã—„ „Ê·Ì", "M")
	end
	
	if VL ~= nil then
		Binesh.CreateHTMLFile("V = V<sub>L</sub>*10<sup>-3</sup>")
		V = VL*10^-3
		Binesh.AddToHTML("V = "..VL.."*10<sup>-3</sup> &#8658; V = "..V.."m<sup>-3</sup>")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
	end
	
	if TF ~= nil then
		Binesh.CreateHTMLFile("F = <span>9/5</span>Teta+32", "Teta = <span>5/9</span>(F-32)")
		TC = 5/9*(TF-32)
		Binesh.AddToHTML("Teta = <span>5/9</span>("..TF.."-32) &#8658; Teta = "..TC.." C")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
	end
	
	if TC ~= nil then
		Binesh.CreateHTMLFile("T = Teta+273")
		T = TC+273
		Binesh.AddToHTML("T = "..TC.."+273 &#8658; T = "..T.."K")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
	end
	
	FindP = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›‘«—");
	if FindP ~= -1 and ListBox.GetItemData("unknowns", FindP) == "P" and ListBox.FindItem("Words", -1, LB_BYTEXT, "›‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1 then
		if V ~= nil and n ~= nil and T ~= nil then
			Binesh.CreateHTMLFile("PV = nRT", "P = <span>nRT/V</span>")
			P = (n*8.314*T)/V
			
			Binesh.AddToHTML("n: "..n.." mol", "V")
			Binesh.AddToHTML("T: "..T.."<sup>o</sup>K", "V")
			Binesh.AddToHTML("V: "..V.." m<sup>3</sup>", "V")
			Binesh.AddToHTML("P: ?", "V")
			
			Binesh.AddToHTML("P = <span>"..n.."*8.314*"..T.."/"..V.."</span> &#8658; P = "..P.." Pa")
			Web.Refresh("Web1");
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›‘«—");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "P");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindV = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÕÃ„");
	if FindV ~= -1 and ListBox.GetItemData("unknowns", FindV) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÕÃ„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
		if P ~= nil and n ~= nil and T ~= nil then
			Binesh.CreateHTMLFile("PV = nRT", "V = <span>nRT/P</span>")
			V = (n*8.314*T)/P
			
			Binesh.AddToHTML("n: "..n.." mol", "V")
			Binesh.AddToHTML("T: "..T.."<sup>o</sup>K", "V")
			Binesh.AddToHTML("P: "..P.." Pa", "V")
			Binesh.AddToHTML("V: ?", "V")
			
			Binesh.AddToHTML("V = <span>"..n.."*8.314*"..T.."/"..P.."</span> &#8658; V = "..V.." m<sup>3</sup>")
			Web.Refresh("Web1");
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÕÃ„");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findn = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ê·");
	if Findn ~= -1 and ListBox.GetItemData("unknowns", Findn) == "n" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ê·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1 then
		if P ~= nil and V ~= nil and T ~= nil then
			Binesh.CreateHTMLFile("PV = nRT", "n = <span>PV/RT</span>")
			n = (P*V)/(8.314*T)
			
			Binesh.AddToHTML("P: "..P.." Pa", "V")
			Binesh.AddToHTML("V: "..V.." m<sup>3</sup>", "V")
			Binesh.AddToHTML("T: "..T.."<sup>o</sup>K", "V")
			Binesh.AddToHTML("n: ?", "V")
			
			Binesh.AddToHTML("n = <span>"..P.."*"..V.."/8.314*"..T.."</span> &#8658; n = "..n.." mol")
			Web.Refresh("Web1");
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ê·");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "n");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindT = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œ„«");
	if FindT ~= -1 and ListBox.GetItemData("unknowns", FindT) == "T" and ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T") ~= -1 then
		if P ~= nil and n ~= nil and V ~= nil then
			Binesh.CreateHTMLFile("PV = nRT", "T = <span>PV/nR</span>")
			T = (P*V)/(n*8.314)
			
			Binesh.AddToHTML("P: "..P.." Pa", "V")
			Binesh.AddToHTML("V: "..V.." m<sup>3</sup>", "V")
			Binesh.AddToHTML("n: "..n.." mol", "V")
			Binesh.AddToHTML("T: ?", "V")
			
			Binesh.AddToHTML("T = <span>"..P.."*"..V.."/8.314*"..n.."</span> &#8658; T = "..T.."<sup>o</sup>K")
			Web.Refresh("Web1");
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œ„«");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "T");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findm = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„");
	if Findm ~= -1 and ListBox.GetItemData("unknowns", Findm) == "m" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1 then
		if P ~= nil and n ~= nil and V ~= nil and M ~= nil and T ~= nil then
			Binesh.CreateHTMLFile("PV = nRT", "m = <span>RTM/PV</span>")
			m = (8.314*T*M)/(P*V)
			
			Binesh.AddToHTML("T: "..T.."<sup>o</sup>K", "V")
			Binesh.AddToHTML("M: "..M.." g/mol", "V")
			Binesh.AddToHTML("P: "..P.." Pa", "V")
			Binesh.AddToHTML("V: "..V.." m<sup>3</sup>", "V")
			Binesh.AddToHTML("m: ?", "V")
			
			Binesh.AddToHTML("m = <span>8.314*"..T.."*"..M.."/"..P.."*"..V.."</span> &#8658; m = "..m.." Kg")
			Web.Refresh("Web1");
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„");
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		elseif n ~= nil and M ~= nil and m == nil then
			Binesh.CreateHTMLFile("n = <span>M/m</span>", "<span>m = M/n</span>")
			
			m = M/n
			
			Binesh.AddToHTML("M: "..M.." g/mol", "V")
			Binesh.AddToHTML("n: "..n.." mol", "V")
			Binesh.AddToHTML("m: ?", "V")
			
			Binesh.AddToHTML("m = <span>"..M.."/"..n.."<span> &#8658; m = "..m.." Kg")
			Web.Refresh("Web1");
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "m");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindM = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„ „Ê·Ì");
	if FindM ~= -1 and ListBox.GetItemData("unknowns", FindM) == "M" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—„ „Ê·Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "M") ~= -1 then
		if P ~= nil and n ~= nil and V ~= nil and m ~= nil and T ~= nil then
			Binesh.CreateHTMLFile("PV = nRT", "M = <span>PVm/RT</span>")
			M = (P*V*m)/(8.314*T)
			
			Binesh.AddToHTML("P: "..P.." Pa", "V")
			Binesh.AddToHTML("V: "..V.." m<sup>3</sup>", "V")
			Binesh.AddToHTML("m: "..m.." Kg", "V")
			Binesh.AddToHTML("T: "..T.."<sup>o</sup>K", "V")
			Binesh.AddToHTML("M: ?", "V")
			
			Binesh.AddToHTML("M = <span>"..P.."*"..V.."*"..m.."/8.314*"..T.."</span> &#8658; M = "..M.." g/mol")
			Web.Refresh("Web1");
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„ „Ê·Ì");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "M");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		elseif n ~= nil and m ~= nil and M ~= nil then
			Binesh.CreateHTMLFile("n = <span>M/m</span>", "M = nm")
			M = n*m
			
			Binesh.AddToHTML("n: "..n.." mol", "V")
			Binesh.AddToHTML("m: "..m.." Kg", "V")
			Binesh.AddToHTML("M: ?", "V")
			
			Binesh.AddToHTML("M = "..n.."*"..m.." &#8658; M = "..M.." g/mol")
			Web.Refresh("Web1");
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„ „Ê·Ì");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "M");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end