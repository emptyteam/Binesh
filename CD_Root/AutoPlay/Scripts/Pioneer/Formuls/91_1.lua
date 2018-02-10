function Binesh.F91_1()
	--------------------------{DELTA}--------------------------
	if _DeltaU == nil then
		if _U1 ~= nil and _U2 ~= nil then
			Binesh.CreateHTMLFile("DeltaU = U<sub>2</sub>-U<sub>1</sub>")
			_DeltaU = _U2 - _U1
			Binesh.AddToHTML("DeltaU = "..Binesh.Convert_e(_U2).."-"..Binesh.Convert_e(_U1).." &#8658; DeltaV = "..Binesh.Convert_e(_DeltaU).." J")
		end
	end
	
	if _U1 == nil then
		if _DeltaU ~= nil and _U2 ~= nil then
			Binesh.CreateHTMLFile("DeltaU = U<sub>2</sub>-U<sub>1</sub>", "U<sub>1</sub> = U<sub>2</sub>-DeltaU")
			_U1 = _U2-_DeltaU
			Binesh.AddToHTML("U<sub>1</sub> = "..Binesh.Convert_e(_U2).."-"..Binesh.Convert_e(_DeltaU).." &#8658; U<sub>1</sub> = "..Binesh.Convert_e(_U1).." J")
		end
	end
	
	if _U2 == nil then
		if _DeltaU ~= nil and _U1 ~= nil then
			Binesh.CreateHTMLFile("DeltaU = U<sub>2</sub>-U<sub>1</sub>", "U<sub>2</sub> = DeltaU+U<sub>1</sub>")
			_U2 = _U1+_DeltaU
			Binesh.AddToHTML("U<sub>2</sub> = "..Binesh.Convert_e(_DeltaU).."+"..Binesh.Convert_e(_U1).." &#8658; U<sub>2</sub> = "..Binesh.Convert_e(_U2).." J")
		end
	end
	--------------------------END {DELTA}--------------------------
	if _DeltaU == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ��ю�") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "��ю� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "��ю� �������") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaU") ~= -1)) then
		if E_Electric ~= nil and q ~= nil and Teta ~= nil and d ~= nil then
			Binesh.CreateHTMLFile("DeltaU = -E|q|dcosTeta")
			_DeltaU = -E_Electric*Math.Abs(q)*d*Math.Cos(Math.Rad(Teta))
			
			Binesh.AddToHTML("E: "..Binesh.Convert_e(E_Electric).." N/C", "V")
			Binesh.AddToHTML("q: "..Binesh.Convert_e(q).." C", "V")
			Binesh.AddToHTML("d: "..Binesh.Convert_e(d).." m", "V")
			Binesh.AddToHTML("Teta: "..Binesh.Convert_e(Teta), "V")
			Binesh.AddToHTML("DeltaU: ?", "V")
			
			Binesh.AddToHTML("DeltaU = -"..Binesh.Convert_e(E_Electric).."*|"..Binesh.Convert_e(q).."|*"..Binesh.Convert_e(d).."*cos"..Binesh.Convert_e(Teta).." &#8658; DeltaU = "..Binesh.Convert_e(_DeltaU).." J")
		end
	end
	
	if E_Electric == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "E") ~= -1) then
		if q ~= nil and _DeltaU ~= nil and d ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("DeltaU = -E|q|dcosTeta", "E = - <span>DeltaU/|q|dcosTeta</span>")
			E_Electric = -_DeltaU/(Math.Abs(q)*d*Math.Cos(Math.Rad(Teta)))
			
			Binesh.AddToHTML("DeltaU: "..Binesh.Convert_e(_DeltaU).." J", "V")
			Binesh.AddToHTML("q: "..Binesh.Convert_e(q).." C", "V")
			Binesh.AddToHTML("d: "..Binesh.Convert_e(d).." m", "V")
			Binesh.AddToHTML("Teta: "..Binesh.Convert_e(Teta), "V")
			Binesh.AddToHTML("E: ?", "V")
			
			Binesh.AddToHTML("E = - <span>"..Binesh.Convert_e(_DeltaU).."/|"..Binesh.Convert_e(q).."|*"..Binesh.Convert_e(d).."*cos"..Binesh.Convert_e(Teta).."</span> &#8658; E = "..Binesh.Convert_e(E_Electric).." N/C")
		end
	end
	
	if q == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1) then
		if E_Electric ~= nil and _DeltaU ~= nil and Teta ~= nil and d ~= nil then
			Binesh.CreateHTMLFile("DeltaU = -E|q|dcosTeta", "q = |<span>DeltaU/EdcosTeta</span>|")
			
			q = Math.Abs(_DeltaU/(E_Electric*d*Math.Cos(Math.Rad(Teta))))
			
			Binesh.AddToHTML("DeltaU: "..Binesh.Convert_e(_DeltaU).." J", "V")
			Binesh.AddToHTML("E: "..Binesh.Convert_e(E_Electric).." N/C", "V")
			Binesh.AddToHTML("d: "..Binesh.Convert_e(d).." m", "V")
			Binesh.AddToHTML("Teta: "..Binesh.Convert_e(Teta), "V")
			Binesh.AddToHTML("q: ?", "V")
			
			Binesh.AddToHTML("q = |<span>"..Binesh.Convert_e(_DeltaU).."/"..Binesh.Convert_e(E_Electric).."*"..Binesh.Convert_e(d).."*cos"..Binesh.Convert_e(Teta).."</span>| &#8658; q = "..Binesh.Convert_e(q).." C")
		end
	end
	
	if d == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "d") ~= -1)) then 
		if E_Electric ~= nil and _DeltaU ~= nil and Teta ~= nil and q ~= nil then
			Binesh.CreateHTMLFile("DeltaU = -E|q|dcosTeta", "d = - <span>DeltaU/E|q|cosTeta</span>")
			d = -_DeltaU / (E_Electric*Math.Abs(q)*Math.Cos(Math.Rad(Teta)))
			
			Binesh.AddToHTML("DeltaU: "..Binesh.Convert_e(_DeltaU).." J", "V")
			Binesh.AddToHTML("E: "..Binesh.Convert_e(E_Electric).." N/C", "V")
			Binesh.AddToHTML("q: "..Binesh.Convert_e(q).." C", "V")
			Binesh.AddToHTML("Teta: "..Binesh.Convert_e(Teta), "V")
			Binesh.AddToHTML("d: ?", "V")
			
			Binesh.AddToHTML("d = - <span>"..Binesh.Convert_e(_DeltaU).."/"..Binesh.Convert_e(E_Electric).."*|"..Binesh.Convert_e(q).."|*cos"..Binesh.Convert_e(Teta).."</span> &#8658; d = "..Binesh.Convert_e(d).." m")
		end
	end
	
	if Teta == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta") ~= -1) then
		if E_Electric ~= nil and _DeltaU ~= nil and d ~= nil and q ~= nil then
			Binesh.CreateHTMLFile("DeltaU = -E|q|dcosTeta", "cosTeta = - <span>DeltaU/E|q|d</span>")
			CosTeta = -_DeltaU/(E_Electric*Math.Abs(q)*d)
			Teta_Radian = Math.Acos(Math.Acos(Math.Cos(CosTeta)))
			Teta = Math.RadToDeg(Teta_Radian)
			
			Binesh.AddToHTML("cosTeta = - <span>"..Binesh.Convert_e(_DeltaU).."/"..Binesh.Convert_e(E_Electric).."*|"..Binesh.Convert_e(q).."|*"..Binesh.Convert_e(d).." </span> &#8658; cosTeta = "..Binesh.Convert_e(CosTeta).." &#8658; Teta<sub>Radian</sub> = "..Binesh.Convert_e(Teta_Radian).." &#8658; Teta = "..Binesh.Convert_e(Teta).."<sup>o</sup>")
			
			Binesh.AddToHTML("DeltaU: "..Binesh.Convert_e(_DeltaU).." J", "V")
			Binesh.AddToHTML("E: "..Binesh.Convert_e(E_Electric).." N/C", "V")
			Binesh.AddToHTML("q: "..Binesh.Convert_e(q).." C", "V")
			Binesh.AddToHTML("d: "..Binesh.Convert_e(d).." m", "V")
			Binesh.AddToHTML("Teta: ?", "V")
		end
	end
end