function Binesh.F76_1()
	if n == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ê·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1) then
		if C_V ~= nil and _DeltaT ~= nil and _DeltaU_In ~= nil then
			Binesh.CreateHTMLFile("DeltaU = nC<sub>V</sub>DeltaT", "<span>n = DeltaU/C<sub>V</sub>DeltaT</span>")
			n = _DeltaU_In/C_V*_DeltaT
			
			Binesh.AddToHTML("DeltaU: "..Binesh.Convert_e(_DeltaU_In).." J", "V")
			Binesh.AddToHTML("C<sub>V</sub>: "..Binesh.Convert_e(C_V).." J/mol.K", "V")
			Binesh.AddToHTML("DeltaT: "..Binesh.Convert_e(_DeltaT).."<sup>o</sup>K", "V")
			Binesh.AddToHTML("n: ?", "V")
			
			Binesh.AddToHTML("n = <span>"..Binesh.Convert_e(_DeltaU_In).."/"..Binesh.Convert_e(C_V).."*"..Binesh.Convert_e(_DeltaT).."</span> &#8658; n = "..Binesh.Convert_e(n).." mol")
		end
	end
	
	if C_V == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "CV") ~= -1) then 
		if n ~= nil and _DeltaT ~= nil and _DeltaU_In ~= nil then
			Binesh.CreateHTMLFile("DeltaU = nC<sub>V</sub>DeltaT", "C<sub>V</sub> = <span>DeltaU/nDeltaT</span>")
			C_V = _DeltaU_In/n*_DeltaT
			
			Binesh.AddToHTML("DeltaU: "..Binesh.Convert_e(_DeltaU_In).." J", "V")
			Binesh.AddToHTML("n: "..Binesh.Convert_e(n).." mol", "V")
			Binesh.AddToHTML("DeltaT: "..Binesh.Convert_e(_DeltaT).."<sup>o</sup>K", "V")
			Binesh.AddToHTML("C<sub>V</sub>: ?", "V")
			
			Binesh.AddToHTML("C<sub>V</sub> = <span>"..Binesh.Convert_e(_DeltaU_In).."/"..Binesh.Convert_e(n).."*"..Binesh.Convert_e(_DeltaT).."</span> &#8658; C<sub>V</sub> = "..Binesh.Convert_e(C_V).." J/mol.K")
		end
	end
	
	if _DeltaT == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„«  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaT") ~= -1)) then
		if _DeltaU_In ~= nil and n ~= nil and C_V ~= nil then
			Binesh.CreateHTMLFile("DeltaU = nC<sub>V</sub>DeltaT", " DeltaT = <span>DeltaU/nC<sub>V</sub></span>")
			_DeltaT = _DeltaU_In/n*C_V
			
			Binesh.AddToHTML("DeltaU: "..Binesh.Convert_e(_DeltaU_In).." J", "V")
			Binesh.AddToHTML("n: "..Binesh.Convert_e(n).." mol", "V")
			Binesh.AddToHTML("C<sub>V</sub>: "..Binesh.Convert_e(C_V).." J/mol.K", "V")
			Binesh.AddToHTML("DeltaT: ?", "V")
			
			Binesh.AddToHTML("DeltaT = <span>"..Binesh.Convert_e(_DeltaU_In).."/"..Binesh.Convert_e(C_V).."*"..Binesh.Convert_e(n).."</span> &#8658; DeltaT = "..Binesh.Convert_e(_DeltaT).."<sup>o</sup>K")
		end
	end
	
	if _DeltaU_In == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— «‰—éÌ œ—Ê‰Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ œ—Ê‰Ì  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaU") ~= -1)) then 
		if _DeltaT ~= nil and n ~= nil and C_V ~= nil then
			Binesh.CreateHTMLFile("DeltaU = nC<sub>V</sub>DeltaT")
			_DeltaU_In = n*C_V*_DeltaT
			
			Binesh.AddToHTML("n: "..Binesh.Convert_e(n).." mol", "V")
			Binesh.AddToHTML("C<sub>V</sub>: "..Binesh.Convert_e(C_V).." J/mol.K", "V")
			Binesh.AddToHTML("DeltaT: "..Binesh.Convert_e(_DeltaT).."<sup>o</sup>K", "V")
			Binesh.AddToHTML("DeltaU: ?", "V")
			
			Binesh.AddToHTML("DeltaU = "..Binesh.Convert_e(n).."*"..Binesh.Convert_e(C_V).."*"..Binesh.Convert_e(_DeltaT).." &#8658; DeltaU = "..Binesh.Convert_e(_DeltaU_In).." J")
		end
	end
end