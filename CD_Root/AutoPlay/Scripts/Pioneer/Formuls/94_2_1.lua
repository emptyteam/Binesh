function Binesh.F94_2_1()
	if W_Out == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "��� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1) then
		if _DeltaV_Speed ~= nil and q ~= nil then
			Binesh.CreateHTMLFile("W = qDeltaV")
			W_Out = q*_DeltaV_Speed
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(q).."*"..Binesh.ProgressNumber(_DeltaV_Speed).." &#8658; W = "..Binesh.ProgressNumber(W_Out).." J")
			
			Binesh.AddToHTML("q = "..Binesh.ProgressNumber(q).." C", "V")
			Binesh.AddToHTML("DeltaV = "..Binesh.ProgressNumber(_DeltaV_Speed).." V", "V")
			Binesh.AddToHTML("W = ?", "V")
		end
	end
	
	if _DeltaV_Speed == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "���� �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaV") ~= -1)) then
		if q ~= nil and W_Out ~= nil then
			Binesh.CreateHTMLFile("W = qDeltaV", "DeltaV = <span>W/q</span>")
			_DeltaV_Speed = W_Out/q
			Binesh.AddToHTML("DeltaV = <span>"..Binesh.ProgressNumber(W_out).."/"..Binesh.ProgressNumber(q).."</span> &#8658; DeltaV = "..Binesh.ProgressNumber(_DeltaV_Speed).." m/s")
			
			Binesh.AddToHTML("q = "..Binesh.ProgressNumber(q).." C", "V")
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(W_Out).." J", "V")
			Binesh.AddToHTML("DeltaV = ?", "V")
		end
	end
	
	if q == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1) then
		if W_Out ~= nil and _DetlaV ~= nil then
			Binesh.CreateHTMLFile("W = qDeltaV", "q = <span>W/DeltaV</span>")
			q = W_Out/_DeltaV_Speed
			Binesh.AddToHTML("q = <span>"..Binesh.ProgressNumber(W_out).."/"..Binesh.ProgressNumber(_DeltaV_Speed).."</span> &#8658; q = "..Binesh.ProgressNumber(q).." C")
			
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(W_Out).." J", "V")
			Binesh.AddToHTML("DeltaV = "..Binesh.ProgressNumber(_DeltaV_Speed).." V", "V")
			Binesh.AddToHTML("q = ?", "V")
		end
	end
end