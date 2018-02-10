function Binesh.F140()
	if U_PipeWire == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1) then
		if L_Self ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span>LI<sup>2</sup>")
			U_PipeWire = 0.5*L_Self*(I^2)
			
			Binesh.AddToHTML("U = <span>1/2</span>*"..Binesh.Convert_e(L_Self).."*"..Binesh.Convert_e(I).."<sup>2</sup> &#8658; U = "..Binesh.Convert_e(U_PipeWire).." J")
			
			Binesh.AddToHTML("L: "..Binesh.Convert_e(L_Self).." m", "V")
			Binesh.AddToHTML("I: "..Binesh.Convert_e(I).." A", "V")
			Binesh.AddToHTML("U: ?", "V")
		end
	end
	
	if L_Self == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» ŒÊœ«·ﬁ«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L") ~= -1) then
		if U_PipeWire ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span>LI<sup>2</sup>", "L = 2U/I<sup>2</sup>")
			L_Self = 2*U_PipeWire/(I^2)
			
			Binesh.AddToHTML("L = 2*"..Binesh.Convert_e(U_PipeWire).."/"..Binesh.Convert_e(I).."<sup>2</sup> &#8658; L = "..Binesh.Convert_e(L_Self).." H")
			
			Binesh.AddToHTML("U: "..Binesh.Convert_e(U_PipeWire).." J", "V")
			Binesh.AddToHTML("I: "..Binesh.Convert_e(I).." A", "V")
			Binesh.AddToHTML("L: ?", "V")
		end
	end
	
	if I == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1) then
		if U_PipeWire ~= nil and L_Self ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span>LI<sup>2</sup>", "I = Sqrt(2U/L)")
			I = Math.Sqrt(2*U_PipeWire/L_Self)
			
			Binesh.AddToHTML("I = Sqrt(2*"..Binesh.Convert_e(U_PipeWire).."/"..Binesh.Convert_e(L_Self)..") &#8658; I = "..Binesh.Convert_e(I).." A")
			
			Binesh.AddToHTML("U: "..Binesh.Convert_e(U_PipeWire).." J", "V")
			Binesh.AddToHTML("L: "..Binesh.Convert_e(L_Self).." m", "V")
			Binesh.AddToHTML("I: ?", "V")
		end
	end
end