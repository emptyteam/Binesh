function Binesh.F1_2EX()
	if ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê”ÿ—«Â") ~= -1 then
		--[[
		
		- Name = Section 1
		- Function 1 = U = 1/2 * m * V^2
		- Function 2 = m = 2 * U / V^2
		- Function 3 = V = Sqrt(2 * U / m)
		 
		]]--
		
		if U == nil and String.Find(Input.GetText("Input1"), "«‰—éÌ Å «‰”Ì·", 1, false) ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1 then
			if m ~= nil and V_Speed ~= nil then
				Binesh.CreateHTMLFile("U = <span>1/2</span>mV<sup>2</sup>")
				U = 0.5*m*(V_Speed^2)
				
				Binesh.AddToHTML("U = <span>1/2</span>*"..Binesh.ProgressNumber(m).."*"..Binesh.ProgressNumber(V_Speed).."<sup>2</sup> &#8658; U = "..Binesh.ProgressNumber(U).." J")
				
				Binesh.AddToHTML("m = "..Binesh.ProgressNumber(m).." Kg", "V")
				Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Speed).." m/s", "V")
				Binesh.AddToHTML("U = ?", "V")
			end
		end
		
		if m == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1) then
			if U ~= nil and V_Speed ~= nil then
				Binesh.CreateHTMLFile("U = <span>1/2</span>mV<sup>2</sup>", "m = <span>2U/V<sup>2</sup></span>")
				m = math.abs(2*U/(V_Speed^2))
				
				Binesh.AddToHTML("m = <span>2*"..Binesh.ProgressNumber(U).."/"..Binesh.ProgressNumber(V_Speed).."<sup>2</sup></span> &#8658; m = "..Binesh.ProgressNumber(m).." Kg")
				
				Binesh.AddToHTML("U = "..Binesh.ProgressNumber(U).." J", "V")
				Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Speed).." m/s", "V")
				Binesh.AddToHTML("m = ?", "V")
			end
		end
		
		if V_Speed == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then
			if U ~= nil and m ~= nil then
				Binesh.CreateHTMLFile("U = <span>1/2</span>mV<sup>2</sup>", "V = sqrt(<span>2U/m</span>)")
				V_Speed = Math.Sqrt(2*U/m);
				
				Binesh.AddToHTML("V = sqrt(<span>2*"..Binesh.ProgressNumber(U).."/"..Binesh.ProgressNumber(m).."</span>) &#8658; V = "..Binesh.ProgressNumber(V_Speed).." m/s")
				
				Binesh.AddToHTML("U = "..Binesh.ProgressNumber(U).." J", "V")
				Binesh.AddToHTML("m = "..Binesh.ProgressNumber(m).." Kg", "V")
				Binesh.AddToHTML("V = ?", "V")
			end
		end
		
		--[[
		
		- Name = Section 2
		- Function 1 = K = m * g * h
		- Function 2 = m = K / g * h
		- Function 3 = h = K / m * g
		 
		]]--
		
		if K == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ Ã‰»‘Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "K") ~= -1) then
			if h ~= nil and m ~= nil then
				Binesh.CreateHTMLFile("K = mgh")
				U = m*9.8*h
				
				Binesh.AddToHTML("K = "..Binesh.ProgressNumber(m).."*9.8*"..Binesh.ProgressNumber(h).." &#8658; K = "..Binesh.ProgressNumber(K).." J")
				
				Binesh.AddToHTML("m = "..Binesh.ProgressNumber(m).." Kg", "V")
				Binesh.AddToHTML("h = "..Binesh.ProgressNumber(h).." m", "V")
				Binesh.AddToHTML("K = ?", "V")
			end
		end
		
		if m == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1) then
			if K ~= nil and h ~= nil then
				Binesh.CreateHTMLFile("K = mgh", "m = <span>K/gh</span>")
				m = math.abs(K/(9.8*h))
				
				Binesh.AddToHTML("m = <span>"..Binesh.ProgressNumber(K).."/9.8*"..Binesh.ProgressNumber(h).."</span> &#8658; m = "..Binesh.ProgressNumber(m).." Kg")
				
				Binesh.AddToHTML("K = "..Binesh.ProgressNumber(K).." J", "V")
				Binesh.AddToHTML("h = "..Binesh.ProgressNumber(h).." m", "V")
				Binesh.AddToHTML("m = ?", "V")
			end
		end
		
		if h == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "«— ›«⁄") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "h") ~= -1) then
			if K ~= nil and m ~= nil then
				Binesh.CreateHTMLFile("K = mgh", "h = <span>K/mg</span>")
				h = K/(m*9.8)
				
				Binesh.AddToHTML("h = <span>"..Binesh.ProgressNumber(K).."/"..Binesh.ProgressNumber(m).."*9.8</span> &#8658; h = "..Binesh.ProgressNumber(h).." m")
				
				Binesh.AddToHTML("m = "..Binesh.ProgressNumber(m).." Kg", "V")
				Binesh.AddToHTML("K = "..Binesh.ProgressNumber(K).." J", "V")
				Binesh.AddToHTML("h = ?", "V")
			end
		end
		
		--[[
		
		- Name = Section 3
		- Function 1 = h = V^2 / 2 * g
		- Function 2 = V = sqrt(2 * g * h)
		 
		]]--
		
		if h == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "«— ›«⁄") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "h") ~= -1) then
			if V_Speed ~= nil then
				Binesh.CreateHTMLFile("<strike>m</strike>gh = <span>1/2</span> <strike>m</strike>V<sup>2</sup>", "gh = <span>1/2</span>V<sup>2</sup>")
				Binesh.AddToHTML("h = <span>V<sup>2</sup>/2g</span> &#8658; ")
				h = (V_Speed^2)/(2*9.8)
				
				Binesh.AddToHTML("h = <span>"..Binesh.ProgressNumber(V_Speed).."<sup>2</sup>/2*9.8</span> &#8658; h = "..Binesh.ProgressNumber(h).." m")
				
				Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Speed).." m/s", "V")
				Binesh.AddToHTML("h = ?", "V")
			end
		end
		
		if V_Speed == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then
			if h ~= nil then
				Binesh.CreateHTMLFile("<strike>m</strike>gh = <span>1/2</span> <strike>m</strike>V<sup>2</sup>", "gh = <span>1/2</span>V<sup>2</sup>")
				Binesh.AddToHTML("V = sqrt(2gh) &#8658; ")
				V_Speed = Math.Sqrt(2*9.8*h)
				
				Binesh.AddToHTML("V = sqrt(2*9.8*"..Binesh.ProgressNumber(h)..") &#8658; V = "..Binesh.ProgressNumber(V_Speed).." m/s")
				
				Binesh.AddToHTML("h = "..Binesh.ProgressNumber(h).." m", "V")
				Binesh.AddToHTML("V = ?", "V")
			end
		end
	end -- if its center
end