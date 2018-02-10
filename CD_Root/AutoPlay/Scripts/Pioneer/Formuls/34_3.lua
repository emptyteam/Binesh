function Binesh.F34_3()
	if _t1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ “„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰ «Ê·Ì‰") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "t1") ~= -1) then
		if _DeltaV_Speed ~= nil and a ~= nil and _t2 ~= nil then
			Binesh.CreateHTMLFile("a = <span>DeltaV/(t<sub>2</sub>-t<sub>1</sub>)</span>", "t<sub>1</sub> = t<sub>2</sub>- <span>DeltaV/a</span>")
			_t1 = _t2+(-_DeltaV_Speed/a)
			
			Binesh.AddToHTML("t<sub>1</sub> = "..Binesh.Convert_e(_t2).."- <span>"..Binesh.Convert_e(_DeltaV_Speed).."/"..Binesh.Convert_e(a).."</span> &#8658; t<sub>1</sub> = "..Binesh.Convert_e(_t1).." s")
			
			Binesh.AddToHTML("t<sub>2</sub>: "..Binesh.Convert_e(_t2).." s", "V")
			Binesh.AddToHTML("DeltaV: "..Binesh.Convert_e(_DeltaV_Speed).." m/s", "V")
			Binesh.AddToHTML("a: "..Binesh.Convert_e(a).." m/s<sup>2</sup>" , "V")
			Binesh.AddToHTML("t<sub>1</sub>: ?", "V")
		end
	end
	
	if _t2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ “„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰ œÊ„Ì‰") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "t2") ~= -1) then
		if _DeltaV_Speed ~= nil and a ~= nil and _t1 ~= nil then
			Binesh.CreateHTMLFile("a = <span>DeltaV/(t<sub>2</sub>-t<sub>1</sub>)</span>", "t<sub>2</sub> = t<sub>1</sub>+ <span>DeltaV/a</span>")
			_t2 = _t1+(_DeltaV_Speed/a)
			
			Binesh.AddToHTML("t<sub>2</sub> = "..Binesh.Convert_e(_t1).."+ <span>"..Binesh.Convert_e(_DeltaV_Speed).."/"..Binesh.Convert_e(a).."</span> &#8658; t<sub>2</sub> = "..Binesh.Convert_e(_t2).." s")
			
			Binesh.AddToHTML("t<sub>1</sub>: "..Binesh.Convert_e(_t1).." s", "V")
			Binesh.AddToHTML("DeltaV: "..Binesh.Convert_e(_DeltaV_Speed).." m/s", "V")
			Binesh.AddToHTML("a: "..Binesh.Convert_e(a).." m/s<sup>2</sup>" , "V")
			Binesh.AddToHTML("t<sub>2</sub>: ?", "V")
		end
	end
end