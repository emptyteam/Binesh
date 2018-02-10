function Binesh.F35_1()
	if _DeltaV_Speed == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄   €ÌÌ—") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then 
		if a ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("DeltaV = at")
			_DeltaV_Speed = a*t
			
			Binesh.AddToHTML("DeltaV = "..Binesh.Convert_e(a).."*"..Binesh.Convert_e(t).." &#8658; DeltaV = "..Binesh.Convert_e(_DeltaV_Speed).." m/s")
			
			Binesh.AddToHTML("a: "..Binesh.Convert_e(a).." m/s<sup>2</sup>" , "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("DeltaV: ?", "V")
		end
	end
	
	if a == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "‘ «»") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "a") ~= -1) then 
		if _DeltaV_Speed ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("DeltaV = at", "a = <span>DeltaV/t</span>")
			a = _DeltaV_Speed/t
			
			Binesh.AddToHTML("a = <span>"..Binesh.Convert_e(_DeltaV_Speed).."/"..Binesh.Convert_e(t).."</span> &#8658; a = "..Binesh.Convert_e(a).." m/s<sup>2</sup>")
			
			Binesh.AddToHTML("DeltaV: "..Binesh.Convert_e(_DeltaV_Speed).." m/s", "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("a: ?" , "V")
		end
	end
	
	if t == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1) then
		if _DeltaV_Speed ~= nil and a ~= nil then
			Binesh.CreateHTMLFile("DeltaV = at", "t = <span>DeltaV/a</span>")
			t = _DeltaV_Speed/a
			
			Binesh.AddToHTML("t = <span>"..Binesh.Convert_e(_DeltaV_Speed).."/"..Binesh.Convert_e(a).."</span> &#8658; t = "..Binesh.Convert_e(t).." s")
			
			Binesh.AddToHTML("DeltaV: "..Binesh.Convert_e(_DeltaV_Speed).." m/s", "V")
			Binesh.AddToHTML("a: "..Binesh.Convert_e(a).." m/s<sup>2</sup>" , "V")
			Binesh.AddToHTML("t: ?", "V")
		end
	end
end