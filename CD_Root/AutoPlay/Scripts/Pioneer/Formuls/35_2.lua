function Binesh.F35_2()
	if V2_Speed == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "���� �����") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then 
		if a ~= nil and t ~= nil and V0_Speed ~= nil then
			Binesh.CreateHTMLFile("V = at+V<sub>0</sub>")
			V2_Speed = (a*t)+V0_Speed
			
			Binesh.AddToHTML("V = "..a.."*"..t.."+"..V0_Speed.." &#8658; V = "..V2_Speed.." m/s")
			
			Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>" , "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("V<sub>0</sub>: "..V0_Speed.." m/s", "V")
			Binesh.AddToHTML("V<sub>2</sub>: ?", "V")
		end
	end
	
	if V0_Speed == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "���� �����") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "V0") ~= -1) then
		if V2_Speed ~= nil and a ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("V = at+V<sub>0</sub>", "V<sub>0</sub> = V-at")
			V0_Speed = V2_Speed-(a*t)
			
			Binesh.AddToHTML("V<sub>0</sub> = "..V2_Speed.."-"..a.."*"..t.." &#8658; V<sub>0</sub> = "..V0_Speed.." m/s")
			
			Binesh.AddToHTML("V<sub>2</sub>: "..V2_Speed.." m/s", "V")
			Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>" , "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("V<sub>0</sub>: ?", "V")
		end
	end
end