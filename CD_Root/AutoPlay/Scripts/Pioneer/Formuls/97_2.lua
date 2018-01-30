function Binesh.F97_2()
	if U == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1) then
		if q ~= nil and C_Condenser ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span><span>q<sup>2</sup>/C</span>")
			U = 0.5*(q^2/C_Condenser)
			
			Binesh.AddToHTML("U = <span>1/2</span>*<span>"..q.."<sup>2</sup>/"..C_Condenser.."</span> &#8658; U = "..U.." J")
			
			Binesh.AddToHTML("C: "..C_Condenser.." F", "V")
			Binesh.AddToHTML("q: "..q.." C", "V")
			Binesh.AddToHTML("U: ?", "V")
		end
	end
	
	if C_Condenser == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ÿ—›Ì ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "C") ~= -1) then
		if q ~= nil and U ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span><span>q<sup>2</sup>/C</span>", "C = <span>q<sup>2</sup>/2U</span>")
			C_Condenser = (q^2)/(2*U)
			
			Binesh.AddToHTML("C = <span>"..q.."<sup>2</sup>/2*"..U.."</span> &#8658; C = "..C_Condenser.." F")
			
			Binesh.AddToHTML("U: "..U.." J", "V")
			Binesh.AddToHTML("q: "..q.." C", "V")
			Binesh.AddToHTML("C: ?", "V")
		end
	end
	
	if q == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1) then
		if U ~= nil and C_Condenser ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span><span>q<sup>2</sup>/C</span>", "q = Sqrt(2CU)")
			q = Math.Sqrt(2*U*C_Condenser)
			
			Binesh.AddToHTML("q = Sqrt(2*"..C_Condenser.."*"..U..") &#8658; q = "..q.." C")
			
			Binesh.AddToHTML("U: "..U.." J", "V")
			Binesh.AddToHTML("C: "..C_Condenser.." F", "V")
			Binesh.AddToHTML("q: ?", "V")
		end
	end
end