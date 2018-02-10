function Binesh.F8_1()
	if W == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ «·ò —ÌòÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1) then
		if R ~= nil and I ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("W = RI<sup>2</sup>t")
			W = R*(I^2)*t
			
			Binesh.AddToHTML("W = "..Binesh.Convert_e(R).."*"..Binesh.Convert_e(I).."<sup>2</sup>*"..Binesh.Convert_e(t).." &#8658; W = "..Binesh.Convert_e(W).." J")
			
			Binesh.AddToHTML("R: "..Binesh.Convert_e(R).." Ohm", "V")
			Binesh.AddToHTML("I: "..Binesh.Convert_e(I).." A", "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("W: ?", "V")
		end
	end
	
	if R == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1) then
		if W ~= nil and I ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("W = RI<sup>2</sup>t", "R = <span>W/I<sup>2</sup>t</span>")
			R = W/((I^2)*t)
			
			Binesh.AddToHTML("R = <span>"..Binesh.Convert_e(W).."/"..Binesh.Convert_e(I).."<sup>2</sup>*"..Binesh.Convert_e(t).."</span> &#8658; R = "..Binesh.Convert_e(R).." Ohm")
			
			Binesh.AddToHTML("W: "..Binesh.Convert_e(W).." J", "V")
			Binesh.AddToHTML("I: "..Binesh.Convert_e(I).." A", "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("R: ?", "V")
		end
	end
	
	if I == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1) then
		if W ~= nil and R ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("W = RI<sup>2</sup>t", "I = sqrt(<span>W/Rt</span>)")
			I = Math.Sqrt(W/(R*t))
			
			Binesh.AddToHTML("I = Sqrt(<span>"..Binesh.Convert_e(W).."/"..Binesh.Convert_e(R).."</span>*"..Binesh.Convert_e(t)..") &#8658; I = "..Binesh.Convert_e(I).." A")
			
			Binesh.AddToHTML("W: "..Binesh.Convert_e(W).." J", "V")
			Binesh.AddToHTML("R: "..Binesh.Convert_e(R).." Ohm", "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("I: ?", "V")
		end
	end
	
	if t == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1) then
		if W ~= nil and R ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("W = RI<sup>2</sup>t", "t = <span>W/RI<sup>2</sup></span>")
			t = W/(R*I^2)
			
			Binesh.AddToHTML("t = <span>"..Binesh.Convert_e(W).."/"..Binesh.Convert_e(R).."*"..Binesh.Convert_e(I).."<sup>2</sup></span> &#8658; t = "..Binesh.Convert_e(t).." s")
			
			Binesh.AddToHTML("W: "..Binesh.Convert_e(W).." J", "V")
			Binesh.AddToHTML("R: "..Binesh.Convert_e(R).." Ohm", "V")
			Binesh.AddToHTML("I: "..Binesh.Convert_e(I).." A", "V")
			Binesh.AddToHTML("t: ?", "V")
		end
	end
end