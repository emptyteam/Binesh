function Binesh.F10_1()
	if P_Power == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1) then
		if R ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("P = R*I<sup>2</sup>")
			P_Power = (R*(I^2))
			
			Binesh.AddToHTML("P = "..Binesh.Convert_e(R).."*"..Binesh.Convert_e(I).."<sup>2</sup> &#8658; P = "..Binesh.Convert_e(P_Power).." W")
			
			Binesh.AddToHTML("I: "..Binesh.Convert_e(I).." A", "V")
			Binesh.AddToHTML("R: "..Binesh.Convert_e(R).." Ohm", "V")
			Binesh.AddToHTML("P: ?", "V")
		end
	end
	
	if R == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "������") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1) then
		if P_Power ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("P = R*I<sup>2</sup>", "R = <span>P/I<sup>2</sup></span>")
			R = P_Power/(I^2)
			
			Binesh.AddToHTML("R = <span>"..Binesh.Convert_e(P_Power).."/"..Binesh.Convert_e(I).."<sup>2</sup></span> &#8658; R = "..Binesh.Convert_e(R).." Ohm")
			
			Binesh.AddToHTML("I: "..Binesh.Convert_e(I).." A", "V")
			Binesh.AddToHTML("P: "..Binesh.Convert_e(P_Power).." W", "V")
			Binesh.AddToHTML("R: ?", "V")
		end
	end
	
	if I == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1) then
		if P_Power ~= nil and R ~= nil then
			Binesh.CreateHTMLFile("P = R*I<sup>2</sup>", "I = Sqrt(<span>P/R</span>)")
			I = Math.Sqrt(P_Power/R)
			
			Binesh.AddToHTML("I = Sqrt(<span>"..Binesh.Convert_e(P_Power).."/"..Binesh.Convert_e(R).."</span>) &#8658; I = "..Binesh.Convert_e(I).." A")
			
			Binesh.AddToHTML("R: "..Binesh.Convert_e(R).." Ohm", "V")
			Binesh.AddToHTML("P: "..Binesh.Convert_e(P_Power).." W", "V")
			Binesh.AddToHTML("I: ?", "V")
		end
	end
end