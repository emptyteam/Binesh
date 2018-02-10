function Binesh.F97_2()
	if U == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1) then
		if q ~= nil and C_Condenser ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span><span>q<sup>2</sup>/C</span>")
			U = 0.5*(q^2/C_Condenser)
			
			Binesh.AddToHTML("U = <span>1/2</span>*<span>"..Binesh.Convert_e(q).."<sup>2</sup>/"..Binesh.Convert_e(C_Condenser).."</span> &#8658; U = "..Binesh.Convert_e(U).." J")
			
			Binesh.AddToHTML("C: "..Binesh.Convert_e(C_Condenser).." F", "V")
			Binesh.AddToHTML("q: "..Binesh.Convert_e(q).." C", "V")
			Binesh.AddToHTML("U: ?", "V")
		end
	end
	
	if C_Condenser == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ÿ—›Ì ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "C") ~= -1) then
		if q ~= nil and U ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span><span>q<sup>2</sup>/C</span>", "C = <span>q<sup>2</sup>/2U</span>")
			C_Condenser = (q^2)/(2*U)
			
			Binesh.AddToHTML("C = <span>"..Binesh.Convert_e(q).."<sup>2</sup>/2*"..Binesh.Convert_e(U).."</span> &#8658; C = "..Binesh.Convert_e(C_Condenser).." F")
			
			Binesh.AddToHTML("U: "..Binesh.Convert_e(U).." J", "V")
			Binesh.AddToHTML("q: "..Binesh.Convert_e(q).." C", "V")
			Binesh.AddToHTML("C: ?", "V")
		end
	end
	
	if q == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1) then
		if U ~= nil and C_Condenser ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span><span>q<sup>2</sup>/C</span>", "q = Sqrt(2CU)")
			q = Math.Sqrt(2*U*C_Condenser)
			
			Binesh.AddToHTML("q = Sqrt(2*"..Binesh.Convert_e(C_Condenser).."*"..Binesh.Convert_e(U)..") &#8658; q = "..Binesh.Convert_e(q).." C")
			
			Binesh.AddToHTML("U: "..Binesh.Convert_e(U).." J", "V")
			Binesh.AddToHTML("C: "..Binesh.Convert_e(C_Condenser).." F", "V")
			Binesh.AddToHTML("q: ?", "V")
		end
	end
end