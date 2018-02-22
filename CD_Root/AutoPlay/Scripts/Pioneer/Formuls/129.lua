function Binesh.F129()
	FindPoroton = ListBox.FindItem("Words", -1, LB_BYTEXT, "������");
	FindElectron = ListBox.FindItem("Words", -1, LB_BYTEXT, "������");
	if FindElectron ~= -1 and q ~= nil then
		q = -q
	end
	
	if F == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1) then
		if q ~= nil and V_Speed ~= nil and B ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("F = qVBsinTeta")
			F = q*V_Speed*B*Math.Sin(Math.Rad(Teta))
			
			Binesh.AddToHTML("q = "..Binesh.ProgressNumber(q).." C", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Speed).." m/s", "V")
			Binesh.AddToHTML("B = "..Binesh.ProgressNumber(B).." T", "V")
			Binesh.AddToHTML("Teta = "..Binesh.ProgressNumber(Teta), "V")
			Binesh.AddToHTML("F = ?", "V")
			
			Binesh.AddToHTML("F = "..Binesh.ProgressNumber(q).."*"..Binesh.ProgressNumber(V_Speed).."*"..Binesh.ProgressNumber(B).."*sin"..Binesh.ProgressNumber(Teta).." &#8658; F = "..Binesh.ProgressNumber(F).." N")
		end
	end
	
	if q == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1) then
		if F ~= nil and V_Speed ~= nil and B ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("F = qVBsinTeta", "q = <span>F/VBsinTeta</span>")
			q = F/(V_Speed*B*Math.Sin(Math.Rad(Teta)))
			
			Binesh.AddToHTML("F = "..Binesh.ProgressNumber(F).." N", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Speed).." m/s", "V")
			Binesh.AddToHTML("B = "..Binesh.ProgressNumber(B).." T", "V")
			Binesh.AddToHTML("Teta = "..Binesh.ProgressNumber(Teta), "V")
			Binesh.AddToHTML("q = ?", "V")
			
			Binesh.AddToHTML("q = <span>"..Binesh.ProgressNumber(F).."/"..Binesh.ProgressNumber(V_Speed).."*"..Binesh.ProgressNumber(B).."*sin"..Binesh.ProgressNumber(Teta).."</span> &#8658; q = "..Binesh.ProgressNumber(q).." C")
		end
	end
	
	if V_Speed == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then
		if F ~= nil and q ~= nil and B ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("F = qVBsinTeta", "V = <span>F/qBsinTeta</span>")
			V_Speed = F/(q*B*Math.Sin(Math.Rad(Teta)))
			
			Binesh.AddToHTML("F = "..Binesh.ProgressNumber(F).." N", "V")
			Binesh.AddToHTML("q = "..Binesh.ProgressNumber(q).." C", "V")
			Binesh.AddToHTML("B = "..Binesh.ProgressNumber(B).." T", "V")
			Binesh.AddToHTML("Teta = "..Binesh.ProgressNumber(Teta), "V")
			Binesh.AddToHTML("V = ?", "V")
			
			Binesh.AddToHTML("V = <span>"..Binesh.ProgressNumber(F).."/"..Binesh.ProgressNumber(q).."*"..Binesh.ProgressNumber(B).."*sin"..Binesh.ProgressNumber(Teta).."</span> &#8658; V = "..Binesh.ProgressNumber(V_Speed).." m/s")
		end
	end
	
	if B == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1) then
		if F ~= nil and q ~= nil and V_Speed ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("F = qVBsinTeta", "B = <span>F/qVsinTeta</span>")
			
			B = F/(q*V_Speed*Math.Sin(Math.Rad(Teta)))
			
			Binesh.AddToHTML("F = "..Binesh.ProgressNumber(F).." N", "V")
			Binesh.AddToHTML("q = "..Binesh.ProgressNumber(q).." C", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Speed).." m/s", "V")
			Binesh.AddToHTML("Teta = "..Binesh.ProgressNumber(Teta), "V")
			Binesh.AddToHTML("B = ?", "V")
			
			Binesh.AddToHTML("B = <span>"..Binesh.ProgressNumber(F).."/"..Binesh.ProgressNumber(q).."*"..Binesh.ProgressNumber(V_Speed).."*sin"..Binesh.ProgressNumber(Teta).."</span> &#8658; B = "..Binesh.ProgressNumber(B).." T")
		end
	end
	
	if Teta == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Alpha") ~= -1)) then
		if F ~= nil and q ~= nil and V_Speed ~= nil and B ~= nil then
			Binesh.CreateHTMLFile("F = qVBsinTeta", "sinTeta = <span>F/qVB</span>")
			
			SinTeta = F/(q*V_Speed*B)
			Teta_Radian = Math.Asin(Math.Asin(Math.Sin(SinTeta)))
			Teta = Math.RadToDeg(Teta_Radian)
			
			Binesh.AddToHTML("F = "..Binesh.ProgressNumber(F).." N", "V")
			Binesh.AddToHTML("q = "..Binesh.ProgressNumber(q).." C", "V")
			Binesh.AddToHTML("V = "..Binesh.ProgressNumber(V_Speed).." m/s", "V")
			Binesh.AddToHTML("B = "..Binesh.ProgressNumber(B).." T", "V")
			Binesh.AddToHTML("Teta = ?", "V")
			
			Binesh.AddToHTML("sinTeta = <span>"..Binesh.ProgressNumber(F).."/"..Binesh.ProgressNumber(q).."*"..Binesh.ProgressNumber(V_Speed).."*"..Binesh.ProgressNumber(B).."</span> &#8658; sinTeta = "..Binesh.ProgressNumber(SinTeta).." &#8658; Teta<sub>Radian</sub> = "..Binesh.ProgressNumber(Teta_Radian).." &#8658; Teta = "..Binesh.ProgressNumber(Teta).."<sup>o</sup>")
		end
	end
end