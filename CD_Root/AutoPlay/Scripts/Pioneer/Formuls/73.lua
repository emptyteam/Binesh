function Binesh.F73()
	if VL ~= nil and V == nil then
		Binesh.CreateHTMLFile("V = V<sub>L</sub>*10<sup>-3</sup>")
		V = VL*10^-3
		Binesh.AddToHTML("V = "..Binesh.ProgressNumber(VL).."*10<sup>-3</sup> &#8658; V = "..Binesh.ProgressNumber(V).."m<sup>-3</sup>")
	end
	
	if TF ~= nil and TC == nil then
		Binesh.CreateHTMLFile("F = <span>9/5</span>Teta+32", "Teta = <span>5/9</span>(F-32)")
		TC = 5/9*(TF-32)
		Binesh.AddToHTML("Teta = <span>5/9</span>("..Binesh.ProgressNumber(TF).."-32) &#8658; Teta = "..Binesh.ProgressNumber(TC).." C")
	end
	
	if TC ~= nil and T == nil then
		Binesh.CreateHTMLFile("T = Teta+273")
		T = TC+273
		Binesh.AddToHTML("T = "..Binesh.ProgressNumber(TC).."+273 &#8658; T = "..Binesh.ProgressNumber(T).." K")
	end
	
	if P == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "›‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1) then
		if V ~= nil and n ~= nil and T ~= nil then
			Binesh.CreateHTMLFile("PV = nRT", "P = <span>nRT/V</span>")
			P = (n*8.314*T)/V
			
			Binesh.AddToHTML("n = "..Binesh.ProgressNumber(n).." mol", "V")
			Binesh.AddToHTML("T = "..Binesh.ProgressNumber(T).."<sup>o</sup>K", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("P = ?", "V")
			
			Binesh.AddToHTML("P = <span>"..Binesh.ProgressNumber(n).."*8.314*"..Binesh.ProgressNumber(T).."/"..Binesh.ProgressNumber(V).."</span> &#8658; P = "..Binesh.ProgressNumber(P).." Pa")
		end
	end
	
	if V == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÕÃ„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then
		if P ~= nil and n ~= nil and T ~= nil then
			Binesh.CreateHTMLFile("PV = nRT", "V = <span>nRT/P</span>")
			V = (n*8.314*T)/P
			
			Binesh.AddToHTML("n = "..Binesh.ProgressNumber(n).." mol", "V")
			Binesh.AddToHTML("T = "..Binesh.ProgressNumber(T).."<sup>o</sup>K", "V")
			Binesh.AddToHTML("P = "..Binesh.ProgressNumber(P).." Pa", "V")
			Binesh.AddToHTML("V = ?", "V")
			
			Binesh.AddToHTML("V = <span>"..Binesh.ProgressNumber(n).."*8.314*"..Binesh.ProgressNumber(T).."/"..Binesh.ProgressNumber(P).."</span> &#8658; V = "..Binesh.ProgressNumber(V).." m<sup>3</sup>")
		end
	end
	
	if n == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ê·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1) then
		if P ~= nil and V ~= nil and T ~= nil then
			Binesh.CreateHTMLFile("PV = nRT", "n = <span>PV/RT</span>")
			n = (P*V)/(8.314*T)
			
			Binesh.AddToHTML("P = "..Binesh.ProgressNumber(P).." Pa", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("T = "..Binesh.ProgressNumber(T).."<sup>o</sup>K", "V")
			Binesh.AddToHTML("n = ?", "V")
			
			Binesh.AddToHTML("n = <span>"..Binesh.ProgressNumber(P).."*"..Binesh.ProgressNumber(V).."/8.314*"..Binesh.ProgressNumber(T).."</span> &#8658; n = "..Binesh.ProgressNumber(n).." mol")
		end
	end
	
	if T == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T") ~= -1) then
		if P ~= nil and n ~= nil and V ~= nil then
			Binesh.CreateHTMLFile("PV = nRT", "T = <span>PV/nR</span>")
			T = (P*V)/(n*8.314)
			
			Binesh.AddToHTML("P = "..Binesh.ProgressNumber(P).." Pa", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("n = "..Binesh.ProgressNumber(n).." mol", "V")
			Binesh.AddToHTML("T = ?", "V")
			
			Binesh.AddToHTML("T = <span>"..Binesh.ProgressNumber(P).."*"..Binesh.ProgressNumber(V).."/8.314*"..Binesh.ProgressNumber(n).."</span> &#8658; T = "..Binesh.ProgressNumber(T).."<sup>o</sup>K")
		end
	end
	
	if m == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1) then
		if P ~= nil and n ~= nil and V ~= nil and M ~= nil and T ~= nil then
			Binesh.CreateHTMLFile("PV = nRT", "m = <span>RTM/PV</span>")
			m = (8.314*T*M)/(P*V)
			
			Binesh.AddToHTML("T = "..Binesh.ProgressNumber(T).."<sup>o</sup>K", "V")
			Binesh.AddToHTML("M = "..Binesh.ProgressNumber(M).." g/mol", "V")
			Binesh.AddToHTML("P = "..Binesh.ProgressNumber(P).." Pa", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("m = ?", "V")
			
			Binesh.AddToHTML("m = <span>8.314*"..Binesh.ProgressNumber(T).."*"..Binesh.ProgressNumber(M).."/"..Binesh.ProgressNumber(P).."*"..Binesh.ProgressNumber(V).."</span> &#8658; m = "..Binesh.ProgressNumber(math.abs(m)).." Kg")
		elseif n ~= nil and M ~= nil and m == nil then
			Binesh.CreateHTMLFile("n = <span>M/m</span>", "<span>m = M/n</span>")
			
			m = M/n
			
			Binesh.AddToHTML("M = "..Binesh.ProgressNumber(M).." g/mol", "V")
			Binesh.AddToHTML("n = "..Binesh.ProgressNumber(n).." mol", "V")
			Binesh.AddToHTML("m = ?", "V")
			
			Binesh.AddToHTML("m = <span>"..Binesh.ProgressNumber(M).."/"..Binesh.ProgressNumber(n).."<span> &#8658; m = "..Binesh.ProgressNumber(math.abs(m)).." Kg")
		end
	end
	
	if M == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—„ „Ê·Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "M") ~= -1) then
		if P ~= nil and n ~= nil and V ~= nil and m ~= nil and T ~= nil then
			Binesh.CreateHTMLFile("PV = nRT", "M = <span>PVm/RT</span>")
			M = (P*V*m)/(8.314*T)
			
			Binesh.AddToHTML("P = "..Binesh.ProgressNumber(P).." Pa", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("m = "..Binesh.ProgressNumber(m).." Kg", "V")
			Binesh.AddToHTML("T = "..Binesh.ProgressNumber(T).."<sup>o</sup>K", "V")
			Binesh.AddToHTML("M = ?", "V")
			
			Binesh.AddToHTML("M = <span>"..Binesh.ProgressNumber(P).."*"..Binesh.ProgressNumber(V).."*"..Binesh.ProgressNumber(m).."/8.314*"..Binesh.ProgressNumber(T).."</span> &#8658; M = "..Binesh.ProgressNumber(M).." g/mol")
		elseif n ~= nil and m ~= nil and M ~= nil then
			Binesh.CreateHTMLFile("n = <span>M/m</span>", "M = nm")
			M = n*m
			
			Binesh.AddToHTML("n = "..Binesh.ProgressNumber(n).." mol", "V")
			Binesh.AddToHTML("m = "..Binesh.ProgressNumber(m).." Kg", "V")
			Binesh.AddToHTML("M = ?", "V")
			
			Binesh.AddToHTML("M = "..Binesh.ProgressNumber(n).."*"..Binesh.ProgressNumber(m).." &#8658; M = "..Binesh.ProgressNumber(M).." g/mol")
		end
	end
end