function Binesh.F51()
	if Alpha_Radian ~= nil and Alpha == nil and Teta == nil then
		Binesh.CreateHTMLFile("<span>R/Pi</span> = <span>D/180</span>", "D = <span>180R/Pi</span>")
		Alpha = Math.RadToDeg(Alpha_Radian)
		Binesh.AddToHTML("D<sub>Alpha</sub> = <span>180*"..Binesh.ProgressNumber(Alpha_Radian).."/"..Binesh.ProgressNumber(Settings.Zarib.Pi).."</span> &#8658; D<sub>Alpha</sub> = "..Binesh.ProgressNumber(Alpha).."<sup>o</sup>")
	end
	
	if V_Speed == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then
		if L ~= nil and Alpha ~= nil then
			Binesh.CreateHTMLFile("V = Sqrt(2gL(1-CosAlpha))")
			
			V_Speed = Math.Sqrt(2*9.8*L*(1-Math.Cos(Math.Rad(Alpha))))
		
			Binesh.AddToHTML("V = Sqrt(2*9.8*"..Binesh.ProgressNumber(L).."*(1-Cos"..Binesh.ProgressNumber(Alpha)..")) &#8658; V = "..Binesh.ProgressNumber(V_Speed).." m/s")
			
			Binesh.AddToHTML("L = "..Binesh.ProgressNumber(L).." m", "V")
			Binesh.AddToHTML("Alpha = "..Binesh.ProgressNumber(Alpha).." <sup>o</sup>", "V")
			Binesh.AddToHTML("V = ?", "V")
		end
	end
	
	if L == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L") ~= -1) then
		if V_Speed ~= nil and Alpha ~= nil then
			Binesh.CreateHTMLFile("V = Sqrt(2gL(1-CosAlpha))", "L = -<span>V<sup>2</sup>/2g(CosAlpha-1)</span>")
			
			L = -1*(V_Speed^2/(2*9.8*(Math.Cos(Math.Rad(Alpha))-1)))
			
			Binesh.AddToHTML("L = -<span>"..Binesh.ProgressNumber(V_Speed).."<sup>2</sup>/2*9.8*Cos"..Binesh.ProgressNumber(Alpha).."-1</span> &#8658; L = "..Binesh.ProgressNumber(L).." m")
			
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Speed).." m/s", "V")
			Binesh.AddToHTML("Alpha = "..Binesh.ProgressNumber(Alpha).." <sup>o</sup>", "V")
			Binesh.AddToHTML("L = ?", "V")
		end
	end
	
	if Alpha == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Alpha") ~= -1) then
		if V_Speed ~= nil and L ~= nil then
			Binesh.CreateHTMLFile("V = Sqrt(2gL(1-CosAlpha))", "CosAlpha = 1- <span>V<sup>2</sup>/2gL</span>")
			
			CosAlpha = 1-((V_Speed^2)/(2*9.8*L))
			Alpha_Radian = Math.Acos(Math.Acos(Math.Cos(CosAlpha)))
			Alpha = Math.RadToDeg(Alpha_Radian)
			
			Binesh.AddToHTML("CosAlpha = 1- <span>"..Binesh.ProgressNumber(V_Speed).."<sup>2</sup>/2*9.8*"..Binesh.ProgressNumber(L).."</span> &#8658; CosAlpha = "..Binesh.ProgressNumber(CosAlpha).." &#8658; Alpha<sub>Radian</sub> = "..Binesh.ProgressNumber(Alpha_Radian).." &#8658; Alpha = "..Binesh.ProgressNumber(Alpha).."<sup>o</sup>")
			
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Speed).." m/s", "V")
			Binesh.AddToHTML("L = "..Binesh.ProgressNumber(L).." m", "V")
			Binesh.AddToHTML("Alpha = ?", "V")
		end
	end
end