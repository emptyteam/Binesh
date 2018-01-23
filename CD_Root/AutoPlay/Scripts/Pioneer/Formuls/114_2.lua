function Binesh.F114_2()
	if U_Output == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ „’—›Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1 then
		if I ~= nil and t ~= nil and V_Electric ~= nil then
			U_Output =  V_Electric * I * t
			
			Binesh.CreateHTMLFile("U =  IVt")
			Binesh.AddToHTML("U = "..V_Electric.."*"..I.."*"..t.." &#8658; U = "..U_Output.." J")
			
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("U: ?", "V")
		end
	end
	
	if I == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
		if U_Output ~= nil and V_Electric ~= nil and t ~= nil then
			I = U_Output/V_Electric*t
			
			Binesh.CreateHTMLFile("U = VIt", "I = <span>U/Vt</span>")
			Binesh.AddToHTML("I = <span>"..U_Output.."/"..V_Electric.."*"..t.."</span> &#8658; I = "..I.." A")
			
			Binesh.AddToHTML("U: "..U_Output.." J", "V")
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("I: ?", "V")
		end
	end
	
	if V_Electric == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
		if I ~= nil and t ~= nil and U_Output ~= nil then
			V_Electric = U/I*t
			
			Binesh.CreateHTMLFile("U = VIt", "V = <span>U/It</span>")
			Binesh.AddToHTML("V = <span>"..U.."/"..I.."*"..t.."</span> &#8658; V = "..V_Electric.." V")
			
			Binesh.AddToHTML("U: "..U_Output.." J", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("V: ?", "V")
		end
	end
	
	if t == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1 then
		if V_Electric ~= nil and I ~= nil and U_Output ~= nil then
			t = U/I*V_Electric
			
			Binesh.CreateHTMLFile("U = VIt", "t = <span>U/IV</span>")
			Binesh.AddToHTML("t = <span>"..U_Output.."/"..I.."*"..V_Electric.."</span> &#8658; t = "..t.." s")
			
			Binesh.AddToHTML("U: "..U_Output.." J", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("t: ?", "V")
		end
	end
end