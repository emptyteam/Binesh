function Binesh.F5()
	if q == nil then
		Binesh.AddUnknown("ÐÑå", "q")
	end
	
	if n_e == nil and n_p == nil then
		Binesh.AddUnknown("ÊÚÏÇÏ Çá˜ÊÑæä", "n")
	end
	
	Findq = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÐÑå")
	if Findq ~= -1 and ListBox.GetItemData("unknowns", Findq) == "c" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÐÑå") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
		if n_e ~= nil or n_p ~= nil then
			Binesh.CreateHTMLFile("q = n*e")
			if n_e ~= nil then
				q = n_e*(1.6*10^-19)
				Binesh.AddToHTML("q = "..n_e.."*"..(1.6*10^-19).." &#8658; q = "..q.." C")
			elseif n_p ~= nil then
				q = n_p*(1.6*10^-19)
				Binesh.AddToHTML("q = "..n_p.."*"..(1.6*10^-19).." &#8658; q = "..q.." C")
			end
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("n: "..n_e, "V")
			Binesh.AddToHTML("q: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÐÑå");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findn_e = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÊÚÏÇÏ Çá˜ÊÑæä");
	if Findn_e ~= -1 and ListBox.GetItemData("unknowns", Findn_e) == "n" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÊÚÏÇÏ Çá˜ÊÑæä") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1 then
		if q ~= nil then
			Binesh.CreateHTMLFile("q = n*e", "n = <span>q/e</span>")
			n_e = q / (1.6*10^-19)
			Binesh.AddToHTML("n = <span>"..q.."/"..(1.6*10^-19).."</span> &#8658; n = "..n_e)
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("q: "..q.." C", "V")
			Binesh.AddToHTML("n: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÊÚÏÇÏ Çá˜ÊÑæä");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "n");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end