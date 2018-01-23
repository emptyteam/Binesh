function Binesh.F65_1()
	if ListBox.FindItem("Words", -1, LB_BYTEXT, " »ŒÌ—") ~= -1 then
		if Q == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "ê—„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Q") ~= -1 then
			if m ~= nil and LV ~= nil then
				Binesh.CreateHTMLFile("Q = mL<sub>V</sub>")
				Q = m*LV
				
				Binesh.AddToHTML("Q = "..m.."*"..LV.." &#8658; Q = "..Q.." J")
				
				Binesh.AddToHTML("m: "..m.." Kg", "V")
				Binesh.AddToHTML("L<sub>V</sub>: "..LV.." <span>J/kg</span>", "V")
				Binesh.AddToHTML("Q: ?", "V")
			end
		end
		
		if m == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1 then
			if LV ~= nil and Q ~= nil then
				Binesh.CreateHTMLFile("Q = mL<sub>V</sub>", "m = <span>Q/L<sub>V</sub></span>")
				m = Q/LV
				
				Binesh.AddToHTML("m = <span>"..Q.."/"..LV.."</span> &#8658; m = "..m.." Kg")
				
				Binesh.AddToHTML("Q: "..Q.." J", "V")
				Binesh.AddToHTML("L<sub>V</sub>: "..LV.." <span>J/kg</span>", "V")
				Binesh.AddToHTML("m: ?", "V")
			end
		end
		
		if LV == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, " »ŒÌ—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "LV") ~= -1 then
			if Q ~= nil and m ~= nil then
				Binesh.CreateHTMLFile("Q = mL<sub>V</sub>", "L<sub>V</sub> = <span>Q/m</span>")
				LV = Q/m
				
				Binesh.AddToHTML("L<sub>V</sub> = <span>"..Q.."/"..m.."</span> &#8658; L<sub>V</sub> = "..LV.." J/kg")
				
				Binesh.AddToHTML("Q: "..Q.." J", "V")
				Binesh.AddToHTML("m: "..m.." Kg", "V")
				Binesh.AddToHTML("L<sub>V</sub>: ?", "V")
			end
		end
	end
end