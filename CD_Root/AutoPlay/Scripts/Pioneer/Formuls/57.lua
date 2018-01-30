function Binesh.F57()
	if Ru == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "çê«·Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ru") ~= -1) then
		if m ~= nil and V ~= nil then
			Binesh.CreateHTMLFile("Ru = <span>m/V</span>")
			Ru = m/V
			
			Binesh.AddToHTML("Ru = <span>"..m.."/"..V.."</span> &#8658; Ru = "..Ru.." Kg/m<sup>3</sup>")
			
			Binesh.AddToHTML("m: "..m.." Kg", "V")
			Binesh.AddToHTML("V: "..V.." m<sup>3</sup>", "V")
			Binesh.AddToHTML("Ru: ?", "V")
		end
	end
	
	if m == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1) then
		if Ru ~= nil and V ~= nil then
			Binesh.CreateHTMLFile("Ru = <span>m/V</span>", "m = RuV")
			m = Ru*V
			
			Binesh.AddToHTML("m = "..Ru.."*"..V.."</span> &#8658; m = "..math.abs(m).." Kg")
			
			Binesh.AddToHTML("Ru: "..Ru.." Kg/m<sup>3</sup>", "V")
			Binesh.AddToHTML("V: "..V.." m<sup>3</sup>", "V")
			Binesh.AddToHTML("m: ?", "V")
		end
	end
	
	if V == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÕÃ„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then
		if Ru ~= nil and m ~= nil then
			Binesh.CreateHTMLFile("Ru = <span>m/V</span>", "V = <span>m/Ru</span>")
			V = m/Ru
			
			Binesh.AddToHTML("V = <span>"..m.."/"..Ru.."</span> &#8658; V = "..V.." m<sup>3</sup>")
			
			Binesh.AddToHTML("m: "..m.." Kg", "V")
			Binesh.AddToHTML("Ru: "..Ru.." Kg/m<sup>3</sup>", "V")
			Binesh.AddToHTML("V: ?", "V")
		end
	end
end