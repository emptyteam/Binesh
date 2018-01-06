function Binesh.F76()
	if _DeltaTeta ~= nil or _Teta1 ~= nil or _Teta2 ~= nil then
		Binesh.CreateHTMLFile("T = Teta+273")
	end
	
	if _DeltaTeta ~= nil then
		_DeltaT = _DeltaTeta+273
		Binesh.AddToHTML("DeltaT = ".._DeltaTeta.."+273 &#8658; DeltaT = ".._DeltaT.."<sup>o</sup>K")
	end
	if _Teta1 ~= nil then
		_T1 = _Teta1+273
		Binesh.AddToHTML("T<sub>1</sub> = ".._Teta1.."+273 &#8658; T<sub>1</sub> = ".._T1.."<sup>o</sup>K")
	end
	if _Teta2 ~= nil then
		_T2 = _Teta2+273
		Binesh.AddToHTML("T<sub>2</sub> = ".._Teta2.."+273 &#8658; T<sub>2</sub> = ".._T2.."<sup>o</sup>K")
	end
	
	--------------------------{DELTA}--------------------------
	if _DeltaT == nil then
		if _T1 ~= nil and _T2 ~= nil then
			Binesh.CreateHTMLFile("DeltaT = T<sub>2</sub>-T<sub>1</sub>")
			_DeltaT = _T2 - _T1
			Binesh.AddToHTML("DeltaT = ".._T2.."-".._T1.." &#8658; DeltaT = ".._DeltaT.."<sup>o</sup>K")
		end
	end
	
	if _T1 == nil then
		if _DeltaT ~= nil and _T2 ~= nil then
			Binesh.CreateHTMLFile("DeltaT = T<sub>2</sub>-T<sub>1</sub>", "T<sub>1</sub> = T<sub>2</sub>-DeltaT")
			_T1 = _T2-_DeltaT
			Binesh.AddToHTML("T<sub>1</sub> = ".._T2.."-".._DeltaT.." &#8658; T<sub>1</sub> = ".._T1.."<sup>o</sup>K")
		end
	end
	
	if _T2 == nil then
		if _DeltaT ~= nil and _T1 ~= nil then
			Binesh.CreateHTMLFile("DeltaT = T<sub>2</sub>-T<sub>1</sub>", "T<sub>2</sub> = DeltaT+T<sub>1</sub>")
			_T2 = _T1+_DeltaT
			Binesh.AddToHTML("T<sub>2</sub> = ".._DeltaT.."+".._T1.." &#8658; T<sub>2</sub> = ".._T2.."<sup>o</sup>K")
		end
	end
	--------------------------END {DELTA}--------------------------
	if n == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ê·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1 then
		if C_V ~= nil and _DeltaT ~= nil and _DeltaU_In ~= nil then
			Binesh.CreateHTMLFile("DeltaU = nC<sub>V</sub>DeltaT", "<span>n = DeltaU/C<sub>V</sub>DeltaT</span>")
			n = _DeltaU_In/C_V*_DeltaT
			
			Binesh.AddToHTML("DeltaU: ".._DeltaU_In.." J", "V")
			Binesh.AddToHTML("C<sub>V</sub>: "..C_V.." J/mol.K", "V")
			Binesh.AddToHTML("DeltaT: ".._DeltaT.."<sup>o</sup>K", "V")
			Binesh.AddToHTML("n: ?", "V")
			
			Binesh.AddToHTML("n = <span>".._DeltaU_In.."/"..C_V.."*".._DeltaT.."</span> &#8658; n = "..n.." mol")
		end
	end
	
	if C_V == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "CV") ~= -1 then 
		if n ~= nil and _DeltaT ~= nil and _DeltaU_In ~= nil then
			Binesh.CreateHTMLFile("DeltaU = nC<sub>V</sub>DeltaT", "C<sub>V</sub> = <span>DeltaU/nDeltaT</span>")
			C_V = _DeltaU_In/n*_DeltaT
			
			Binesh.AddToHTML("DeltaU: ".._DeltaU_In.." J", "V")
			Binesh.AddToHTML("n: "..n.." mol", "V")
			Binesh.AddToHTML("DeltaT: ".._DeltaT.."<sup>o</sup>K", "V")
			Binesh.AddToHTML("C<sub>V</sub>: ?", "V")
			
			Binesh.AddToHTML("C<sub>V</sub> = <span>".._DeltaU_In.."/"..n.."*".._DeltaT.."</span> &#8658; C<sub>V</sub> = "..C_V.." J/mol.K")
		end
	end
	
	if _DeltaT == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„«  €ÌÌ—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaT") ~= -1 then
		if _DeltaU_In ~= nil and n ~= nil and C_V ~= nil then
			Binesh.CreateHTMLFile("DeltaU = nC<sub>V</sub>DeltaT", " DeltaT = <span>DeltaU/nC<sub>V</sub></span>")
			_DeltaT = _DeltaU_In/n*C_V
			
			Binesh.AddToHTML("DeltaU: ".._DeltaU_In.." J", "V")
			Binesh.AddToHTML("n: "..n.." mol", "V")
			Binesh.AddToHTML("C<sub>V</sub>: "..C_V.." J/mol.K", "V")
			Binesh.AddToHTML("DeltaT: ?", "V")
			
			Binesh.AddToHTML("DeltaT = <span>".._DeltaU_In.."/"..C_V.."*"..n.."</span> &#8658; DeltaT = ".._DeltaT.."<sup>o</sup>K")
		end
	end
	
	if _DeltaU_In == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ œ—Ê‰Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ œ—Ê‰Ì  €ÌÌ—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaU") ~= -1 then 
		if _DeltaT ~= nil and n ~= nil and C_V ~= nil then
			Binesh.CreateHTMLFile("DeltaU = nC<sub>V</sub>DeltaT")
			_DeltaU_In = n*C_V*_DeltaT
			
			Binesh.AddToHTML("n: "..n.." mol", "V")
			Binesh.AddToHTML("C<sub>V</sub>: "..C_V.." J/mol.K", "V")
			Binesh.AddToHTML("DeltaT: ".._DeltaT.."<sup>o</sup>K", "V")
			Binesh.AddToHTML("DeltaU: ?", "V")
			
			Binesh.AddToHTML("DeltaU = "..n.."*"..C_V.."*".._DeltaT.." &#8658; DeltaU = ".._DeltaU_In.." J")
		end
	end
end