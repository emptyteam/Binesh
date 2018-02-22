function Binesh.F75_1()
	--------------------------{DELTA}--------------------------
	if _DeltaU_In == nil then
		if _U1_In ~= nil and _U2_In ~= nil then
			Binesh.CreateHTMLFile("DeltaU = U<sub>2</sub>-U<sub>1</sub>")
			_DeltaU_In = _U2_In - _U1_In
			Binesh.AddToHTML("DeltaU = "..Binesh.ProgressNumber(_U2_In).."-"..Binesh.ProgressNumber(_U1_In).." &#8658; DeltaU = "..Binesh.ProgressNumber(_DeltaU_In).." J")
		end
	end
	
	if _U1_In == nil then
		if _DeltaU_In ~= nil and _U2_In ~= nil then
			Binesh.CreateHTMLFile("DeltaU = U<sub>2</sub>-U<sub>1</sub>", "U<sub>1</sub> = U<sub>2</sub>-DeltaU")
			_U1_In = _U2_In-_DeltaU_In
			Binesh.AddToHTML("U<sub>1</sub> = "..Binesh.ProgressNumber(_U2_In).."-"..Binesh.ProgressNumber(_DeltaU_In).." &#8658; U<sub>1</sub> = "..Binesh.ProgressNumber(_U1_In).." J")
		end
	end
	
	if _U2_In == nil then
		if _DeltaU_In ~= nil and _U1_In ~= nil then
			Binesh.CreateHTMLFile("DeltaU = U<sub>2</sub>-U<sub>1</sub>", "U<sub>2</sub> = DeltaU+U<sub>1</sub>")
			_U2_In = _U1_In+_DeltaU_In
			Binesh.AddToHTML("U<sub>2</sub> = "..Binesh.ProgressNumber(_DeltaU_In).."+"..Binesh.ProgressNumber(_U1_In).." &#8658; U<sub>2</sub> = "..Binesh.ProgressNumber(_U2_In).." J")
		end
	end
	--------------------------END {DELTA}--------------------------
	if Q == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ê—„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Q") ~= -1) then
		if W ~= nil and _DeltaU_In ~= nil then
			Binesh.CreateHTMLFile("DeltaU = Q+W", " Q = DeltaU-W")
			Q = _DeltaU_In-W
			
			Binesh.AddToHTML("DeltaU = "..Binesh.ProgressNumber(_DeltaU_In).." J", "V")
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(W).." J", "V")
			Binesh.AddToHTML("Q = ?", "V")
			
			Binesh.AddToHTML("Q = "..Binesh.ProgressNumber(_DeltaU_In).."-"..Binesh.ProgressNumber(W).." &#8658; Q = "..Binesh.ProgressNumber(Q).." J")
		end
	end
	
	if W == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ò«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1) then 
		if Q ~= nil and _DeltaU_In ~= nil then
			Binesh.CreateHTMLFile("DeltaU = Q+W", "W = DeltaU-Q")
			W = _DeltaU_In-Q
			
			Binesh.AddToHTML("DeltaU = "..Binesh.ProgressNumber(_DeltaU_In).." J", "V")
			Binesh.AddToHTML("Q = "..Binesh.ProgressNumber(Q).." J", "V")
			Binesh.AddToHTML("W = ?", "V")
			
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(_DeltaU_In).."-"..Binesh.ProgressNumber(Q).." &#8658; W = "..Binesh.ProgressNumber(W).." J")
		end
	end
	
	if _DeltaU_In == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ œ—Ê‰Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ œ—Ê‰Ì  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaU") ~= -1)) then
		if Q ~= nil and W ~= nil then
			Binesh.CreateHTMLFile("DeltaU = Q+W")
			_DeltaU_In = Q+W
			
			Binesh.AddToHTML("Q = "..Binesh.ProgressNumber(Q).." J", "V")
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(W).." J", "V")
			Binesh.AddToHTML("DeltaU = ?", "V")
			
			Binesh.AddToHTML("DeltaU = "..Binesh.ProgressNumber(Q).."+"..Binesh.ProgressNumber(W).." &#8658; DeltaU = "..Binesh.ProgressNumber(_DeltaU_In).." J")
		end
	end
end