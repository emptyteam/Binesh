function Binesh.F36()
	if t0 == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t0") ~= -1) then
		if V0_Speed ~= nil and a ~= nil then
			Binesh.CreateHTMLFile("t<sub>0</sub> = <span>V<sub>0</sub>/a</span>")
			t0 = (V0_Speed)/(a)
			
			Binesh.AddToHTML("t<sub>0</sub> = <span>"..V0_Speed.."/"..a.."</span> &#8658; t<sub>0</sub> = "..t0.." s")
			
			Binesh.AddToHTML("V<sub>0</sub>: "..V0_Speed.." m/s", "V")
			Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>" , "V")
			Binesh.AddToHTML("t<sub>0</sub>: ?", "V")
		end
	end
	
	if V0_Speed == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V0") ~= -1) then
		if t0 ~= nil and a ~= nil then
			Binesh.CreateHTMLFile("t<sub>0</sub> = <span>V<sub>0</sub>/a</span>", "V<sub>0</sub> = t<sub>0</sub>*a")
			V0_Speed = (t0)*(a)
			
			Binesh.AddToHTML("V<sub>0</sub> = "..t0.."*"..a.." &#8658; V<sub>0</sub> = "..V0_Speed.." m/s")
			
			Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>" , "V")
			Binesh.AddToHTML("t<sub>0</sub>: "..t0.." s", "V")
			Binesh.AddToHTML("V<sub>0</sub>: ?", "V")
		end
	end
	
	if a == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 and ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "a") ~= -1)) then
		if t0 ~= nil and V0_Speed ~= nil then
			Binesh.CreateHTMLFile("t<sub>0</sub> = <span>V<sub>0</sub>/a</span>", "a = <span>V<sub>0</sub>/t<sub>0</sub></span>")
			a = (V0_Speed)/(t0)
			
			Binesh.AddToHTML("a = <span>"..V0_Speed.."/"..t0.."</span> &#8658; a = "..a.." m/s<sup>2</sup>")
			
			Binesh.AddToHTML("V<sub>0</sub>: "..V0_Speed.." m/s", "V")
			Binesh.AddToHTML("t<sub>0</sub>: "..t0.." s", "V")
			Binesh.AddToHTML("a: ?" , "V")
		end
	end
end