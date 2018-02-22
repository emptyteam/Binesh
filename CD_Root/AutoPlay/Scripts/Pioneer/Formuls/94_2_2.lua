function Binesh.F94_2_2()
	if __V1_Speed == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1)) then
		if q ~= nil and W_Out ~= nil and __V2_Speed ~= nil then
			Binesh.CreateHTMLFile("W = q(V<sub>2</sub>-V<sub>1</sub>)", "V<sub>2</sub>-V<sub>1</sub> = <span>W/q</span>")
			Binesh.AddToHTML("V<sub>1</sub> = V<sub>2</sub>- <span>W/q</span> &#8658; ")
			__V1_Speed = __V2_Speed-W_Out/q
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(__V2_Speed).."- <span>"..Binesh.ProgressNumber(W_out).."/"..Binesh.ProgressNumber(q).."</span> &#8658; V<sub>1</sub> = "..Binesh.ProgressNumber(__V1_Speed).." m/s")
			
			Binesh.AddToHTML("V<sub>2</sub> = "..Binesh.ProgressNumber(__V2_Speed).." m/s", "V")
			Binesh.AddToHTML("q = "..Binesh.ProgressNumber(q).." C", "V")
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(W_Out).." J", "V")
			Binesh.AddToHTML("V<sub>1</sub> = ?", "V")
		end
	end
	
	if __V2_Speed == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V2") ~= -1)) then
		if q ~= nil and W_Out ~= nil and __V1_Speed ~= nil then
			Binesh.CreateHTMLFile("W = q(V<sub>2</sub>-V<sub>1</sub>)", "V<sub>2</sub>-V<sub>1</sub> = <span>W/q</span>")
			Binesh.AddToHTML("V<sub>2</sub> = V<sub>1</sub>+ <span>W/q</span> &#8658; ")
			__V2_Speed = __V1_Speed+W_Out/q
			Binesh.AddToHTML("V<sub>2</sub> = "..Binesh.ProgressNumber(__V1_Speed).."+ <span>"..Binesh.ProgressNumber(W_out).."/"..Binesh.ProgressNumber(q).."</span> &#8658; V<sub>1</sub> = "..Binesh.ProgressNumber(__V2_Speed).." m/s")
			
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(__V1_Speed).." m/s", "V")
			Binesh.AddToHTML("q = "..Binesh.ProgressNumber(q).." C", "V")
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(W_Out).." J", "V")
			Binesh.AddToHTML("V<sub>1</sub> = ?", "V")
		end
	end
end