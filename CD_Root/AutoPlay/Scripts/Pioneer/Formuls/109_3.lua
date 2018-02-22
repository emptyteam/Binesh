function Binesh.F109_3()
	if _t1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ “„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰ «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "t1") ~= -1)) then
		if IBar ~= nil and _Deltaq ~= nil and _t2 ~= nil then
			Binesh.CreateHTMLFile("IBar = <span>Deltaq/t<sub>2</sub>-t<sub>1</sub></span>", "t<sub>2</sub>-t<sub>1</sub> = <span>Deltaq/IBar</span>")
			Binesh.AddToHTML("t<sub>1</sub> = t<sub>2</sub>-<span>Deltaq/IBar</span> &#8658; ")
			_t1 = _t2-_Deltaq/IBar
			
			Binesh.AddToHTML("t<sub>1</sub> = "..Binesh.ProgressNumber(_t2).."- <span>"..Binesh.ProgressNumber(_Deltaq).."/"..Binesh.ProgressNumber(IBar).."</span> &#8658; t<sub>1</sub> = "..Binesh.ProgressNumber(_t1).." s")
			
			Binesh.AddToHTML("t<sub>2</sub> = "..Binesh.ProgressNumber(_t2).." s", "V")
			Binesh.AddToHTML("Deltaq = "..Binesh.ProgressNumber(_Deltaq).." C", "V")
			Binesh.AddToHTML("IBar = "..Binesh.ProgressNumber(IBar).." A", "V")
			Binesh.AddToHTML("t<sub>1</sub> = ?", "V")
		end
	end
	
	if _t2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ “„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰ œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "t2") ~= -1)) then
		if IBar ~= nil and _Deltaq ~= nil and _t1 ~= nil then
			Binesh.CreateHTMLFile("IBar = <span>Deltaq/t<sub>2</sub>-t<sub>1</sub></span>", "t<sub>2</sub>-t<sub>1</sub> = <span>Deltaq/IBar</span>")
			Binesh.AddToHTML("t<sub>2</sub> = t<sub>1</sub>+<span>Deltaq/IBar</span> &#8658; ")
			_t2 = _t1+_Deltaq/IBar
			
			Binesh.AddToHTML("t<sub>2</sub> = "..Binesh.ProgressNumber(_t1).."+ <span>"..Binesh.ProgressNumber(_Deltaq).."/"..Binesh.ProgressNumber(IBar).."</span> &#8658; t<sub>2</sub> = "..Binesh.ProgressNumber(_t2).." s")
			
			Binesh.AddToHTML("t<sub>1</sub> = "..Binesh.ProgressNumber(_t1).." s", "V")
			Binesh.AddToHTML("Deltaq = "..Binesh.ProgressNumber(_Deltaq).." C", "V")
			Binesh.AddToHTML("IBar = "..Binesh.ProgressNumber(IBar).." A", "V")
			Binesh.AddToHTML("t<sub>2</sub> = ?", "V")
		end
	end
end