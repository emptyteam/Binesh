function Binesh.F5()
	if q == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÐÑå") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1) then
		if n_e ~= nil or n_p ~= nil then
			Binesh.CreateHTMLFile("q = ne")
			if n_e ~= nil then
				q = n_e*(1.6*10^-19)
				Binesh.AddToHTML("q = "..n_e.."*"..(1.6*10^-19).." &#8658; q = "..q.." C")
			elseif n_p ~= nil then
				q = n_p*(1.6*10^-19)
				Binesh.AddToHTML("q = "..n_p.."*"..(1.6*10^-19).." &#8658; q = "..q.." C")
			end
			
			Binesh.AddToHTML("n: "..n_e, "V")
			Binesh.AddToHTML("q: ?", "V")
		end
	end
	
	if n_e == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÊÚÏÇÏ Çá˜ÊÑæä") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1) then
		if q ~= nil then
			Binesh.CreateHTMLFile("q = ne", "n = <span>q/e</span>")
			n_e = q / (1.6*10^-19)
			Binesh.AddToHTML("n = <span>"..q.."/"..(1.6*10^-19).."</span> &#8658; n = "..n_e)
			
			Binesh.AddToHTML("q: "..q.." C", "V")
			Binesh.AddToHTML("n: ?", "V")
		end
	end
end