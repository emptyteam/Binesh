function Binesh.F114_2()
	if U_Output == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "��ю� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1) then
		if I ~= nil and t ~= nil and V_Electric ~= nil then
			U_Output = V_Electric * I * t
			
			Binesh.CreateHTMLFile("U = IVt")
			Binesh.AddToHTML("U = "..Binesh.ProgressNumber(I).."*"..Binesh.ProgressNumber(V_Electric).."*"..Binesh.ProgressNumber(t).." &#8658; U = "..Binesh.ProgressNumber(U_Output).." J")
			
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Electric).." V", "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("U = ?", "V")
		end
	end
	
	if I == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1) then
		if U_Output ~= nil and V_Electric ~= nil and t ~= nil then
			I = U_Output/V_Electric*t
			
			Binesh.CreateHTMLFile("U = VIt", "I = <span>U/Vt</span>")
			Binesh.AddToHTML("I = <span>"..Binesh.ProgressNumber(U_Output).."/"..Binesh.ProgressNumber(V_Electric).."*"..Binesh.ProgressNumber(t).."</span> &#8658; I = "..Binesh.ProgressNumber(I).." A")
			
			Binesh.AddToHTML("U = "..Binesh.ProgressNumber(U_Output).." J", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Electric).." V", "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("I = ?", "V")
		end
	end
	
	if V_Electric == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "���ǎ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then
		if I ~= nil and t ~= nil and U_Output ~= nil then
			V_Electric = U/I*t
			
			Binesh.CreateHTMLFile("U = VIt", "V = <span>U/It</span>")
			Binesh.AddToHTML("V = <span>"..Binesh.ProgressNumber(U).."/"..Binesh.ProgressNumber(I).."*"..Binesh.ProgressNumber(t).."</span> &#8658; V = "..Binesh.ProgressNumber(V_Electric).." V")
			
			Binesh.AddToHTML("U = "..Binesh.ProgressNumber(U_Output).." J", "V")
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("V = ?", "V")
		end
	end
	
	if t == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1) then
		if V_Electric ~= nil and I ~= nil and U_Output ~= nil then
			t = U/I*V_Electric
			
			Binesh.CreateHTMLFile("U = VIt", "t = <span>U/IV</span>")
			Binesh.AddToHTML("t = <span>"..Binesh.ProgressNumber(U_Output).."/"..Binesh.ProgressNumber(I).."*"..Binesh.ProgressNumber(V_Electric).."</span> &#8658; t = "..Binesh.ProgressNumber(t).." s")
			
			Binesh.AddToHTML("U = "..Binesh.ProgressNumber(U_Output).." J", "V")
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Electric).." V", "V")
			Binesh.AddToHTML("t = ?", "V")
		end
	end
end