function Binesh.F1()
	if m_Ton ~= nil and m == nil then
		m = math.abs(m_Ton * 1000)
		Binesh.CreateHTMLFile("m<sub>Kg</sub>= m<sub>Ton</sub>*10<sup>3</sup>", "m<sub>Kg</sub>= "..Binesh.ProgressNumber(m_Ton).."*10<sup>3</sup>")
		Binesh.AddToHTML("m<sub>Kg</sub>= "..Binesh.ProgressNumber(m).." Kg");
		Binesh.AddToHTML("<br>");
	end
	
	if V_Speed_mh ~= nil and V_Speed == nil then
		V_Speed = V_Speed_mh/3600
		Binesh.CreateHTMLFile("V<sub>m/s</sub>= <span>V<sub>m/h</sub>/3.6</span>", "V<sub>m/s</sub>= <span>"..Binesh.ProgressNumber(V_Speed_mh*10^(-3)).."/3.6</span>")
		Binesh.AddToHTML("V<sub>m/s</sub>= "..Binesh.ProgressNumber(V_Speed).." m/s");
		Binesh.AddToHTML("<br>");
	end
	
	if V_Speed_miles ~= nil and V_Speed == nil then
		V_Speed = V_Speed_miles*1609.3
		Binesh.CreateHTMLFile("V<sub>m/s</sub>= V<sub>mile/s</sub>*1609.3", "V<sub>m/s</sub>= "..Binesh.ProgressNumber(V_Speed_miles).."*1609.3")
		Binesh.AddToHTML("V<sub>m/s></sub>= "..Binesh.ProgressNumber(V_Speed).." m/s");
		Binesh.AddToHTML("<br>");
	end
	
	if V_Speed_mileh ~= nil and V_Speed == nil then
		V_Speed = V_Speed_mileh*1609.3/3600
		Binesh.CreateHTMLFile("V<sub>m/s</sub>= V<sub>mile/h</sub>*<span>1609.3/3.6</span>", "V<sub>m/s</sub>= "..Binesh.ProgressNumber(V_Speed_miles*10^(-3)).."*<span>1609.3/3.6</span>")
		Binesh.AddToHTML("V<sub>m/s></sub>= "..Binesh.ProgressNumber(V_Speed).." m/s");
		Binesh.AddToHTML("<br>");
	end
	
	if K == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÇäÑŽí") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "K") ~= -1) then
		if V_Speed ~= nil and m ~= nil then
			Binesh.CreateHTMLFile("K = <span>1/2</span>mV<sup>2</sup>")
			K = 0.5*(m*(V_Speed^2))
			
			Binesh.AddToHTML("K = <span>1/2</span>*"..Binesh.ProgressNumber(m).."*"..Binesh.ProgressNumber(V_Speed).."<sup>2</sup> &#8658; K = "..Binesh.ProgressNumber(K).." J")
			
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Speed).." m/s", "V")
			Binesh.AddToHTML("m = "..Binesh.ProgressNumber(m).." Kg", "V")
			Binesh.AddToHTML("K = ?", "V")
		end
	end
	
	if m == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÌÑã") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1) then
		if K ~= nil and V_Speed ~= nil then
			Binesh.CreateHTMLFile("K = <span>1/2</span>mV<sup>2</sup>", "m = <span>2K/V<sup>2</sup></span>")
			m = math.abs((2*K)/(V_Speed^2))
			
			Binesh.AddToHTML("m = <span>2*"..Binesh.ProgressNumber(K).."/"..Binesh.ProgressNumber(V_Speed).."<sup>2</sup></span> &#8658; m = "..Binesh.ProgressNumber(m).." Kg")
					
			Binesh.AddToHTML("K = "..Binesh.ProgressNumber(K).." J", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Speed).." m/s", "V")
			Binesh.AddToHTML("m = ?", "V")
		end
	end
	
	if V_Speed == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÓÑÚÊ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then
		if K ~= nil and m ~= nil then
			Binesh.CreateHTMLFile("K = <span>1/2</span>mV<sup>2</sup>", "V = Sqrt(<span>2K/m</span>)")
			V_Speed = Math.Sqrt(2*K/m)
			
			Binesh.AddToHTML("V = Sqrt(<span>2*"..Binesh.ProgressNumber(K).."/"..Binesh.ProgressNumber(m).."</span>) &#8658; V = "..Binesh.ProgressNumber(V_Speed).." m/s")
			
			Binesh.AddToHTML("m = "..Binesh.ProgressNumber(m).." Kg", "V")
			Binesh.AddToHTML("K = "..Binesh.ProgressNumber(K).." J", "V")
			Binesh.AddToHTML("V = ?", "V")
		end
	end
end