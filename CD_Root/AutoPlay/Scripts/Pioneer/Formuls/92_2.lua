function Binesh.F92_2()
	if _V1_Electric == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1)) then
		if _DeltaU ~= nil and q ~= nil and _V2_Electric ~= nil then
			Binesh.CreateHTMLFile("V<sub>2</sub>-V<sub>1</sub> = <span>DeltaU/q</span>", "V<sub>1</sub> = V<sub>2</sub>- <span>DeltaU/q</span>")
			_V1_Electric = _V2_Electric-_DeltaU/q
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V2_Electric).."-<span>"..Binesh.ProgressNumber(_DeltaU).."/"..Binesh.ProgressNumber(q).."</span> &#8658; V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Electric).." V")
			
			Binesh.AddToHTML("V<sub>2</sub> = "..Binesh.ProgressNumber(_V2_Electric).." V", "V")
			Binesh.AddToHTML("DeltaU = "..Binesh.ProgressNumber(_DeltaU).." J", "V")
			Binesh.AddToHTML("q = "..Binesh.ProgressNumber(q).." C", "V")
			Binesh.AddToHTML("V<sub>1</sub> = ?", "V")
		end
	end
	
	if _V2_Electric == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V2") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1)) then
		if _DeltaU ~= nil and q ~= nil and _V1_Electric ~= nil then
			Binesh.CreateHTMLFile("V<sub>2</sub>-V<sub>1</sub> = <span>DeltaU/q</span>", "V<sub>2</sub> = V<sub>1</sub>+ <span>DeltaU/q</span>")
			_V2_Electric = _V1_Electric+_DeltaU/q
			Binesh.AddToHTML("V<sub>2</sub> = "..Binesh.ProgressNumber(_V1_Electric).."+<span>"..Binesh.ProgressNumber(_DeltaU).."/"..Binesh.ProgressNumber(q).."</span> &#8658; V<sub>2</sub> = "..Binesh.ProgressNumber(_V2_Electric).." V")
			
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Electric).." V", "V")
			Binesh.AddToHTML("DeltaU = "..Binesh.ProgressNumber(_DeltaU).." J", "V")
			Binesh.AddToHTML("q = "..Binesh.ProgressNumber(q).." C", "V")
			Binesh.AddToHTML("V<sub>2</sub> = ?", "V")
		end
	end
end