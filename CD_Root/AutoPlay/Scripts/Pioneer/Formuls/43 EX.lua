function Binesh.F43_EX()
	if F == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1) then
		if k_Coil ~= nil and d ~= nil then
			Binesh.CreateHTMLFile("F = -kx")
			F = -k_Coil*d
			
			Binesh.AddToHTML("F = -"..Binesh.ProgressNumber(k_Coil).."*"..Binesh.ProgressNumber(d).." &#8658; F = "..Binesh.ProgressNumber(F).." N")
			
			Binesh.AddToHTML("k = "..Binesh.ProgressNumber(k_Coil).." N/m", "V")
			Binesh.AddToHTML("x = "..Binesh.ProgressNumber(d).." m", "V")
			Binesh.AddToHTML("F = ?", "V")
		end
	end
	
	if k_Coil == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» ›‰—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "k") ~= -1) then
		if F ~= nil and d ~= nil then
			Binesh.CreateHTMLFile("F = -kx", "k = - <span>F/x</span>")
			k_Coil = -F/d
			
			Binesh.AddToHTML("k = - <span>"..Binesh.ProgressNumber(F).."/"..Binesh.ProgressNumber(d).."</span> &#8658; k = "..Binesh.ProgressNumber(k_Coil).." N/m")
			
			Binesh.AddToHTML("F = "..Binesh.ProgressNumber(F).." N", "V")
			Binesh.AddToHTML("x = "..Binesh.ProgressNumber(_Deltax).." m", "V")
			Binesh.AddToHTML("k = ?", "V")
		end
	end
	
	if d == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "x") ~= -1) then
		if F ~= nil and k_Coil ~= nil then
			Binesh.CreateHTMLFile("F = -kx", "x = - <span>F/k</span>")
			d = -F/k_Coil
			
			Binesh.AddToHTML("x = - <span>"..Binesh.ProgressNumber(F).."/"..Binesh.ProgressNumber(k_Coil).."</span> &#8658; x = "..Binesh.ProgressNumber(d).." m")
			
			Binesh.AddToHTML("F = "..Binesh.ProgressNumber(F).." N", "V")
			Binesh.AddToHTML("k = "..Binesh.ProgressNumber(k_Coil).." N/m", "V")
			Binesh.AddToHTML("x = ?", "V")
		end
	end
end