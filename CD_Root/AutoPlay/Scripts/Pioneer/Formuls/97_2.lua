function Binesh.F97_2()
	if U == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1) then
		if q ~= nil and C_Condenser ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span><span>q<sup>2</sup>/C</span>")
			U = 0.5*(q^2/C_Condenser)
			
			Binesh.AddToHTML("U = <span>1/2</span>*<span>"..Binesh.ProgressNumber(q).."<sup>2</sup>/"..Binesh.ProgressNumber(C_Condenser).."</span> &#8658; U = "..Binesh.ProgressNumber(U).." J")
			
			Binesh.AddToHTML("C = "..Binesh.ProgressNumber(C_Condenser).." F", "V")
			Binesh.AddToHTML("q = "..Binesh.ProgressNumber(q).." C", "V")
			Binesh.AddToHTML("U = ?", "V")
		end
	end
	
	if C_Condenser == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ÿ—›Ì ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "C") ~= -1) then
		if q ~= nil and U ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span><span>q<sup>2</sup>/C</span>", "C = <span>q<sup>2</sup>/2U</span>")
			C_Condenser = (q^2)/(2*U)
			
			Binesh.AddToHTML("C = <span>"..Binesh.ProgressNumber(q).."<sup>2</sup>/2*"..Binesh.ProgressNumber(U).."</span> &#8658; C = "..Binesh.ProgressNumber(C_Condenser).." F")
			
			Binesh.AddToHTML("U = "..Binesh.ProgressNumber(U).." J", "V")
			Binesh.AddToHTML("q = "..Binesh.ProgressNumber(q).." C", "V")
			Binesh.AddToHTML("C = ?", "V")
		end
	end
	
	if q == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1) then
		if U ~= nil and C_Condenser ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span><span>q<sup>2</sup>/C</span>", "q = Sqrt(2CU)")
			q = Math.Sqrt(2*U*C_Condenser)
			
			Binesh.AddToHTML("q = Sqrt(2*"..Binesh.ProgressNumber(C_Condenser).."*"..Binesh.ProgressNumber(U)..") &#8658; q = "..Binesh.ProgressNumber(q).." C")
			
			Binesh.AddToHTML("U = "..Binesh.ProgressNumber(U).." J", "V")
			Binesh.AddToHTML("C = "..Binesh.ProgressNumber(C_Condenser).." F", "V")
			Binesh.AddToHTML("q = ?", "V")
		end
	end
end