function Binesh.F8_3()
	if W == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ «·ò —ÌòÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1) then
		if V_Electric ~= nil and R ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("W = <span>V<sup>2</sup>/R</span>t")
			W = (V_Electric^2/R)*t
			
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Electric).." V", "V")
			Binesh.AddToHTML("R = "..Binesh.ProgressNumber(R).." Ohm", "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("W = ?", "V")
			
			Binesh.AddToHTML("W = <span>"..Binesh.ProgressNumber(V_Electric).."<sup>2</sup>/"..Binesh.ProgressNumber(R).."</span>*"..Binesh.ProgressNumber(t).." &#8658; W = "..Binesh.ProgressNumber(W).." J")
		end
	end
	
	if V_Electric == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then
		if W ~= nil and R ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("W = <span>V<sup>2</sup>/R</span>t", "V = sqrt(<span>WR/t</span>)")
			V_Electric = Math.Sqrt(W*R/t)
			
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(W).." J", "V")
			Binesh.AddToHTML("R = "..Binesh.ProgressNumber(R).." Ohm", "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("V = ?", "V")
			
			Binesh.AddToHTML("V = sqrt(<span>"..Binesh.ProgressNumber(W).."*"..Binesh.ProgressNumber(R).."/"..Binesh.ProgressNumber(t).."</span>) &#8658; V = "..Binesh.ProgressNumber(V_Electric).." V")
		end
	end
	
	if R == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1) then
		if W ~= nil and V_Electric ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("W = <span>V<sup>2</sup>/R</span>t", "R = <span>V<sup>2</sup>t/W</span>")
			R = (V_Electric^2)*t/W
			
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Electric).." V", "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(W).." J", "V")
			Binesh.AddToHTML("R = ?", "V")
			
			Binesh.AddToHTML("R = <span>"..Binesh.ProgressNumber(V_Electric).."<sup>2</sup>*"..Binesh.ProgressNumber(t).."/"..Binesh.ProgressNumber(W).."</span> &#8658; R = "..Binesh.ProgressNumber(R).." Ohm")
		end
	end
	
	if t == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1) then
		if W ~= nil and V_Electric ~= nil and R ~= nil then
			Binesh.CreateHTMLFile("W = <span>V<sup>2</sup>/R</span>t", "t = <span>WR/V<sup>2</sup></span>")
			t = W*R/(V_Electric^2)
			
			Binesh.AddToHTML("W = "..Binesh.ProgressNumber(W).." J", "V")
			Binesh.AddToHTML("R = "..Binesh.ProgressNumber(R).." Ohm", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Electric).." s", "V")
			Binesh.AddToHTML("t = ?", "V")
			
			Binesh.AddToHTML("t = <span>"..Binesh.ProgressNumber(W).."*"..Binesh.ProgressNumber(R).."/"..Binesh.ProgressNumber(V_Electric).."<sup>2</sup></span> &#8658; t = "..Binesh.ProgressNumber(t).." s")
		end
	end
end