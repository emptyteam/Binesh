function Binesh.F142_2()
	if Omega == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÓÑÚÊ ÒÇæíå") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Omega") ~= -1) then
		if f_Hz ~= nil then
			Binesh.CreateHTMLFile("Omega = 2Pif")
			
			Omega = 2*Settings.Zarib.Pi*f_Hz
			
			Binesh.AddToHTML("Omega = 2*"..Binesh.ProgressNumber(Settings.Zarib.Pi).."*"..Binesh.ProgressNumber(f_Hz).." &#8658; Omega = "..Binesh.ProgressNumber(Omega).." rad/s")
			
			Binesh.AddToHTML("f = "..Binesh.ProgressNumber(f_Hz).." Hz", "V")
			Binesh.AddToHTML("Omega = ?", "V")
		end
	end
	
	if f_Hz == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÝÑ˜ÇäÓ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "f") ~= -1) then
		if Oemga ~= nil then
			Binesh.CreateHTMLFile("Omega = 2Pif", "f = <span>2Pi/Omega</span>")
			
			f_Hz = 2*Settings.Zarib.Pi/Omega
			
			Binesh.AddToHTML("f = <span>2*"..Binesh.ProgressNumber(Settings.Zarib.Pi).."/"..Binesh.ProgressNumber(Omega).."</span> &#8658; f = "..Binesh.ProgressNumber(f_Hz).." Hz")
			
			Binesh.AddToHTML("Omega = "..Binesh.ProgressNumber(Omega).." rad/s", "V")
			Binesh.AddToHTML("f = ?", "V")
		end
	end
end