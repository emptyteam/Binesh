function Binesh.F92_1()
	--------------------------{DELTA}--------------------------
	if _DeltaV_Electric == nil then
		if _V1_Electric ~= nil and _V2_Electric ~= nil then
			Binesh.CreateHTMLFile("DeltaV = V<sub>2</sub>-V<sub>1</sub>")
			_DeltaV_Electric = _V2_Electric - _V1_Electric
			Binesh.AddToHTML("DeltaV = "..Binesh.Convert_e(_V2_Electric).."-"..Binesh.Convert_e(_V1_Electric).." &#8658; DeltaV = "..Binesh.Convert_e(_DeltaV_Electric).." V")
		end
	end
	
	if _V1_Electric == nil then
		if _DeltaV_Electric ~= nil and _V2_Electric ~= nil then
			Binesh.CreateHTMLFile("DeltaV = V<sub>2</sub>-V<sub>1</sub>", "V<sub>1</sub> = V<sub>2</sub>-DeltaV")
			_V1_Electric = _V2_Electric-_DeltaV_Electric
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.Convert_e(_V2_Electric).."-"..Binesh.Convert_e(_DeltaV_Electric).." &#8658; V<sub>1</sub> = "..Binesh.Convert_e(_V1_Electric).." V")
		end
	end
	
	if _V2_Electric == nil then
		if _DeltaV_Electric ~= nil and _V1_Electric ~= nil then
			Binesh.CreateHTMLFile("DeltaV = V<sub>2</sub>-V<sub>1</sub>", "V<sub>2</sub> = DeltaV+V<sub>1</sub>")
			_V2_Electric = _V1_Electric+_DeltaV_Electric
			Binesh.AddToHTML("V<sub>2</sub> = "..Binesh.Convert_e(_DeltaV_Electric).."+"..Binesh.Convert_e(_V1_Electric).." &#8658; V<sub>2</sub> = "..Binesh.Convert_e(_V2_Electric).." V")
		end
	end
	--------------------------END {DELTA}--------------------------
	if _DeltaV_Electric == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaV") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1)) then
		if _DeltaU ~= nil and q_0_87 ~= nil then
			Binesh.CreateHTMLFile("DeltaV = <span>DeltaU/q<sub>0</sub></span>")
			_DeltaV_Electric = _DeltaU/q_0_87
			Binesh.AddToHTML("DeltaV = <span>"..Binesh.Convert_e(_DeltaU).."/"..Binesh.Convert_e(q_0_87).."</span> &#8658; DeltaV = "..Binesh.Convert_e(_DeltaV_Electric).." V")
			
			Binesh.AddToHTML("DeltaU: "..Binesh.Convert_e(_DeltaU).." J", "V")
			Binesh.AddToHTML("q<sub>0</sub>: "..Binesh.Convert_e(q_0_87).." C", "V")
			Binesh.AddToHTML("DeltaV: ?", "V")
		end
	end
	
	if _DeltaU == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ  €ÌÌ—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ Å «‰”Ì·") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaU") ~= -1)) then
		if _DeltaV_Electric ~= nil and q_0_87 ~= nil then
			Binesh.CreateHTMLFile("DeltaV = <span>DeltaU/q<sub>0</sub></span>", "DeltaU = DeltaVq<sub>0</sub>")
			_DeltaU = _DeltaV_Electric * q_0_87
			Binesh.AddToHTML("DeltaU = "..Binesh.Convert_e(_DeltaV_Electric).."*"..Binesh.Convert_e(q_0_87).." &#8658; DeltaU = "..Binesh.Convert_e(_DeltaU).." J")
			
			Binesh.AddToHTML("DeltaV: "..Binesh.Convert_e(_DeltaV_Electric).." V", "V")
			Binesh.AddToHTML("q<sub>0</sub>: "..Binesh.Convert_e(q_0_87).." C", "V")
			Binesh.AddToHTML("DeltaU: ?", "V")
		end
	end
	
	if q_0_87 == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â ¬“„Ê‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q_0_87") ~= -1) then
		if _DeltaV_Electric ~= nil and _DeltaU ~= nil then
			Binesh.CreateHTMLFile("DeltaV = <span>DeltaU/q<sub>0</sub></span>", "q<sub>0</sub> = <span>DeltaU/DeltaV</span>")
			q_0_87 = _DeltaU/_DeltaV_Electric
			Binesh.AddToHTML("q<sub>0</sub> = <span>"..Binesh.Convert_e(_DeltaU).."/"..Binesh.Convert_e(_DeltaV_Electric).."</span> &#8658; q<sub>0</sub> = "..Binesh.Convert_e(q_0_87).." C")
			
			Binesh.AddToHTML("DeltaU: "..Binesh.Convert_e(_DeltaU).." J", "V")
			Binesh.AddToHTML("DeltaV: "..Binesh.Convert_e(_DeltaV_Electric).." V", "V")
			Binesh.AddToHTML("q<sub>0</sub>: ?", "V")
		end
	end
end