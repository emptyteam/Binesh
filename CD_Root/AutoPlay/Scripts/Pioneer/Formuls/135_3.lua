function Binesh.F135_3()
	if _t1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ “„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰ «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "t1") ~= -1)) then
		if Epsilon ~= nil and N_Ring ~= nil and _DeltaFi ~= nil and _t2 ~= nil then
			Binesh.CreateHTMLFile("Epsilon = -N<span>DeltaFi/t<sub>2</sub>-t<sub>1</sub></span>", "t<sub>2</sub>-t<sub>1</sub> = -N<span>DeltaFi/Epsilon</span>")
			Binesh.AddToHTML("t<sub>1</sub> = t<sub>2</sub>+N<span>DeltaFi/Epsilon</span> &#8658; ")
			_t1 = _t2+(N_Ring*(_DeltaFi/Epsilon))
			
			Binesh.AddToHTML("t<sub>1</sub> = "..Binesh.ProgressNumber(_t2).."+"..Binesh.ProgressNumber(N_Ring).."<span>"..Binesh.ProgressNumber(_DeltaFi).."/"..Binesh.ProgressNumber(Epsilon).."</span> &#8658; t<sub>1</sub> = "..Binesh.ProgressNumber(_t1).." s")
			
			Binesh.AddToHTML("t<sub>2</sub> = "..Binesh.ProgressNumber(_t2).." s", "V")
			Binesh.AddToHTML("N = "..Binesh.ProgressNumber(N_Ring), "V")
			Binesh.AddToHTML("DeltaFi = "..Binesh.ProgressNumber(_DeltaFi).." Wb", "V")
			Binesh.AddToHTML("Epsilon = "..Binesh.ProgressNumber(Epsilon).." V", "V")
			Binesh.AddToHTML("t<sub>1</sub> = ?", "V")
		end
	end
	
	if _t2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ “„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰ œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "t2") ~= -1)) then
		if Epsilon ~= nil and N_Ring ~= nil and _DeltaFi ~= nil and _t1 ~= nil then
			Binesh.CreateHTMLFile("Epsilon = -N<span>DeltaFi/t<sub>2</sub>-t<sub>1</sub></span>", "t<sub>2</sub>-t<sub>1</sub> = -N<span>DeltaFi/Epsilon</span>")
			Binesh.AddToHTML("t<sub>2</sub> = t<sub>1</sub>-N<span>DeltaFi/Epsilon</span> &#8658; ")
			_t2 = _t1-(N_Ring*(_DeltaFi/Epsilon))
			
			Binesh.AddToHTML("t<sub>2</sub> = "..Binesh.ProgressNumber(_t1).."-"..Binesh.ProgressNumber(N_Ring).."<span>"..Binesh.ProgressNumber(_DeltaFi).."/"..Binesh.ProgressNumber(Epsilon).."</span> &#8658; t<sub>2</sub> = "..Binesh.ProgressNumber(_t2).." s")
			
			Binesh.AddToHTML("t<sub>1</sub> = "..Binesh.ProgressNumber(_t1).." s", "V")
			Binesh.AddToHTML("N = "..Binesh.ProgressNumber(N_Ring), "V")
			Binesh.AddToHTML("DeltaFi = "..Binesh.ProgressNumber(_DeltaFi).." Wb", "V")
			Binesh.AddToHTML("Epsilon = "..Binesh.ProgressNumber(Epsilon).." V", "V")
			Binesh.AddToHTML("t<sub>2</sub> = ?", "V")
		end
	end
end