function Binesh.F77_2()
	if W == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "ò«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1 then
		if n ~= nil and _DeltaT ~= nil then
			Binesh.CreateHTMLFile("W = nRDeltaT")
			W = n*Zarib.R*_DeltaT
			Binesh.AddToHTML("W = "..n.."*"..Zarib.R.."*".._DeltaT.." &#8658; W = "..W.." J")
			
			Binesh.AddToHTML("n: "..n.." mol", "V")
			Binesh.AddToHTML("DeltaT: ".._DeltaT.."<sup>o</sup>K", "V")
			Binesh.AddToHTML("W: ?", "V")
		end
	end
	
	if n == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ê·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1 then 
		if W ~= nil and _DeltaTeta ~= nil then
			Binesh.CreateHTMLFile("W = nRDeltaT", "n = <span>W/DeltaTR</span>")
			n = W/_DeltaT*Zarib.R
			Binesh.AddToHTML("n = <span>"..W.."/".._DeltaT.."*"..Zarib.R.."</span> &#8658; n = "..n.." mol")
			
			Binesh.AddToHTML("W: "..W.." J", "V")
			Binesh.AddToHTML("DeltaT: ".._DeltaT.."<sup>o</sup>K", "V")
			Binesh.AddToHTML("n: ?", "V")
		end
	end
	
	if _DeltaT and ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„«  €ÌÌ—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaT") ~= -1 then
		if n ~= nil and W ~= nil then
			Binesh.CreateHTMLFile("W = nRDeltaT", "DeltaT = <span>W/nR</span>")
			_DeltaT = W/n*Zarib.R
			Binesh.AddToHTML("DeltaT = <span>"..W.."/"..n.."*"..Zarib.R.."</span> &#8658; DeltaT = ".._DeltaT.."<sup>o</sup>K")
			
			Binesh.AddToHTML("W: "..W.." J", "V")
			Binesh.AddToHTML("n: "..n.." mol", "V")
			Binesh.AddToHTML("DeltaT: ?", "V")
		end
	end
end