function Binesh.F10_2()
	if P_Power == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, " Ê«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1) then
		if V_Electric ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("P = IV")
			P_Power = (V_Electric*I)
			
			Binesh.AddToHTML("P = "..V_Electric.."*"..I.." &#8658; P = "..P_Power.." W")
			
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("P: ?", "V")
		end
	end
	
	if V_Electric == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then
		if P_Power ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("P = IV", "V = <span>P/I</span>")
			V_Electric = P_Power/I
			
			Binesh.AddToHTML("V = <span>"..P_Power.."/"..I.."<sup>2</sup></span> &#8658; V = "..V_Electric.." V")
			
			Binesh.AddToHTML("P: "..P_Power.." W", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("V: ?", "V")
		end
	end
	
	if I == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1) then
		if P_Power ~= nil and V_Electric ~= nil then
			Binesh.CreateHTMLFile("P = IV", "I = <span>P/V</span>")
			I = P_Power/V_Electric
			
			Binesh.AddToHTML("I = <span>"..P_Power.."/"..V_Electric.."</span> &#8658; I = "..I.." A")
			
			Binesh.AddToHTML("P: "..P_Power.." W", "V")
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("I: ?", "V")
		end
	end
end