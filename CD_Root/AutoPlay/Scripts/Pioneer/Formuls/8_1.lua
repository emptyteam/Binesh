function Binesh.F8_1()
	if U == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1)) then
		if R ~= nil and I ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("U = RI<sup>2</sup>t")
			U = R*(I^2)*t
			
			Binesh.AddToHTML("U = "..Binesh.Convert_e(R).."*"..Binesh.Convert_e(I).."<sup>2</sup>*"..Binesh.Convert_e(t).." &#8658; U = "..Binesh.Convert_e(U).." J")
			
			Binesh.AddToHTML("R: "..Binesh.Convert_e(R).." Ohm", "V")
			Binesh.AddToHTML("I: "..Binesh.Convert_e(I).." A", "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("U: ?", "V")
		end
	end
	
	if R == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1) then
		if U ~= nil and I ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("U = RI<sup>2</sup>t", "R = <span>U/I<sup>2</sup>t</span>")
			R = U/((I^2)*t)
			
			Binesh.AddToHTML("R = <span>"..Binesh.Convert_e(U).."/"..Binesh.Convert_e(I).."<sup>2</sup>*"..Binesh.Convert_e(t).."</span> &#8658; R = "..Binesh.Convert_e(R).." Ohm")
			
			Binesh.AddToHTML("U: "..Binesh.Convert_e(W).." J", "V")
			Binesh.AddToHTML("I: "..Binesh.Convert_e(I).." A", "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("R: ?", "V")
		end
	end
	
	if I == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1) then
		if U ~= nil and R ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("U = RI<sup>2</sup>t", "I = sqrt(<span>U/Rt</span>)")
			I = Math.Sqrt(U/(R*t))
			
			Binesh.AddToHTML("I = Sqrt(<span>"..Binesh.Convert_e(U).."/"..Binesh.Convert_e(R).."</span>*"..Binesh.Convert_e(t)..") &#8658; I = "..Binesh.Convert_e(I).." A")
			
			Binesh.AddToHTML("U: "..Binesh.Convert_e(W).." J", "V")
			Binesh.AddToHTML("R: "..Binesh.Convert_e(R).." Ohm", "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("I: ?", "V")
		end
	end
	
	if t == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1) then
		if U ~= nil and R ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("U = RI<sup>2</sup>t", "t = <span>U/RI<sup>2</sup></span>")
			t = U/(R*I^2)
			
			Binesh.AddToHTML("t = <span>"..Binesh.Convert_e(U).."/"..Binesh.Convert_e(R).."*"..Binesh.Convert_e(I).."<sup>2</sup></span> &#8658; t = "..Binesh.Convert_e(t).." s")
			
			Binesh.AddToHTML("U: "..Binesh.Convert_e(W).." J", "V")
			Binesh.AddToHTML("R: "..Binesh.Convert_e(R).." Ohm", "V")
			Binesh.AddToHTML("I: "..Binesh.Convert_e(I).." A", "V")
			Binesh.AddToHTML("t: ?", "V")
		end
	end
end