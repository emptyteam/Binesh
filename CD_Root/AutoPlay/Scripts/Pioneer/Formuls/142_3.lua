function Binesh.F142_3()
	if Teta == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÒÇæíå") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Alpha") ~= -1) then
		if Omega ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("Teta = Omegat")
			
			Teta = Omega*t
			
			Binesh.AddToHTML("Teta = "..Binesh.ProgressNumber(Omega).."*"..Binesh.ProgressNumber(t).." &#8658; Teta = "..Binesh.ProgressNumber(Teta))
			
			Binesh.AddToHTML("Omega = "..Binesh.ProgressNumber(Omega).." rad/s", "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("Teta = ?", "V")
		end
	end
	
	if Omega == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÓÑÚÊ ÒÇæíå") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Omega") ~= -1) then
		if Teta ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("Teta = Omegat", "Omega = <span>Teta/t</span>")
			
			Omega = Teta/t
			
			Binesh.AddToHTML("Omega = <span>"..Binesh.ProgressNumber(Omega).."/"..Binesh.ProgressNumber(t).."</span> &#8658; Omega = "..Binesh.ProgressNumber(Omega).." rad/s")
			
			Binesh.AddToHTML("Teta = "..Binesh.ProgressNumber(Teta), "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("Omega = ?", "V")
		end
	end
	
	if t == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÒãÇä") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1) then
		if Omega ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("Teta = Omegat", "t = <span>Teta/Omega</span>")
			
			t = Teta/Omega
			
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(Teta).."/"..Binesh.ProgressNumber(Omega).." &#8658; t = "..Binesh.ProgressNumber(t).." s")
			
			Binesh.AddToHTML("Teta = "..Binesh.ProgressNumber(Teta), "V")
			Binesh.AddToHTML("Omega = "..Binesh.ProgressNumber(Omega).." rad/s", "V")
			Binesh.AddToHTML("t = ?", "V")
		end
	end
end