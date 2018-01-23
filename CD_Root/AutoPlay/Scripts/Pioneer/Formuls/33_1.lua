function Binesh.F33_1()
	if x == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ Ã«»Ã«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã«»Ã«ÌÌ œÊ„Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "x") ~= -1 then
		if V_Speed ~= nil and t ~= nil and x0 ~= nil then
			Binesh.CreateHTMLFile("x = Vt+x<sub>0</sub>")
			x = V_Speed*t + x0
			
			Binesh.AddToHTML("x = "..V_Speed.."*"..t.."+"..x0.." &#8658; x = "..x.." m")
			
			Binesh.AddToHTML("V: "..V_Speed.." m/s", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("x<sub>0</sub>: "..x0.." m", "V")
			Binesh.AddToHTML("x: ?" , "V")
		end
	end
	
	if V_Speed == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
		if x ~= nil and t ~= nil and x0 ~= nil then
			Binesh.CreateHTMLFile("x = Vt+x<sub>0</sub>", "V = <span>x-x<sub>0</sub>/t</span>")
			V_Speed = x-x0/t
			
			Binesh.AddToHTML("V = <span>"..x.."-"..x0.."/"..t.."</span> &#8658; V = "..V_Speed.." m/s")
			
			Binesh.AddToHTML("x: "..x.." m" , "V")
			Binesh.AddToHTML("x<sub>0</sub>: "..x0.." m", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
		end
	end
	
	if t == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1 then
		if x ~= nil and V_Speed ~= nil and x0 ~= nil then
			Binesh.CreateHTMLFile("x = Vt+x<sub>0</sub>", "t = <span>x-x<sub>0</sub>/V</span>")
			t = x-x0/V_Speed
			
			Binesh.AddToHTML("t = <span>("..x.."-"..x0..")/"..V_Speed.."</span> &#8658; t = "..t.." s")
			
			Binesh.AddToHTML("x: "..x.." m" , "V")
			Binesh.AddToHTML("x<sub>0</sub>: "..x0.." m", "V")
			Binesh.AddToHTML("V: "..V_Speed.." m/s", "V")
			Binesh.AddToHTML("t: ?", "V")
		end
	end
	
	if x0 == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ Ã«»Ã«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã«»Ã«ÌÌ «Ê·Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "X0") ~= -1 then
		if x ~= nil and V_Speed ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("x = Vt+x<sub>0</sub>", "x<sub>0</sub> = x-Vt")
			x0 = x-V_Speed*t
			
			Binesh.AddToHTML("x<sub>0</sub> = "..x.."-"..V_Speed.."*"..t.." &#8658; x<sub>0</sub> = "..x0.." m")
			
			Binesh.AddToHTML("x: "..x.." m" , "V")
			Binesh.AddToHTML("V: "..V_Speed.." m/s", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("x<sub>0</sub>: ?", "V")
		end
	end
end