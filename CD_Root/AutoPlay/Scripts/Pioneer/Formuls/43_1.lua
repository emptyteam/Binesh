function Binesh.F43_1()
	if F == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1) then
		if k_Coil ~= nil and _Deltax ~= nil then
			Binesh.CreateHTMLFile("F = -kDeltax")
			F = -k_Coil*_Deltax
			
			Binesh.AddToHTML("F = -"..Binesh.Convert_e(k_Coil).."*"..Binesh.Convert_e(_Deltax).." &#8658; F = "..Binesh.Convert_e(F).." N")
			
			Binesh.AddToHTML("k: "..Binesh.Convert_e(k_Coil).." N/m", "V")
			Binesh.AddToHTML("Deltax: "..Binesh.Convert_e(_Deltax).." m", "V")
			Binesh.AddToHTML("F: ?", "V")
		end
	end
	
	if k_Coil == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "���� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "k") ~= -1) then
		if F ~= nil and _Deltax ~= nil then
			Binesh.CreateHTMLFile("F = -kDeltax", "k = - <span>F/Deltax</span>")
			k_Coil = -F/_Deltax
			
			Binesh.AddToHTML("k = - <span>"..Binesh.Convert_e(F).."/"..Binesh.Convert_e(_Deltax).."</span> &#8658; k = "..Binesh.Convert_e(k_Coil).." N/m")
			
			Binesh.AddToHTML("F: "..Binesh.Convert_e(F).." N", "V")
			Binesh.AddToHTML("Deltax: "..Binesh.Convert_e(_Deltax).." m", "V")
			Binesh.AddToHTML("k: ?", "V")
		end
	end
	
	if _Deltax == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltax") ~= -1)) then
		if F ~= nil and k_Coil ~= nil then
			Binesh.CreateHTMLFile("F = -kDeltax", "Deltax = - <span>F/k</span>")
			_Deltax = -F/k_Coil
			
			Binesh.AddToHTML("Deltax = - <span>"..Binesh.Convert_e(F).."/"..Binesh.Convert_e(k_Coil).."</span> &#8658; Deltax = "..Binesh.Convert_e(_Deltax).." m")
			
			Binesh.AddToHTML("F: "..Binesh.Convert_e(F).." N", "V")
			Binesh.AddToHTML("k: "..Binesh.Convert_e(k_Coil).." N/m", "V")
			Binesh.AddToHTML("Deltax: ?", "V")
		end
	end
end