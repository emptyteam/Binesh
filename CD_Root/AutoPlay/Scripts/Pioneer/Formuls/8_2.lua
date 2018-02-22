function Binesh.F8_2()
	if W == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ «·ò —ÌòÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1) then
		if V_Electric ~= nil and I ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("W = IVt")
			W = V_Electric*I*t
			
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(V_Electric).."*"..Binesh.ProgressNumber(I).."*"..Binesh.ProgressNumber(t).." &#8658; W = "..Binesh.ProgressNumber(W).." J")
			
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Electric).." V", "V")
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("W = ?", "V")
		end
	end
	
	if V_Electric == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then
		if W ~= nil and I ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("W = IVt", "V = <span>W/It</span>")
			V_Electric = W/(I*t)
			
			Binesh.AddToHTML("V = <span>"..Binesh.ProgressNumber(W).."/"..Binesh.ProgressNumber(I).."*"..Binesh.ProgressNumber(t).."</span> &#8658; V = "..Binesh.ProgressNumber(V_Electric).." V")
			
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(W).." J", "V")
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("V = ?", "V")
		end
	end
	
	if I == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1) then
		if W ~= nil and V_Electric ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("W = IVt", "I = <span>W/Vt</span>")
			I = W/(V*t)
			
			Binesh.AddToHTML("I = <span>"..Binesh.ProgressNumber(W).."/"..Binesh.ProgressNumber(V_Electric).."</span>*"..Binesh.ProgressNumber(t).." &#8658; I = "..Binesh.ProgressNumber(I).." A")
			
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(W).." J", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Electric).." V", "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("I = ?", "V")
		end
	end
	
	if t == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1) then
		if W ~= nil and V_Electric ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("W = IVt", "t = <span>W/VI</span>")
			t = W/(V_Electric*I)
			
			Binesh.AddToHTML("t = <span>"..Binesh.ProgressNumber(W).."/"..Binesh.ProgressNumber(V_Electric).."*"..Binesh.ProgressNumber(I).."<sup>2</sup></span> &#8658; t = "..Binesh.ProgressNumber(t).." s")
			
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(W).." J", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Electric).." V", "V")
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("t = ?", "V")
		end
	end
end