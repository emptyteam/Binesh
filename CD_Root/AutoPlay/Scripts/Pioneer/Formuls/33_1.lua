function Binesh.F33_1()
	if x == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â œÊ„Ì‰") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "x") ~= -1) then
		if V_Speed ~= nil and t ~= nil and x0 ~= nil then
			Binesh.CreateHTMLFile("x = Vt+x<sub>0</sub>")
			x = V_Speed*t + x0
			
			Binesh.AddToHTML("x = "..Binesh.Convert_e(V_Speed).."*"..Binesh.Convert_e(t).."+"..Binesh.Convert_e(x0).." &#8658; x = "..Binesh.Convert_e(x).." m")
			
			Binesh.AddToHTML("V: "..Binesh.Convert_e(V_Speed).." m/s", "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("x<sub>0</sub>: "..Binesh.Convert_e(x0).." m", "V")
			Binesh.AddToHTML("x: ?" , "V")
		end
	end
	
	if V_Speed == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then
		if x ~= nil and t ~= nil and x0 ~= nil then
			Binesh.CreateHTMLFile("x = Vt+x<sub>0</sub>", "V = <span>x-x<sub>0</sub>/t</span>")
			V_Speed = x-x0/t
			
			Binesh.AddToHTML("V = <span>"..Binesh.Convert_e(x).."-"..Binesh.Convert_e(x0).."/"..Binesh.Convert_e(t).."</span> &#8658; V = "..Binesh.Convert_e(V_Speed).." m/s")
			
			Binesh.AddToHTML("x: "..Binesh.Convert_e(x).." m" , "V")
			Binesh.AddToHTML("x<sub>0</sub>: "..Binesh.Convert_e(x0).." m", "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
		end
	end
	
	if t == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1) then
		if x ~= nil and V_Speed ~= nil and x0 ~= nil then
			Binesh.CreateHTMLFile("x = Vt+x<sub>0</sub>", "t = <span>x-x<sub>0</sub>/V</span>")
			t = x-x0/V_Speed
			
			Binesh.AddToHTML("t = <span>("..Binesh.Convert_e(x).."-"..Binesh.Convert_e(x0)..")/"..Binesh.Convert_e(V_Speed).."</span> &#8658; t = "..Binesh.Convert_e(t).." s")
			
			Binesh.AddToHTML("x: "..Binesh.Convert_e(x).." m" , "V")
			Binesh.AddToHTML("x<sub>0</sub>: "..Binesh.Convert_e(x0).." m", "V")
			Binesh.AddToHTML("V: "..Binesh.Convert_e(V_Speed).." m/s", "V")
			Binesh.AddToHTML("t: ?", "V")
		end
	end
	
	if x0 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â «Ê·Ì‰") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "X0") ~= -1) then
		if x ~= nil and V_Speed ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("x = Vt+x<sub>0</sub>", "x<sub>0</sub> = x-Vt")
			x0 = x-V_Speed*t
			
			Binesh.AddToHTML("x<sub>0</sub> = "..Binesh.Convert_e(x).."-"..Binesh.Convert_e(V_Speed).."*"..Binesh.Convert_e(t).." &#8658; x<sub>0</sub> = "..Binesh.Convert_e(x0).." m")
			
			Binesh.AddToHTML("x: "..Binesh.Convert_e(x).." m" , "V")
			Binesh.AddToHTML("V: "..Binesh.Convert_e(V_Speed).." m/s", "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("x<sub>0</sub>: ?", "V")
		end
	end
end