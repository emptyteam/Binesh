function Binesh.F97_1()
	if U == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1 then
		if V_Electric ~= nil and C_Condenser ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span>CV<sup>2</sup>")
			U = 0.5*C_Condenser*V_Electric^2
			
			Binesh.AddToHTML("U = <span>1/2</span>*"..C_Condenser.."*"..V_Electric.."<sup>2</sup> &#8658; U = "..U.." J")
			
			Binesh.AddToHTML("C: "..C_Condenser.." F", "V")
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("U: ?", "V")
		end
	end
	
	if C_Condenser == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ÿ—›Ì ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "C") ~= -1 then
		if V_Electric ~= nil and U ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span>CV<sup>2</sup>", "C = <span>2U/V<sup>2</sup></span>")
			C_Condenser = (2*U)/(V_Electric^2)
			
			Binesh.AddToHTML("C = <span>2*"..U.."/"..V_Electric.."<sup>2</sup></span> &#8658; C = "..C_Condenser.." F")
			
			Binesh.AddToHTML("U: "..U.." J", "V")
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("C: ?", "V")
		end
	end
	
	if V_Electric == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
		if U ~= nil and C_Condenser ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span>CV<sup>2</sup>", "V = Sqrt(<span>2U/C</span>)")
			V_Electric = Math.Sqrt(2*U/C_Condenser)
			
			Binesh.AddToHTML("V = Sqrt(<span>2*"..U.."/"..C_Condenser.."</span>) &#8658; V = "..V_Electric.." V")
			
			Binesh.AddToHTML("U: "..U.." J", "V")
			Binesh.AddToHTML("C: "..C_Condenser.." F", "V")
			Binesh.AddToHTML("V: ?", "V")
		end
	end
end