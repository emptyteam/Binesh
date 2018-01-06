function Binesh.F137()
	if Epsilon == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê „Õ—òÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Epsilon") ~= -1 then
		if V_Speed ~= nil and B ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("Epsilon = BIV")
			Epsilon = B*I*V_Speed
			
			Binesh.AddToHTML("Epsilon = "..B.."*"..I.."*"..V_Speed.." &#8658; Epsilon = "..Epsilon.." V")
			
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("V: "..V_Speed.." m/s", "V")
			Binesh.AddToHTML("Epsilon : ?", "V")
		end
	end
	
	if B == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1 then
		if V_Speed ~= nil and Epsilon ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("Epsilon = BIV","B = <span>Epsilon/IV</span>")
			B = Epsilon/(I*V_Speed)
			
			Binesh.AddToHTML("B = <span>"..Epsilon.."/"..I.."*"..V_Speed.."</span> &#8658; B = "..B.."T")
			
			Binesh.AddToHTML("Epsilon: "..Epsilon.." V", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("V: "..V_Speed.." m/s", "V")
			Binesh.AddToHTML("B : ?", "V")
		end
	end
	
	if I == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
		if V_Speed ~= nil and Epsilon ~= nil and B ~= nil then
			Binesh.CreateHTMLFile("Epsilon = BIV","I = <span>Epsilon/BV</span>")
			I = Epsilon/(B*V_Speed)
			
			Binesh.AddToHTML("I = <span>"..Epsilon.."/"..B.."*"..V_Speed.."</span> &#8658; I = "..I.." A")
			
			Binesh.AddToHTML("Epsilon: "..Epsilon.." V", "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("V: "..V_Speed.." m/s", "V")
			Binesh.AddToHTML("I : ?", "V")
		end
	end
	
	if V_Speed == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
		if V_Speed ~= nil and B ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("Epsilon = BIV","V = <span>Epsilon/IB</span>")
			V_Speed = Epsilon/B*I
			
			Binesh.AddToHTML("V = <span>"..Epsilon.."/"..B.."*"..I.."</span> &#8658; V = "..V_Speed.." m/s")
			
			Binesh.AddToHTML("Epsilon: "..Epsilon.." V", "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("V : ?", "V")
		end
	end
end