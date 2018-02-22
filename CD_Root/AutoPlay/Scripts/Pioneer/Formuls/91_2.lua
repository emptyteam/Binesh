function Binesh.F91_2()
	if _U1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ «‰—éÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ «Ê·Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ Å «‰”Ì·") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "U1") ~= -1)) then
		if E_Electric ~= nil and q ~= nil and Teta ~= nil and d ~= nil and _U2 ~= nil then
			Binesh.CreateHTMLFile("U<sub>2</sub>-U<sub>1</sub> = -E|q|dcosTeta", "U<sub>1</sub> = U<sub>2</sub>+E|q|dcosTeta")
			_U1 = _U2 + (E_Electric*Math.Abs(q)*d*Math.Cos(Math.Rad(Teta)))
			
			Binesh.AddToHTML("U<sub>2</sub> = "..Binesh.ProgressNumber(_U2).." J", "V")
			Binesh.AddToHTML("E = "..Binesh.ProgressNumber(E_Electric).." N/C", "V")
			Binesh.AddToHTML("q = "..Binesh.ProgressNumber(q).." C", "V")
			Binesh.AddToHTML("d = "..Binesh.ProgressNumber(d).." m", "V")
			Binesh.AddToHTML("Teta = "..Binesh.ProgressNumber(Teta), "V")
			Binesh.AddToHTML("U<sub>1</sub> = ?", "V")
			
			Binesh.AddToHTML("U<sub>1</sub> = "..Binesh.ProgressNumber(_U2).."+"..Binesh.ProgressNumber(E_Electric).."*|"..Binesh.ProgressNumber(q).."|*"..Binesh.ProgressNumber(d).."*cos"..Binesh.ProgressNumber(Teta).." &#8658; U<sub>1</sub> = "..Binesh.ProgressNumber(_U1).." J")
		end
	end
	
	if _U2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ «‰—éÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ œÊ„Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ Å «‰”Ì·") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "U2") ~= -1)) then
		if E_Electric ~= nil and q ~= nil and Teta ~= nil and d ~= nil and _U1 ~= nil then
			Binesh.CreateHTMLFile("U<sub>2</sub>-U<sub>1</sub> = -E|q|dcosTeta", "U<sub>2</sub> = U<sub>1</sub>-E|q|dcosTeta")
			_U2 = _U1 - (E_Electric*Math.Abs(q)*d*Math.Cos(Math.Rad(Teta)))
			
			Binesh.AddToHTML("U<sub>1</sub> = "..Binesh.ProgressNumber(_U1).." J", "V")
			Binesh.AddToHTML("E = "..Binesh.ProgressNumber(E_Electric).." N/C", "V")
			Binesh.AddToHTML("q = "..Binesh.ProgressNumber(q).." C", "V")
			Binesh.AddToHTML("d = "..Binesh.ProgressNumber(d).." m", "V")
			Binesh.AddToHTML("Teta = "..Binesh.ProgressNumber(Teta), "V")
			Binesh.AddToHTML("U<sub>2</sub> = ?", "V")
			
			Binesh.AddToHTML("U<sub>2</sub> = "..Binesh.ProgressNumber(_U1).."-"..Binesh.ProgressNumber(E_Electric).."*|"..Binesh.ProgressNumber(q).."|*"..Binesh.ProgressNumber(d).."*cos"..Binesh.ProgressNumber(Teta).." &#8658; U<sub>2</sub> = "..Binesh.ProgressNumber(_U2).." J")
		end
	end
end