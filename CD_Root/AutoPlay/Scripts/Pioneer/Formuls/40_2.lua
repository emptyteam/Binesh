function Binesh.F40_2()
	if _x1 == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "x1") ~= -1 then
		if V_Speed ~= nil and V0_Speed ~= nil and a ~= nil and _x2 ~= nil then
			Binesh.CreateHTMLFile("V<sup>2</sup>-V<sub>0</sub><sup>2</sup> = 2a(x<sub>2</sub>-x<sub>1</sub>)", "x<sub>2</sub>-x<sub>1</sub> = <span>V<sup>2</sup>-V<sub>0</sub><sup>2</sup>/2a</span>")
			Binesh.AddToHTML("x<sub>1</sub> = x<sub>2</sub>- <span>V<sup>2</sup>-V<sub>0</sub><sup>2</sup>/2a</span>")
		    _x1 = _x2-(((V_Speed^2) - (V0_Speed^2)) / (2*a))
		    
			Binesh.AddToHTML("x<sub>1</sub> = ".._x2.."- <span>"..V_Speed.."<sup>2</sup>-"..V0_Speed.."<sup>2</sup>/2*"..a.."</span> &#8658; x<sub>1</sub> = ".._x1.." m")
			
			Binesh.AddToHTML("x<sub>2</sub>: ".._x2.." m", "V")
			Binesh.AddToHTML("V: "..V_Speed.." m/s", "V")
			Binesh.AddToHTML("V<sub>0</sub>: "..V0_Speed, "V")
			Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("x<sub>1</sub>: ?", "V")
		end
	end
	
	if _x2 == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "x2") ~= -1 then
		if V_Speed ~= nil and V0_Speed ~= nil and a ~= nil and _x1 ~= nil then
			Binesh.CreateHTMLFile("V<sup>2</sup>-V<sub>0</sub><sup>2</sup> = 2a(x<sub>2</sub>-x<sub>1</sub>)", "x<sub>2</sub>-x<sub>1</sub> = <span>V<sup>2</sup>-V<sub>0</sub><sup>2</sup>/2a</span>")
			Binesh.AddToHTML("x<sub>1</sub> = x<sub>2</sub>- <span>V<sup>2</sup>-V<sub>0</sub><sup>2</sup>/2a</span>")
		    _x2 = _x1+((V_Speed^2) - (V0_Speed^2)) / (2*a)
		    
			Binesh.AddToHTML("x<sub>2</sub> = ".._x1.."+ <span>"..V_Speed.."<sup>2</sup>-"..V0_Speed.."<sup>2</sup>/2*"..a.."</span> &#8658; x<sub>2</sub> = ".._x2.." m")
			
			Binesh.AddToHTML("x<sub>1</sub>: ".._x1.." m", "V")
			Binesh.AddToHTML("V: "..V_Speed.." m/s", "V")
			Binesh.AddToHTML("V<sub>0</sub>: "..V0_Speed, "V")
			Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("x<sub>2</sub>: ?", "V")
		end
	end
end