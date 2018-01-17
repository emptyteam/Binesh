function Binesh.F58()
	if Pa ~= nil then
		Binesh.CreateHTMLFile("P<sub>Pascal</sub> = P<sub>atm</sub>*10<sup>5</sup>")
		P = Pa*10^5
		Binesh.AddToHTML("P<sub>Pascal</sub> = "..Pa.."*10<sup>5</sup> &#8658; P<sub>Pascal</sub> = "..P.."Pa")
	end
	
	if P == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "›‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1 then
		if F ~= nil and A ~= nil then
			Binesh.CreateHTMLFile("P = <span>F/A</span>")
			P = F/A
			
			Binesh.AddToHTML("P = <span>"..F.."/"..A.."</span> &#8658; P = "..P.." Pa")
			
			Binesh.AddToHTML("F: "..F.." N", "V")
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("P: ?", "V")
		end
	end
	
	if F == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1 then
		if P ~= nil and A ~= nil then
			Binesh.CreateHTMLFile("P = <span>F/A</span>", "F = PA")
			F = P*A
			
			Binesh.AddToHTML("F = "..P.."*"..A.." &#8658; F = "..F.." N")
			
			Binesh.AddToHTML("P: "..P.." Pa", "V")
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("F: ?", "V")
		end
	end
	
	if A == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "A") ~= -1 then
		if P ~= nil and F ~= nil then
			Binesh.CreateHTMLFile("P = <span>F/A</span>", "A = <span>F/P</span>")
			A = F/P
			
			Binesh.AddToHTML("A = <span>"..F.."/"..P.."</span> &#8658; A = "..A.." m<sup>2</sup>")
			
			Binesh.AddToHTML("P: "..P.." Pa", "V")
			Binesh.AddToHTML("F: "..F.." N", "V")
			Binesh.AddToHTML("A: ?", "V")
		end
	end
end