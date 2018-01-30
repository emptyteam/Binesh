function Binesh.F77_1_1()
	if W == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ò«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1) then
		if _DeltaV ~= nil and P ~= nil then
			Binesh.CreateHTMLFile("W = -PDeltaV")
			W = -P*_DeltaV
			Binesh.AddToHTML("W = -"..P.."*".._DeltaV.." &#8658; W = "..W.." J")
			
			Binesh.AddToHTML("P: "..P.." Pa", "V")
			Binesh.AddToHTML("DeltaV: ".._DeltaV.." m<sup>3</sup>", "V")
			Binesh.AddToHTML("W: ?", "V")
		end
	end
	
	if P == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "›‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1) then 
		if W ~= nil and _DetlaV ~= nil then
			Binesh.CreateHTMLFile("W = -PDeltaV", "P = <span>-W/DeltaV</span>")
			P = -W/_DeltaV
			
			Binesh.AddToHTML("P = <span>-"..W.."/".._DeltaV.."</span> &#8658; P = "..P.." Pa")
			
			Binesh.AddToHTML("W: "..W.." J", "V")
			Binesh.AddToHTML("DeltaV: ".._DeltaV.." m<sup>3</sup>", "V")
			Binesh.AddToHTML("P: ?", "V")
		end
	end
	
	if _DeltaV == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— ÕÃ„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "ÕÃ„  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaV") ~= -1)) then 
		if Beta ~= nil and _DeltaTeta ~= nil then
			Binesh.CreateHTMLFile("W = -PDeltaV", "DeltaV = <span>-W/P</span>")
			_DeltaV = -W/P
			Binesh.AddToHTML("DeltaV = <span>-"..W.."/"..P.." &#8658; DeltaV = "..math.abs(_DeltaV).." m<sup>3</sup>")
			
			Binesh.AddToHTML("W: "..W.." J", "V")
			Binesh.AddToHTML("P: "..P.." Pa", "V")
			Binesh.AddToHTML("DeltaV: ?", "V")
		end
	end
end