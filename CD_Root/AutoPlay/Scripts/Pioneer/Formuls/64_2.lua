function Binesh.F64_2()
	if ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰Ã„«œ") ~= -1 then
		if Q == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "ê—„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Q") ~= -1 then
			if m ~= nil and L_F ~= nil then
				Q =  -m*L_F
				
				Binesh.CreateHTMLFile("Q = -mL<sub>F</sub>")
				Binesh.AddToHTML("Q = -"..m.."*"..L_F.." &#8658; Q = "..Q.." J")
				
				Binesh.AddToHTML("m: "..m.." Kg", "V")
				Binesh.AddToHTML("LF: "..L_F.." J/Kg", "V")
				Binesh.AddToHTML("Q: ?", "V")
			end
		end
		
		if m == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1 then
			if Q ~= nil and L_F ~= nil then
				m = Q/L_F
				
				Binesh.CreateHTMLFile("Q =  -mL<sub>F</sub>", "m = -(<span>Q/L<sub>F</sub></span>)")
				Binesh.AddToHTML("m = -(<span>"..Q.."/"..L_F.."</span>) &#8658; m = "..m.." Kg")
				
				Binesh.AddToHTML("Q: "..Q.." J", "V")
				Binesh.AddToHTML("LF: "..L_F.." J/Kg", "V")
				Binesh.AddToHTML("m: ?", "V")
			end
		end
		
		if L_F == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰Ã„«œ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "LF") ~= -1 then
			if Q ~= nil and m ~= nil then
				L_F = Q/m
				
				Binesh.CreateHTMLFile("Q =  -mL<sub>F</sub>", "L<sub>F</sub> = -(<span>Q/m</span>)")
				Binesh.AddToHTML("L<sub>F</sub> = -(<span>"..Q.."/"..m.."</span>) &#8658; L<sub>F</sub>= "..L_F.." J/Kg")
				
				Binesh.AddToHTML("Q: "..Q.." J", "V")
				Binesh.AddToHTML("m: "..m.." Kg", "V")
				Binesh.AddToHTML("LF: ?", "V")
			end
		end
	end
end