function Binesh.F142_1()
	if Omega == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÓÑÚÊ ÒÇæíå") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Omega") ~= -1 then
		if T_141 ~= nil then
			Binesh.CreateHTMLFile("Omega = <span>2Pi/T</span>")
			
			Omega = 2*Zarib.Pi/T_141
			
			Binesh.AddToHTML("Omega = <span>2*"..Zarib.Pi.."/"..T_141.."</span> &#8658; Omega = "..Omega.." rad/s")
			
			Binesh.AddToHTML("T: "..T_141.." s", "V")
			Binesh.AddToHTML("Omega: ?", "V")
		end
	end
	
	if T_141 == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÏæÑÇä") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T") ~= -1 then
		if Oemga ~= nil then
			Binesh.CreateHTMLFile("Omega = <span>2Pi/T</span>", "T = <span>2Pi/Omega</span>")
			
			T_141 = 2*Zarib.Pi/Omega
			
			Binesh.AddToHTML("T = <span>2*"..Zarib.Pi.."/"..Omega.."</span> &#8658; T = "..T_141.." s")
			
			Binesh.AddToHTML("Omega: "..Omega.." rad/s", "V")
			Binesh.AddToHTML("T: ?", "V")
		end
	end
end