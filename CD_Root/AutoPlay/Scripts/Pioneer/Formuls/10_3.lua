function Binesh.F10_3()
	if P_Power == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, " Ê«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1) then
		if V_Electric ~= nil and R ~= nil then
			Binesh.CreateHTMLFile("P = <span>V<sup>2</sup>/R</span>")
			P_Power = (V_Electric^2)/R
			
			Binesh.AddToHTML("P = <span>"..Binesh.Convert_e(V_Electric).."<sup>2</sup>/"..Binesh.Convert_e(I).."</span> &#8658; P = "..Binesh.Convert_e(P_Power).." W")
			
			Binesh.AddToHTML("V: "..Binesh.Convert_e(V_Electric).."V", "V")
			Binesh.AddToHTML("R: "..Binesh.Convert_e(R).."Ohm", "V")
			Binesh.AddToHTML("P: ?", "V")
		end
	end
	
	if V_Electric == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then
		if P_Power ~= nil and R ~= nil then
			Binesh.CreateHTMLFile("P = <span>V<sup>2</sup>/R</span>", "V = sqrt(P*R)")
			V_Electric = math.sqrt(P_Power*R)
			
			Binesh.AddToHTML("V = sqrt("..Binesh.Convert_e(P_Power).."*"..Binesh.Convert_e(R)..") &#8658; V = "..Binesh.Convert_e(V_Electric).." V")
			
			Binesh.AddToHTML("P: "..Binesh.Convert_e(P_Power).."W", "V")
			Binesh.AddToHTML("R: "..Binesh.Convert_e(R).."Ohm", "V")
			Binesh.AddToHTML("V: ?", "V")
		end
	end
	
	if R == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1) then
		if P_Power ~= nil and V_Electric ~= nil then
			Binesh.CreateHTMLFile("P = <span>V<sup>2</sup>/R</span>", "R = <span>V<sup>2</sup>/P</span>")
			R = (V_Electric^2)/P_Power
			
			Binesh.AddToHTML("R = <span>"..Binesh.Convert_e(V_Electric).."<sup>2</sup>/"..Binesh.Convert_e(P_Power).."</span> &#8658; R = "..Binesh.Convert_e(R).." Ohm")
			
			Binesh.AddToHTML("P: "..Binesh.Convert_e(P_Power).."W", "V")
			Binesh.AddToHTML("V: "..Binesh.Convert_e(V_Electric).."V", "V")
			Binesh.AddToHTML("R: ?", "V")
		end
	end
end