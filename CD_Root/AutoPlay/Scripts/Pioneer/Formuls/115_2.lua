function Binesh.F115_2()
	if P_Power == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1) then
		if I ~= nil and V_Electric ~= nil then
			P_Power =  V_Electric * I
			
			Binesh.CreateHTMLFile("P =  IV")
			Binesh.AddToHTML("P = "..Binesh.Convert_e(I).."*"..Binesh.Convert_e(V_Electric).." &#8658; P = "..Binesh.Convert_e(P_Power).." W")
			
			Binesh.AddToHTML("I: "..Binesh.Convert_e(I).." A", "V")
			Binesh.AddToHTML("V: "..Binesh.Convert_e(V_Electric).." V", "V")
			Binesh.AddToHTML("P: ?", "V")
		end
	end
	
	if I == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1) then
		if P_Power ~= nil and V_Electric ~= nil then
			I = P_Power/V_Electric
			
			Binesh.CreateHTMLFile("P = IV", "I = <span>P/V</span>")
			Binesh.AddToHTML("I = <span>"..Binesh.Convert_e(P_Power).."/"..Binesh.Convert_e(V_Electric).."</span> &#8658; I = "..Binesh.Convert_e(I).." A")
			
			Binesh.AddToHTML("W: "..Binesh.Convert_e(P_Power).." W", "V")
			Binesh.AddToHTML("V: "..Binesh.Convert_e(V_Electric).." V", "V")
			Binesh.AddToHTML("I: ?", "V")
		end
	end
	
	if V_Electric == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "���ǎ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then
		if I ~= nil and P_Power ~= nil then
			V_Electric = P_Power/I
			
			Binesh.CreateHTMLFile("P = IV", "V = <span>P/I</span>")
			Binesh.AddToHTML("V = <span>"..Binesh.Convert_e(P_Power).."/"..Binesh.Convert_e(I).."</span> &#8658; V = "..Binesh.Convert_e(V_Electric).." V")
			
			Binesh.AddToHTML("P: "..Binesh.Convert_e(P_Power).." W", "V")
			Binesh.AddToHTML("I: "..Binesh.Convert_e(I).." A", "V")
			Binesh.AddToHTML("V: ?", "V")
		end
	end
end