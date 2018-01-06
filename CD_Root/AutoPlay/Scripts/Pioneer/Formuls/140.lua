function Binesh.F140()
	if U_PipeWire == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÇäÑŽí") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1 then
		if L ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span>LI<sup>2</sup>")
			U_PipeWire = 0.5*L*(I^2)
			
			Binesh.AddToHTML("U = <span>1/2</span>*"..L.."*"..I.."<sup>2</sup> &#8658; U = "..U_PipeWire.." J")
			
			Binesh.AddToHTML("L: "..L.." m", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("U: ?", "V")
		end
	end
	
	if L == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "Øæá") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L") ~= -1 then
		if U_PipeWire ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span>LI<sup>2</sup>", "L = 2U/I<sup>2</sup>")
			L = 2*U_PipeWire/(I^2)
			
			Binesh.AddToHTML("L = 2*"..U_PipeWire.."/"..I.."<sup>2</sup> &#8658; L = "..L.." m")
			
			Binesh.AddToHTML("U: "..U_PipeWire.." J", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("L: ?", "V")
		end
	end
	
	if I == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÌÑíÇä") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
		if U_PipeWire ~= nil and L ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span>LI<sup>2</sup>", "I = Sqrt(2U/L)")
			I = Math.Sqrt(2*U_PipeWire/L)
			
			Binesh.AddToHTML("I = Sqrt(2*"..U_PipeWir.."/"..L..") &#8658; I = "..I.." A")
			
			Binesh.AddToHTML("U: "..U_PipeWire.." J", "V")
			Binesh.AddToHTML("L: "..L.." m", "V")
			Binesh.AddToHTML("I: ?", "V")
		end
	end
end