function Binesh.F8_2()
	if W == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ «·ò —ÌòÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1) then
		if V_Electric ~= nil and I ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("W = IVt")
			W = V_Electric*I*t
			
			Binesh.AddToHTML("W = "..V_Electric.."*"..I.."*"..t.." &#8658; W = "..W.." J")
			
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("W: ?", "V")
		end
	end
	
	if V_Electric == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then
		if W ~= nil and I ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("W = IVt", "V = <span>W/It</span>")
			V_Electric = W/(I*t)
			
			Binesh.AddToHTML("V = <span>"..W.."/"..I.."*"..t.."</span> &#8658; V = "..V_Electric.." V")
			
			Binesh.AddToHTML("W: "..W.." J", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("V: ?", "V")
		end
	end
	
	if I == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1) then
		if W ~= nil and V_Electric ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("W = IVt", "I = <span>W/Vt</span>")
			I = W/(V*t)
			
			Binesh.AddToHTML("I = <span>"..W.."/"..V_Electric.."</span>*"..t.." &#8658; I = "..I.." A")
			
			Binesh.AddToHTML("W: "..W.." J", "V")
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("I: ?", "V")
		end
	end
	
	if t == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1) then
		if W ~= nil and V_Electric ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("W = IVt", "t = <span>W/VI</span>")
			t = W/(V_Electric*I)
			
			Binesh.AddToHTML("t = <span>"..W.."/"..V_Electric.."*"..I.."<sup>2</sup></span> &#8658; t = "..t.." s")
			
			Binesh.AddToHTML("W: "..W.." J", "V")
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("t: ?", "V")
		end
	end
end