function Binesh.F97_3()
	if U == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1) then
		if V_Electric ~= nil and q ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span>qV")
			U = 0.5*q*V_Electric
			
			Binesh.AddToHTML("q: "..Binesh.Convert_e(q).." C", "V")
			Binesh.AddToHTML("V: "..Binesh.Convert_e(V_Electric).." V", "V")
			Binesh.AddToHTML("U: ?", "V")
			
			Binesh.AddToHTML("U = <span>1/2</span>*"..Binesh.Convert_e(q).."*"..Binesh.Convert_e(V_Electric).." &#8658; U = "..Binesh.Convert_e(U).." J")
		end
	end
	
	if q == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1) then
		if V_Electric ~= nil and U ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span>qV", "q = <span>2U/V</span>")
			q = (2*U)/V_Electric
			
			Binesh.AddToHTML("U: "..Binesh.Convert_e(U).." J", "V")
			Binesh.AddToHTML("V: "..Binesh.Convert_e(V_Electric).." V", "V")
			Binesh.AddToHTML("q: ?", "V")
			
			Binesh.AddToHTML("q = <span>2*"..Binesh.Convert_e(U).."/"..Binesh.Convert_e(V_Electric).."</span> &#8658; q = "..Binesh.Convert_e(q).." C")
		end
	end
	
	if V_Electric == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then
		if U ~= nil and q ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span>qV", "V = <span>2U/q</span>")
			V_Electric = (2*U/q)
			
			Binesh.AddToHTML("U: "..Binesh.Convert_e(U).." J", "V")
			Binesh.AddToHTML("q: "..Binesh.Convert_e(q).." C", "V")
			Binesh.AddToHTML("V: ?", "V")
			

			Binesh.AddToHTML("V = Sqrt(2*"..Binesh.Convert_e(U).."/"..Binesh.Convert_e(q)..") &#8658; V = "..Binesh.Convert_e(V_Electric).." V")
		end
	end
end