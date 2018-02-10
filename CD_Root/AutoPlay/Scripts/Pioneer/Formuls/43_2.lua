function Binesh.F43_2()
	if _x1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "x1") ~= -1)) then
		if F ~= nil and k_Coil ~= nil and _x2 ~= nil then
			Binesh.CreateHTMLFile("F = -k(x<sub>2</sub>-x<sub>1</sub>)", "x<sub>2</sub>-x<sub>1</sub> = - <span>F/k</span>")
			Binesh.AddToHTML("x<sub>1</sub> = x<sub>2</sub>+ <span>F/k</span> &#8658; ")
			_x1 = _x2+(F/k_Coil)
			
			Binesh.AddToHTML("x<sub>1</sub> = "..Binesh.Convert_e(_x2).."+ <span>"..Binesh.Convert_e(F).."/"..Binesh.Convert_e(k_Coil).."</span> &#8658; x<sub>1</sub> = "..Binesh.Convert_e(_x1).." m")
			
			Binesh.AddToHTML("x<sub>2</sub>: "..Binesh.Convert_e(_x2).." m", "V")
			Binesh.AddToHTML("F: "..Binesh.Convert_e(F).." N", "V")
			Binesh.AddToHTML("k: "..Binesh.Convert_e(k_Coil).." N/m", "V")
			Binesh.AddToHTML("x<sub>1</sub>: ?", "V")
		end
	end
	
	if _x2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "x2") ~= -1)) then
		if F ~= nil and k_Coil ~= nil and _x2 ~= nil then
			Binesh.CreateHTMLFile("F = -k(x<sub>2</sub>-x<sub>1</sub>)", "x<sub>2</sub>-x<sub>1</sub> = - <span>F/k</span>")
			Binesh.AddToHTML("x<sub>2</sub> = x<sub>1</sub>- <span>F/k</span> &#8658; ")
			_x2 = _x1-(F/k_Coil)
			
			Binesh.AddToHTML("x<sub>2</sub> = "..Binesh.Convert_e(_x1).."- <span>"..Binesh.Convert_e(F).."/"..Binesh.Convert_e(k_Coil).."</span> &#8658; x<sub>2</sub> = "..Binesh.Convert_e(_x2).." m")
			
			Binesh.AddToHTML("x<sub>1</sub>: "..Binesh.Convert_e(_x2).." m", "V")
			Binesh.AddToHTML("F: "..Binesh.Convert_e(F).." N", "V")
			Binesh.AddToHTML("k: "..Binesh.Convert_e(k_Coil).." N/m", "V")
			Binesh.AddToHTML("x<sub>2</sub>: ?", "V")
		end
	end
end