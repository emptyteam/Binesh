function Binesh.F94_2_2()
	if _V1_Speed == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "���� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1 then
		if q ~= nil and W_Out ~= nil and _V2_Speed ~= nil then
			Binesh.CreateHTMLFile("W = q(V<sub>2</sub>-V<sub>1</sub>)", "V<sub>2</sub>-V<sub>1</sub> = <span>W/q</span>")
			Binesh.AddToHTML("V<sub>1</sub> = V<sub>2</sub>- <span>W/q</span> &#8658; ")
			_V1_Speed = _V2_Speed-W_Out/q
			Binesh.AddToHTML("V<sub>1</sub> = ".._V2_Speed.."- <span>"..W_out.."/"..q.."</span> &#8658; V<sub>1</sub> = ".._V1_Speed.." m/s")
			
			Binesh.AddToHTML("V<sub>2</sub>: ".._V2_Speed.." m/s", "V")
			Binesh.AddToHTML("q: "..q.." C", "V")
			Binesh.AddToHTML("W: "..W_Out.." J", "V")
			Binesh.AddToHTML("V<sub>1</sub>: ?", "V")
		end
	end
	
	if _V2_Speed == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "���� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V2") ~= -1 then
		if q ~= nil and W_Out ~= nil and _V1_Speed ~= nil then
			Binesh.CreateHTMLFile("W = q(V<sub>2</sub>-V<sub>1</sub>)", "V<sub>2</sub>-V<sub>1</sub> = <span>W/q</span>")
			Binesh.AddToHTML("V<sub>2</sub> = V<sub>1</sub>+ <span>W/q</span> &#8658; ")
			_V2_Speed = _V1_Speed+W_Out/q
			Binesh.AddToHTML("V<sub>2</sub> = ".._V1_Speed.."+ <span>"..W_out.."/"..q.."</span> &#8658; V<sub>1</sub> = ".._V2_Speed.." m/s")
			
			Binesh.AddToHTML("V<sub>1</sub>: ".._V1_Speed.." m/s", "V")
			Binesh.AddToHTML("q: "..q.." C", "V")
			Binesh.AddToHTML("W: "..W_Out.." J", "V")
			Binesh.AddToHTML("V<sub>1</sub>: ?", "V")
		end
	end
end