function Binesh.F35_1()
	if _DeltaV_Speed == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄   €ÌÌ—") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then 
		if a ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("DeltaV = at")
			_DeltaV_Speed = a*t
			
			Binesh.AddToHTML("DeltaV = "..a.."*"..t.." &#8658; DeltaV = ".._DeltaV_Speed.." m/s")
			
			Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>" , "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("DeltaV: ?", "V")
		end
	end
	
	if a == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "‘ «»") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "a") ~= -1) then 
		if _DeltaV_Speed ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("DeltaV = at", "a = <span>DeltaV/t</span>")
			a = _DeltaV_Speed/t
			
			Binesh.AddToHTML("a = <span>".._DeltaV_Speed.."/"..t.."</span> &#8658; a = "..a.." m/s<sup>2</sup>")
			
			Binesh.AddToHTML("DeltaV: ".._DeltaV_Speed.." m/s", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("a: ?" , "V")
		end
	end
	
	if t == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1) then
		if _DeltaV_Speed ~= nil and a ~= nil then
			Binesh.CreateHTMLFile("DeltaV = at", "t = <span>DeltaV/a</span>")
			t = _DeltaV_Speed/a
			
			Binesh.AddToHTML("t = <span>".._DeltaV_Speed.."/"..a.."</span> &#8658; t = "..t.." s")
			
			Binesh.AddToHTML("DeltaV: ".._DeltaV_Speed.." m/s", "V")
			Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>" , "V")
			Binesh.AddToHTML("t: ?", "V")
		end
	end
end