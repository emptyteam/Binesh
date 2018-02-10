function Binesh.F64_1()
	if String.Find(Input.GetText("Input1"), "–Ê»", 1, false) ~= -1 then
		if Q == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ê—„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Q") ~= -1) then
			if m ~= nil and L_F ~= nil then
				Q =  m*L_F
				
				Binesh.CreateHTMLFile("Q = mL<sub>F</sub>")
				Binesh.AddToHTML("Q = "..Binesh.Convert_e(m).."*"..Binesh.Convert_e(L_F).." &#8658; Q = "..Binesh.Convert_e(Q).." J")
				
				Binesh.AddToHTML("m: "..Binesh.Convert_e(m).." Kg", "V")
				Binesh.AddToHTML("LF: "..Binesh.Convert_e(L_F).." J/Kg", "V")
				Binesh.AddToHTML("Q: ?", "V")
			end
		end
		
		if m == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1) then
			if Q ~= nil and L_F ~= nil then
				m = Q/L_F
				
				Binesh.CreateHTMLFile("Q =  mL<sub>F</sub>", "m = <span>Q/L<sub>F</sub></span>")
				Binesh.AddToHTML("m = <span>"..Binesh.Convert_e(Q).."/"..Binesh.Convert_e(L_F).."</span> &#8658; m = "..Binesh.Convert_e(math.abs(m)).." Kg")
				
				Binesh.AddToHTML("Q: "..Binesh.Convert_e(Q).." J", "V")
				Binesh.AddToHTML("LF: "..Binesh.Convert_e(L_F).." J/Kg", "V")
				Binesh.AddToHTML("m: ?", "V")
			end
		end
		
		if L_F == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "–Ê»") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "LF") ~= -1) then
			if Q ~= nil and m ~= nil then
				L_F = Q/m
				
				Binesh.CreateHTMLFile("Q =  mL<sub>F</sub>", "L<sub>F</sub> = <span>Q/m</span>")
				Binesh.AddToHTML("L<sub>F</sub> = <span>"..Binesh.Convert_e(Q).."/"..Binesh.Convert_e(m).."</span> &#8658; L<sub>F</sub>= "..Binesh.Convert_e(L_F).." J/Kg")
				
				Binesh.AddToHTML("Q: "..Binesh.Convert_e(Q).." J", "V")
				Binesh.AddToHTML("m: "..Binesh.Convert_e(m).." Kg", "V")
				Binesh.AddToHTML("LF: ?", "V")
			end
		end
	end
end