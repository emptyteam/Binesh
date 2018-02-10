function Binesh.F142_3()
	if Teta == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÒÇæíå") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Alpha") ~= -1) then
		if Omega ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("Teta = Omegat")
			
			Teta = Omega*t
			
			Binesh.AddToHTML("Teta = "..Binesh.Convert_e(Omega).."*"..Binesh.Convert_e(t).." &#8658; Teta = "..Binesh.Convert_e(Teta))
			
			Binesh.AddToHTML("Omega: "..Binesh.Convert_e(Omega).." rad/s", "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("Teta: ?", "V")
		end
	end
	
	if Omega == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÓÑÚÊ ÒÇæíå") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Omega") ~= -1) then
		if Teta ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("Teta = Omegat", "Omega = <span>Teta/t</span>")
			
			Omega = Teta/t
			
			Binesh.AddToHTML("Omega = <span>"..Binesh.Convert_e(Omega).."/"..Binesh.Convert_e(t).."</span> &#8658; Omega = "..Binesh.Convert_e(Omega).." rad/s")
			
			Binesh.AddToHTML("Teta: "..Binesh.Convert_e(Teta), "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("Omega: ?", "V")
		end
	end
	
	if t == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÒãÇä") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1) then
		if Omega ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("Teta = Omegat", "t = <span>Teta/Omega</span>")
			
			t = Teta/Omega
			
			Binesh.AddToHTML("t = "..Binesh.Convert_e(Teta).."/"..Binesh.Convert_e(Omega).." &#8658; t = "..Binesh.Convert_e(t).." s")
			
			Binesh.AddToHTML("Teta: "..Binesh.Convert_e(Teta), "V")
			Binesh.AddToHTML("Omega: "..Binesh.Convert_e(Omega).." rad/s", "V")
			Binesh.AddToHTML("t: ?", "V")
		end
	end
end