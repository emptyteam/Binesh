function Binesh.F8_1()
	if U == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1)) then
		if R ~= nil and I ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("U = RI<sup>2</sup>t")
			U = R*(I^2)*t
			
			Binesh.AddToHTML("U = "..Binesh.ProgressNumber(R).."*"..Binesh.ProgressNumber(I).."<sup>2</sup>*"..Binesh.ProgressNumber(t).." &#8658; U = "..Binesh.ProgressNumber(U).." J")
			
			Binesh.AddToHTML("R = "..Binesh.ProgressNumber(R).." Ohm", "V")
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("U = ?", "V")
		end
	end
	
	if R == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1) then
		if U ~= nil and I ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("U = RI<sup>2</sup>t", "R = <span>U/I<sup>2</sup>t</span>")
			R = U/((I^2)*t)
			
			Binesh.AddToHTML("R = <span>"..Binesh.ProgressNumber(U).."/"..Binesh.ProgressNumber(I).."<sup>2</sup>*"..Binesh.ProgressNumber(t).."</span> &#8658; R = "..Binesh.ProgressNumber(R).." Ohm")
			
			Binesh.AddToHTML("U = "..Binesh.ProgressNumber(W).." J", "V")
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("R = ?", "V")
		end
	end
	
	if I == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1) then
		if U ~= nil and R ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("U = RI<sup>2</sup>t", "I = sqrt(<span>U/Rt</span>)")
			I = Math.Sqrt(U/(R*t))
			
			Binesh.AddToHTML("I = Sqrt(<span>"..Binesh.ProgressNumber(U).."/"..Binesh.ProgressNumber(R).."</span>*"..Binesh.ProgressNumber(t)..") &#8658; I = "..Binesh.ProgressNumber(I).." A")
			
			Binesh.AddToHTML("U = "..Binesh.ProgressNumber(W).." J", "V")
			Binesh.AddToHTML("R = "..Binesh.ProgressNumber(R).." Ohm", "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("I = ?", "V")
		end
	end
	
	if t == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1) then
		if U ~= nil and R ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("U = RI<sup>2</sup>t", "t = <span>U/RI<sup>2</sup></span>")
			t = U/(R*I^2)
			
			Binesh.AddToHTML("t = <span>"..Binesh.ProgressNumber(U).."/"..Binesh.ProgressNumber(R).."*"..Binesh.ProgressNumber(I).."<sup>2</sup></span> &#8658; t = "..Binesh.ProgressNumber(t).." s")
			
			Binesh.AddToHTML("U = "..Binesh.ProgressNumber(W).." J", "V")
			Binesh.AddToHTML("R = "..Binesh.ProgressNumber(R).." Ohm", "V")
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("t = ?", "V")
		end
	end
end