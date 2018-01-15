function Binesh.F92_1()
	--------------------------{DELTA}--------------------------
	if _DeltaV_Electric == nil then
		if _V1_Electric ~= nil and _V2_Electric ~= nil then
			Binesh.CreateHTMLFile("DeltaV = V<sub>2</sub>-V<sub>1</sub>")
			_DeltaV_Electric = _V2_Electric - _V1_Electric
			Binesh.AddToHTML("DeltaV = ".._V2_Electric.."-".._V1_Electric.." &#8658; DeltaV = ".._DeltaV_Electric.." V")
		end
	end
	
	if _V1_Electric == nil then
		if _DeltaV_Electric ~= nil and _V2_Electric ~= nil then
			Binesh.CreateHTMLFile("DeltaV = V<sub>2</sub>-V<sub>1</sub>", "V<sub>1</sub> = V<sub>2</sub>-DeltaV")
			_V1_Electric = _V2_Electric-_DeltaV_Electric
			Binesh.AddToHTML("V<sub>1</sub> = ".._V2_Electric.."-".._DeltaV_Electric.." &#8658; V<sub>1</sub> = ".._V1_Electric.." V")
		end
	end
	
	if _V2_Electric == nil then
		if _DeltaV_Electric ~= nil and _V1_Electric ~= nil then
			Binesh.CreateHTMLFile("DeltaV = V<sub>2</sub>-V<sub>1</sub>", "V<sub>2</sub> = DeltaV+V<sub>1</sub>")
			_V2_Electric = _V1_Electric+_DeltaV_Electric
			Binesh.AddToHTML("V<sub>2</sub> = ".._DeltaV_Electric.."+".._V1_Electric.." &#8658; V<sub>2</sub> = ".._V2_Electric.." V")
		end
	end
	--------------------------END {DELTA}--------------------------
	if _DeltaV_Electric == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é  €ÌÌ—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaV") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
		if _DeltaU ~= nil and q ~= nil then
			Binesh.CreateHTMLFile("DeltaV = <span>DeltaU/q</span>")
			_DeltaV_Electric = _DeltaU/q
			Binesh.AddToHTML("DeltaV = <span>".._DeltaU.."/"..q.."</span> &#8658; DeltaV = ".._DeltaV_Electric.." V")
			
			Binesh.AddToHTML("DeltaU: ".._DeltaU.." J", "V")
			Binesh.AddToHTML("q: "..q.." C", "V")
			Binesh.AddToHTML("DeltaV: ?", "V")
		end
	end
	
	if _DeltaU == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ  €ÌÌ—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ Å «‰”Ì·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaU") ~= -1 then
		if _DeltaV_Electric ~= nil and q ~= nil then
			Binesh.CreateHTMLFile("DeltaV = <span>DeltaU/q</span>", "DeltaU = DeltaVq")
			_DeltaU = _DeltaV_Electric * q
			Binesh.AddToHTML("DeltaU = ".._DeltaV_Electric.."*"..q.." &#8658; DeltaU = ".._DeltaU.." J")
			
			Binesh.AddToHTML("DeltaV: ".._DeltaV_Electric.." V", "V")
			Binesh.AddToHTML("q: "..q.." C", "V")
			Binesh.AddToHTML("DeltaU: ?", "V")
		end
	end
	
	if q == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
		if _DeltaV_Electric ~= nil and _DeltaU ~= nil then
			Binesh.CreateHTMLFile("DeltaV = <span>DeltaU/q</span>", "q = <span>DeltaU/DeltaV</span>")
			q = _DeltaU/_DeltaV_Electric
			Binesh.AddToHTML("q = <span>".._DeltaU.."/".._DeltaV_Electric.."</span> &#8658; q = "..q.." C")
			
			Binesh.AddToHTML("DeltaU: "..DeltaU.." J", "V")
			Binesh.AddToHTML("DeltaV: ".._DeltaV_Electric.." V", "V")
			Binesh.AddToHTML("q: ?", "V")
		end
	end
end