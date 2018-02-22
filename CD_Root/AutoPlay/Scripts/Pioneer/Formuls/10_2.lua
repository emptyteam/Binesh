function Binesh.F10_2()
	if P_Power == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1) then
		if V_Electric ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("P = IV")
			P_Power = (V_Electric*I)
			
			Binesh.AddToHTML("P = "..Binesh.ProgressNumber(V_Electric).."*"..Binesh.ProgressNumber(I).." &#8658; P = "..Binesh.ProgressNumber(P_Power).." W")
			
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Electric).." V", "V")
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("P = ?", "V")
		end
	end
	
	if V_Electric == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "���ǎ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then
		if P_Power ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("P = IV", "V = <span>P/I</span>")
			V_Electric = P_Power/I
			
			Binesh.AddToHTML("V = <span>"..Binesh.ProgressNumber(P_Power).."/"..Binesh.ProgressNumber(I).."<sup>2</sup></span> &#8658; V = "..Binesh.ProgressNumber(V_Electric).." V")
			
			Binesh.AddToHTML("P = "..Binesh.ProgressNumber(P_Power).." W", "V")
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("V = ?", "V")
		end
	end
	
	if I == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1) then
		if P_Power ~= nil and V_Electric ~= nil then
			Binesh.CreateHTMLFile("P = IV", "I = <span>P/V</span>")
			I = P_Power/V_Electric
			
			Binesh.AddToHTML("I = <span>"..Binesh.ProgressNumber(P_Power).."/"..Binesh.ProgressNumber(V_Electric).."</span> &#8658; I = "..Binesh.ProgressNumber(I).." A")
			
			Binesh.AddToHTML("P = "..Binesh.ProgressNumber(P_Power).." W", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Electric).." V", "V")
			Binesh.AddToHTML("I = ?", "V")
		end
	end
end