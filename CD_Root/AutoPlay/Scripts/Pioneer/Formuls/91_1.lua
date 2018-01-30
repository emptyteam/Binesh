function Binesh.F91_1()
	--------------------------{DELTA}--------------------------
	if _DeltaU == nil then
		if _U1 ~= nil and _U2 ~= nil then
			Binesh.CreateHTMLFile("DeltaU = U<sub>2</sub>-U<sub>1</sub>")
			_DeltaU = _U2 - _U1
			Binesh.AddToHTML("DeltaU = ".._U2.."-".._U1.." &#8658; DeltaV = ".._DeltaU.." J")
		end
	end
	
	if _U1 == nil then
		if _DeltaU ~= nil and _U2 ~= nil then
			Binesh.CreateHTMLFile("DeltaU = U<sub>2</sub>-U<sub>1</sub>", "U<sub>1</sub> = U<sub>2</sub>-DeltaU")
			_U1 = _U2-_DeltaU
			Binesh.AddToHTML("U<sub>1</sub> = ".._U2.."-".._DeltaU.." &#8658; U<sub>1</sub> = ".._U1.." J")
		end
	end
	
	if _U2 == nil then
		if _DeltaU ~= nil and _U1 ~= nil then
			Binesh.CreateHTMLFile("DeltaU = U<sub>2</sub>-U<sub>1</sub>", "U<sub>2</sub> = DeltaU+U<sub>1</sub>")
			_U2 = _U1+_DeltaU
			Binesh.AddToHTML("U<sub>2</sub> = ".._DeltaU.."+".._U1.." &#8658; U<sub>2</sub> = ".._U2.." J")
		end
	end
	--------------------------END {DELTA}--------------------------
	if _DeltaU == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ  €ÌÌ—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ Å «‰”Ì·") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaU") ~= -1)) then
		if E_Electric ~= nil and q ~= nil and Teta ~= nil and d ~= nil then
			Binesh.CreateHTMLFile("DeltaU = -E|q|dcosTeta")
			_DeltaU = -E_Electric*Math.Abs(q)*d*Math.Cos(Math.Rad(Teta))
			
			Binesh.AddToHTML("E: "..E_Electric.." N/C", "V")
			Binesh.AddToHTML("q: "..q.." C", "V")
			Binesh.AddToHTML("d: "..d.." m", "V")
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("DeltaU: ?", "V")
			
			Binesh.AddToHTML("DeltaU = -"..E_Electric.."*|"..q.."|*"..d.."*cos"..Teta.." &#8658; DeltaU = ".._DeltaU.." J")
		end
	end
	
	if E_Electric == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "E") ~= -1) then
		if q ~= nil and _DeltaU ~= nil and d ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("DeltaU = -E|q|dcosTeta", "E = - <span>DeltaU/|q|dcosTeta</span>")
			E_Electric = -_DeltaU/(Math.Abs(q)*d*Math.Cos(Math.Rad(Teta)))
			
			Binesh.AddToHTML("DeltaU: ".._DeltaU.." J", "V")
			Binesh.AddToHTML("q: "..q.." C", "V")
			Binesh.AddToHTML("d: "..d.." m", "V")
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("E: ?", "V")
			
			Binesh.AddToHTML("E = - <span>".._DeltaU.."/|"..q.."|*"..d.."*cos"..Teta.."</span> &#8658; E = "..E_Electric.." N/C")
		end
	end
	
	if q == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1) then
		if E_Electric ~= nil and _DeltaU ~= nil and Teta ~= nil and d ~= nil then
			Binesh.CreateHTMLFile("DeltaU = -E|q|dcosTeta", "q = |<span>DeltaU/EdcosTeta</span>|")
			
			q = Math.Abs(_DeltaU/(E_Electric*d*Math.Cos(Math.Rad(Teta))))
			
			Binesh.AddToHTML("DeltaU: ".._DeltaU.." J", "V")
			Binesh.AddToHTML("E: "..E_Electric.." N/C", "V")
			Binesh.AddToHTML("d: "..d.." m", "V")
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("q: ?", "V")
			
			Binesh.AddToHTML("q = |<span>".._DeltaU.."/"..E_Electric.."*"..d.."*cos"..Teta.."</span>| &#8658; q = "..q.." C")
		end
	end
	
	if d == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "d") ~= -1)) then 
		if E_Electric ~= nil and _DeltaU ~= nil and Teta ~= nil and q ~= nil then
			Binesh.CreateHTMLFile("DeltaU = -E|q|dcosTeta", "d = - <span>DeltaU/E|q|cosTeta</span>")
			d = -_DeltaU / (E_Electric*Math.Abs(q)*Math.Cos(Math.Rad(Teta)))
			
			Binesh.AddToHTML("DeltaU: ".._DeltaU.." J", "V")
			Binesh.AddToHTML("E: "..E_Electric.." N/C", "V")
			Binesh.AddToHTML("q: "..q.." C", "V")
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("d: ?", "V")
			
			Binesh.AddToHTML("d = - <span>".._DeltaU.."/"..E_Electric.."*|"..q.."|*cos"..Teta.."</span> &#8658; d = "..d.." m")
		end
	end
	
	if Teta == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta") ~= -1) then
		if E_Electric ~= nil and _DeltaU ~= nil and d ~= nil and q ~= nil then
			Binesh.CreateHTMLFile("DeltaU = -E|q|dcosTeta", "cosTeta = - <span>DeltaU/E|q|d</span>")
			CosTeta = -_DeltaU/(E_Electric*Math.Abs(q)*d)
			Teta_Radian = Math.Acos(Math.Acos(Math.Cos(CosTeta)))
			Teta = Math.RadToDeg(Teta_Radian)
			
			Binesh.AddToHTML("cosTeta = - <span>".._DeltaU.."/"..E_Electric.."*|"..q.."|*"..d.." </span> &#8658; cosTeta = "..CosTeta.." &#8658; Teta<sub>Radian</sub> = "..Teta_Radian.." &#8658; Teta = "..Teta.."<sup>o</sup>")
			
			Binesh.AddToHTML("DeltaU: ".._DeltaU.." J", "V")
			Binesh.AddToHTML("E: "..E_Electric.." N/C", "V")
			Binesh.AddToHTML("q: "..q.." C", "V")
			Binesh.AddToHTML("d: "..d.." m", "V")
			Binesh.AddToHTML("Teta: ?", "V")
		end
	end
end