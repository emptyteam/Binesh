function Binesh.F51()
	if Alpha_Radian ~= nil then
		Binesh.CreateHTMLFile("<span>R/Pi</span> = <span>D/180</span>", "D = <span>180R/Pi</span>")
		Alpha = Math.RadToDeg(Alpha_Radian)
		Binesh.AddToHTML("D<sub>Alpha</sub> = <span>180*"..Alpha_Radian.."/"..Zarib.Pi.."</span> &#8658; D<sub>Alpha</sub> = "..Alpha.."<sup>o</sup>")
	end
	
	if V_Speed == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÓÑÚÊ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
		if L ~= nil and Alpha ~= nil then
			Binesh.CreateHTMLFile("V = Sqrt(2gL(1-cosAlpha))")
			
			V_Speed = Math.Sqrt(2*9.8*L*(1-Math.Cos(Math.Rad(Alpha))))
		
			Binesh.AddToHTML("V = Sqrt(2*9.8*"..L.."*(1-cos"..Alpha..")) &#8658; V = "..V_Speed.." m/s")
			
			Binesh.AddToHTML("L: "..L.." m", "V")
			Binesh.AddToHTML("Alpha: "..Alpha.." <sup>o</sup>", "V")
			Binesh.AddToHTML("V: ?", "V")
		end
	end
	
	if L == nil or ListBox.GetItemData("unknowns", FindL) == "l" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Øæá") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L") ~= -1 then
		if V_Speed ~= nil and Alpha ~= nil then
			Binesh.CreateHTMLFile("V = Sqrt(2gL(1-cosAlpha))", "L = -<span>V<sup>2</sup>/2g(cosAlpha-1)</span>")
			
			L = -1*(V_Speed^2/(2*9.8*(Math.Cos(Math.Rad(Alpha))-1)))
			
			Binesh.AddToHTML("L = -<span>"..V_Speed.."<sup>2</sup>/2*9.8*cos"..Alpha.."-1</span> &#8658; L = "..L.." m")
			
			Binesh.AddToHTML("V: "..V_Speed.." m/s", "V")
			Binesh.AddToHTML("Alpha: "..Alpha.." <sup>o</sup>", "V")
			Binesh.AddToHTML("L: ?", "V")
		end
	end
	
	if Alpha == nil or ListBox.GetItemData("unknowns", FindAlpha) == "Teta" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÒÇæíå") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Alpha") ~= -1 then
		if V_Speed ~= nil and L ~= nil then
			Binesh.CreateHTMLFile("V = Sqrt(2gL(1-cosAlpha))", "cosAlpha = 1- <span>V<sup>2</sup>/2gL</span>")
			
			CosAlpha = 1-((V_Speed^2)/(2*9.8*L))
			Alpha_Radian = Math.Acos(Math.Acos(Math.Cos(CosAlpha)))
			Alpha = Math.RadToDeg(Alpha_Radian)
			
			Binesh.AddToHTML("cosAlpha = 1- <span>"..V_Speed.."<sup>2</sup>/2*9.8*"..L.."</span> &#8658; cosAlpha = "..CosAlpha.." &#8658; Alpha<sub>Radian</sub> = "..Alpha_Radian.." &#8658; Alpha = "..Alpha.."<sup>o</sup>")
			
			Binesh.AddToHTML("V: "..V_Speed.." m/s", "V")
			Binesh.AddToHTML("L: "..L.." m", "V")
			Binesh.AddToHTML("Alpha: ?", "V")
		end
	end
end