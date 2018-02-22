function Binesh.F138_3()
	if _t1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ “„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰ «Ê·Ì‰") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "t1") ~= -1) then
		if Epsilon ~= nil and L_Self ~= nil and _DeltaI ~= nil and _t2 ~= nil then
			Binesh.CreateHTMLFile("Epsilon = -L<span>DeltaI/t<sub>2</sub>-t<sub>1</sub></span>", "t<sub>2</sub>-t<sub>1</sub> = -L<span>DeltaI/Epsilon</span>")
			Binesh.AddToHTML("t<sub>1</sub> = t<sub>2</sub>+L<span>DeltaI/Epsilon</span> &#8658; ")
			_t1 = _t2+(L_Self*(_DeltaI/Epsilon))
			
			Binesh.AddToHTML("t<sub>1</sub> = "..Binesh.ProgressNumber(_t2).."+("..Binesh.ProgressNumber(L_Self)..")<span>"..Binesh.ProgressNumber(_DeltaI).."/"..Binesh.ProgressNumber(Epsilon).." &#8658; t<sub>1</sub> = "..Binesh.ProgressNumber(_t1).." s")
			
			Binesh.AddToHTML("t<sub>2</sub> = "..Binesh.ProgressNumber(_t2).." s", "V")
			Binesh.AddToHTML("L = "..Binesh.ProgressNumber(L_Self).." H", "V")
			Binesh.AddToHTML("DeltaI = "..Binesh.ProgressNumber(_DeltaI).." A", "V")
			Binesh.AddToHTML("Epsilon = "..Binesh.ProgressNumber(Epsilon).." V", "V")
			Binesh.AddToHTML("t<sub>1</sub> = ?", "V")
		end
	end
	
	if _t2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ “„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰ œÊ„Ì‰") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "t2") ~= -1) then
		if Epsilon ~= nil and L_Self ~= nil and _DeltaI ~= nil and _t1 ~= nil then
			Binesh.CreateHTMLFile("Epsilon = -L<span>DeltaI/t<sub>2</sub>-t<sub>1</sub></span>", "t<sub>2</sub>-t<sub>1</sub> = -L<span>DeltaI/Epsilon</span>")
			Binesh.AddToHTML("t<sub>2</sub> = t<sub>1</sub>-L<span>DeltaI/Epsilon</span> &#8658; ")
			_t2 = _t1-(L_Self*(_DeltaI/Epsilon))
			
			Binesh.AddToHTML("t<sub>2</sub> = "..Binesh.ProgressNumber(_t1).."-("..Binesh.ProgressNumber(L_Self)..")<span>"..Binesh.ProgressNumber(_DeltaI).."/"..Binesh.ProgressNumber(Epsilon).." &#8658; t<sub>2</sub> = "..Binesh.ProgressNumber(_t2).." s")
			
			Binesh.AddToHTML("t<sub>1</sub> = "..Binesh.ProgressNumber(_t1).." s", "V")
			Binesh.AddToHTML("L = "..Binesh.ProgressNumber(L_Self).." H", "V")
			Binesh.AddToHTML("DeltaI = "..Binesh.ProgressNumber(_DeltaI).." A", "V")
			Binesh.AddToHTML("Epsilon = "..Binesh.ProgressNumber(Epsilon).." V", "V")
			Binesh.AddToHTML("t<sub>2</sub> = ?", "V")
		end
	end
end