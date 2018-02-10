function Binesh.F77_2_1()
	if W == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ò«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1) then
		if n ~= nil and _DeltaT ~= nil then
			Binesh.CreateHTMLFile("W = nRDeltaT")
			W = n*Zarib.R*_DeltaT
			Binesh.AddToHTML("W = "..Binesh.Convert_e(n).."*"..Binesh.Convert_e(Zarib.R).."*"..Binesh.Convert_e(_DeltaT).." &#8658; W = "..Binesh.Convert_e(W).." J")
			
			Binesh.AddToHTML("n: "..Binesh.Convert_e(n).." mol", "V")
			Binesh.AddToHTML("DeltaT: "..Binesh.Convert_e(_DeltaT).."<sup>o</sup>K", "V")
			Binesh.AddToHTML("W: ?", "V")
		end
	end
	
	if n == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ê·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1) then 
		if W ~= nil and _DeltaTeta ~= nil then
			Binesh.CreateHTMLFile("W = nRDeltaT", "n = <span>W/DeltaTR</span>")
			n = W/(_DeltaT*Zarib.R)
			Binesh.AddToHTML("n = <span>"..Binesh.Convert_e(W).."/"..Binesh.Convert_e(_DeltaT).."*"..Binesh.Convert_e(Zarib.R).."</span> &#8658; n = "..Binesh.Convert_e(n).." mol")
			
			Binesh.AddToHTML("W: "..Binesh.Convert_e(W).." J", "V")
			Binesh.AddToHTML("DeltaT: "..Binesh.Convert_e(_DeltaT).."<sup>o</sup>K", "V")
			Binesh.AddToHTML("n: ?", "V")
		end
	end
	
	if _DeltaT == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„«  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaT") ~= -1)) then
		if n ~= nil and W ~= nil then
			Binesh.CreateHTMLFile("W = nRDeltaT", "DeltaT = <span>W/nR</span>")
			_DeltaT = W/(n*Zarib.R)
			Binesh.AddToHTML("DeltaT = <span>"..Binesh.Convert_e(W).."/"..Binesh.Convert_e(n).."*"..Binesh.Convert_e(Zarib.R).."</span> &#8658; DeltaT = "..Binesh.Convert_e(_DeltaT).."<sup>o</sup>K")
			
			Binesh.AddToHTML("W: "..Binesh.Convert_e(W).." J", "V")
			Binesh.AddToHTML("n: "..Binesh.Convert_e(n).." mol", "V")
			Binesh.AddToHTML("DeltaT: ?", "V")
		end
	end
end