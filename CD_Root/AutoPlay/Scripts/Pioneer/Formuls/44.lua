function Binesh.F44()
	if F == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1) then
		if m ~= nil and a ~= nil then
			Binesh.CreateHTMLFile("F = ma")
			F = (m)*(a)
			
			Binesh.AddToHTML("F = "..Binesh.Convert_e(m).."*"..Binesh.Convert_e(a).." &#8658; F = "..Binesh.Convert_e(F).." N")
			
			Binesh.AddToHTML("m: "..Binesh.Convert_e(m).." Kg", "V")
			Binesh.AddToHTML("a: "..Binesh.Convert_e(a).." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("F: ?", "V")
		end
	end
	
	if m == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1) then
		if F ~= nil and a ~= nil then
			Binesh.CreateHTMLFile("F = ma", "m = <span>F/a</span>")
			m = (F)/(a)
			
			Binesh.AddToHTML("m = <span>"..Binesh.Convert_e(F).."/"..Binesh.Convert_e(a).."</span> &#8658; m = "..Binesh.Convert_e(math.abs(m)).." Kg")
			
			Binesh.AddToHTML("F: "..Binesh.Convert_e(F).." N", "V")
			Binesh.AddToHTML("a: "..Binesh.Convert_e(a).." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("m: ?", "V")
		end
	end
	
	if a == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "‘ «»") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "a") ~= -1) then
		if F ~= nil and m ~= nil then
			Binesh.CreateHTMLFile("F = ma", "a = <span>F/m</span>")
			a = (F)/(m)
			
			Binesh.AddToHTML("a = <span>"..Binesh.Convert_e(F).."/"..Binesh.Convert_e(m).."</span> &#8658; a = "..Binesh.Convert_e(a).." m/s<sup>2</sup>")
			
			Binesh.AddToHTML("F: "..Binesh.Convert_e(F).." N", "V")
			Binesh.AddToHTML("m: "..Binesh.Convert_e(m).." Kg", "V")
			Binesh.AddToHTML("a: ?", "V")
		end
	end
end