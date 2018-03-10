function Binesh.F8_3()
	if U == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1) then
		if V_Electric ~= nil and R ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("U = <span>V<sup>2</sup>/R</span>t")
			U = (V_Electric^2/R)*t
			
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Electric).." V", "V")
			Binesh.AddToHTML("R = "..Binesh.ProgressNumber(R).." Ohm", "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("U = ?", "V")
			
			Binesh.AddToHTML("U = <span>"..Binesh.ProgressNumber(V_Electric).."<sup>2</sup>/"..Binesh.ProgressNumber(R).."</span>*"..Binesh.ProgressNumber(t).." &#8658; U = "..Binesh.ProgressNumber(U).." J")
		end
	end
	
	if V_Electric == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then
		if U ~= nil and R ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("U = <span>V<sup>2</sup>/R</span>t", "V = sqrt(<span>UR/t</span>)")
			V_Electric = Math.Sqrt(U*R/t)
			
			Binesh.AddToHTML("U = "..Binesh.ProgressNumber(W).." J", "V")
			Binesh.AddToHTML("R = "..Binesh.ProgressNumber(R).." Ohm", "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("V = ?", "V")
			
			Binesh.AddToHTML("V = sqrt(<span>"..Binesh.ProgressNumber(U).."*"..Binesh.ProgressNumber(R).."/"..Binesh.ProgressNumber(t).."</span>) &#8658; V = "..Binesh.ProgressNumber(V_Electric).." V")
		end
	end
	
	if R == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1) then
		if U ~= nil and V_Electric ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("U = <span>V<sup>2</sup>/R</span>t", "R = <span>V<sup>2</sup>t/U</span>")
			R = (V_Electric^2)*t/U
			
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Electric).." V", "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("U = "..Binesh.ProgressNumber(W).." J", "V")
			Binesh.AddToHTML("R = ?", "V")
			
			Binesh.AddToHTML("R = <span>"..Binesh.ProgressNumber(V_Electric).."<sup>2</sup>*"..Binesh.ProgressNumber(t).."/"..Binesh.ProgressNumber(U).."</span> &#8658; R = "..Binesh.ProgressNumber(R).." Ohm")
		end
	end
	
	if t == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1) then
		if U ~= nil and V_Electric ~= nil and R ~= nil then
			Binesh.CreateHTMLFile("U = <span>V<sup>2</sup>/R</span>t", "t = <span>UR/V<sup>2</sup></span>")
			t = U*R/(V_Electric^2)
			
			Binesh.AddToHTML("U = "..Binesh.ProgressNumber(W).." J", "V")
			Binesh.AddToHTML("R = "..Binesh.ProgressNumber(R).." Ohm", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Electric).." s", "V")
			Binesh.AddToHTML("t = ?", "V")
			
			Binesh.AddToHTML("t = <span>"..Binesh.ProgressNumber(U).."*"..Binesh.ProgressNumber(R).."/"..Binesh.ProgressNumber(V_Electric).."<sup>2</sup></span> &#8658; t = "..Binesh.ProgressNumber(t).." s")
		end
	end
end