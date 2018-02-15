function Binesh.F4_1()
	if (_DeltaTF ~= nil or _TF1 ~= nil or _TF2 ~= nil) and (_DeltaTeta == nil and _Teta1 == nil and _Teta2 == nil) then
		Binesh.CreateHTMLFile("F = <span>9/5</span>Teta+32", "Teta = <span>5/9</span>(F-32)")
	end
	
	if _DeltaTF ~= nil and _DeltaTeta == nil then
		_DeltaTeta = 5/9*(_DeltaTF - 32)
		Binesh.AddToHTML("DeltaTeta = <span>5/9</span>("..Binesh.Convert_e(_DeltaTF).."-32) &#8658; Teta = "..Binesh.Convert_e(_DeltaTeta).." C")

	end
	
	if _TF1 ~= nil and _Teta1 == nil then
		_Teta1 = 5/9*(_TF1 - 32)
		Binesh.AddToHTML("Teta<sub>1</sub> = <span>5/9</span>("..Binesh.Convert_e(_TF1).."-32) &#8658; Teta<sub>1</sub> = "..Binesh.Convert_e(_Teta1).." C")

	end
	
	if _TF2 ~= nil and _Teta2 == nil then
		_Teta2 = 5/9*(_TF2 - 32)
		Binesh.AddToHTML("Teta<sub>2</sub> = <span>5/9</span>("..Binesh.Convert_e(_TF2).."-32) &#8658; Teta<sub>2</sub> = "..Binesh.Convert_e(_Teta2).." C")

	end
	
	if (_DeltaT ~= nil or _T1 ~= nil or _T2 ~= nil) and (_DeltaTeta == nil and _Teta1 == nil and _Teta2 == nil) then
		Binesh.CreateHTMLFile("T = Teta+273", "Teta = T-273")
	end
	
	if _DeltaT ~= nil and _DeltaTeta == nil then
		_DeltaTeta = _DeltaT-273
		Binesh.AddToHTML("DeltaTeta = "..Binesh.Convert_e(_DeltaT).."-273 &#8658; DeltaTeta = "..Binesh.Convert_e(_DeltaTeta).."<sup>o</sup>C")
	end
	if _T1 ~= nil and _Teta1 == nil then
		_Teta1 = _T1-273
		Binesh.AddToHTML("Teta<sub>1</sub> = "..Binesh.Convert_e(_T1).."-273 &#8658; Teta<sub>1</sub> = "..Binesh.Convert_e(_Teta1).."<sup>o</sup>C")
	end
	if _T2 ~= nil and _Teta2 == nil then
		_Teta2 = _T2-273
		Binesh.AddToHTML("Teta<sub>2</sub> = "..Binesh.Convert_e(_T2).."-273 &#8658; Teta<sub>2</sub> = "..Binesh.Convert_e(_Teta2).."<sup>o</sup>C")
	end
	
	--------------------------{DELTA}--------------------------
	if _DeltaTeta == nil then
		if _Teta1 ~= nil and _Teta2 ~= nil then
			Binesh.CreateHTMLFile("DeltaTeta = Teta<sub>2</sub>-Teta<sub>1</sub>")
			_DeltaTeta = _Teta2 - _Teta1
			Binesh.AddToHTML("DeltaTeta = "..Binesh.Convert_e(_Teta2).."-"..Binesh.Convert_e(_Teta1).." &#8658; DeltaTeta = "..Binesh.Convert_e(_DeltaTeta).."<sup>o</sup>C")
		end
	end
	
	if _Teta1 == nil then
		if _DeltaTeta ~= nil and _Teta2 ~= nil then
			Binesh.CreateHTMLFile("DeltaTeta = Teta<sub>2</sub>-Teta<sub>1</sub>", "Teta<sub>1</sub> = Teta<sub>2</sub>-DeltaTeta")
			_Teta1 = _Teta2-_DeltaTeta
			Binesh.AddToHTML("Teta<sub>1</sub> = "..Binesh.Convert_e(_Teta2).."-"..Binesh.Convert_e(_DeltaTeta).." &#8658; Teta<sub>1</sub> = "..Binesh.Convert_e(_Teta1).."<sup>o</sup>C")
		end
	end
	
	if _Teta2 == nil then
		if _DeltaTeta ~= nil and _Teta1 ~= nil then
			Binesh.CreateHTMLFile("DeltaTeta = Teta<sub>2</sub>-Teta<sub>1</sub>", "Teta<sub>2</sub> = DeltaTeta+Teta<sub>1</sub>")
			_Teta2 = _Teta1+_DeltaTeta
			Binesh.AddToHTML("Teta<sub>2</sub> = "..Binesh.Convert_e(_DeltaTeta).."+"..Binesh.Convert_e(_Teta1).." &#8658; Teta<sub>2</sub> = "..Binesh.Convert_e(_Teta2).."<sup>o</sup>C")
		end
	end
	--------------------------END {DELTA}--------------------------
	if Q == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ê—„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Q") ~= -1) then
		if m ~= nil and c ~= nil and _DeltaTeta ~= nil then
			Binesh.CreateHTMLFile("Q = mcDeltaTeta")
			Q = m*c*_DeltaTeta
			
			Binesh.AddToHTML("m: "..Binesh.Convert_e(m).." m", "V")
			Binesh.AddToHTML("c: "..Binesh.Convert_e(c).." J/Kg.C", "V")
			Binesh.AddToHTML("DeltaTeta: "..Binesh.Convert_e(_DeltaTeta).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("Q: ?", "V")
			
			Binesh.AddToHTML("Q = "..Binesh.Convert_e(m).."*"..Binesh.Convert_e(c).."*"..Binesh.Convert_e(_DeltaTeta).." &#8658; Q = "..Binesh.Convert_e(Q).." J")
		end
	end
	
	if m == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1) then 
		if Q ~= nil and c ~= nil and _DeltaTeta ~= nil then
			Binesh.CreateHTMLFile("Q = m*c*DeltaTeta", "m = <span>Q/cDeltaTeta</span>")
			m = Q/c*_DeltaTeta
			
			Binesh.AddToHTML("Q: "..Binesh.Convert_e(Q).." J", "V")
			Binesh.AddToHTML("c: "..Binesh.Convert_e(c).." J/Kg.C", "V")
			Binesh.AddToHTML("DeltaTeta: "..Binesh.Convert_e(_DeltaTeta).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("m: ?", "V")
			
			Binesh.AddToHTML("m = <span>"..Binesh.Convert_e(Q).."/"..Binesh.Convert_e(c).."*"..Binesh.Convert_e(_DeltaTeta).."</span> &#8658; m = "..Binesh.Convert_e(math.abs(m)).." Kg")
		end
	end
	
	if c == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "c") ~= -1) then 
		if Q ~= nil and m ~= nil and _DeltaTeta ~= nil then
			Binesh.CreateHTMLFile("Q = m*c*DeltaTeta", "c = <span>Q/m*DeltaTeta</span>")
			c = Q/m*_DeltaTeta
			Binesh.AddToHTML("c = <span>"..Binesh.Convert_e(Q).."/"..Binesh.Convert_e(m).."*"..Binesh.Convert_e(_DeltaTeta).."</span> &#8658; c = "..Binesh.Convert_e(c).." J/Kg.C")
			
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("Q: "..Binesh.Convert_e(Q).." J", "V")
			Binesh.AddToHTML("m: "..Binesh.Convert_e(m).." Kg", "V")
			Binesh.AddToHTML("DeltaTeta: "..Binesh.Convert_e(_DeltaTeta).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("c: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "c");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	if _DeltaTeta == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„«  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaT") ~= -1)) then
		if Q ~= nil and m ~= nil and c ~= nil then
			Binesh.CreateHTMLFile("Q = m*c*DeltaTeta", "DeltaTeta = <span>Q/mc</span>")
			_DeltaTeta = Q/m*c
			
			Binesh.AddToHTML("Q: "..Binesh.Convert_e(Q).." J", "V")
			Binesh.AddToHTML("m: "..Binesh.Convert_e(m).." Kg", "V")
			Binesh.AddToHTML("c: "..Binesh.Convert_e(c).." J/Kg.C", "V")
			Binesh.AddToHTML("DeltaTeta: ?", "V")
			
			Binesh.AddToHTML("DeltaTeta = <span>"..Binesh.Convert_e(Q).."/"..Binesh.Convert_e(m).."*"..Binesh.Convert_e(c).."</span> &#8658; DeltaTeta = "..Binesh.Convert_e(_DeltaTeta).."<sup>o</sup>C")
		end
	end
end