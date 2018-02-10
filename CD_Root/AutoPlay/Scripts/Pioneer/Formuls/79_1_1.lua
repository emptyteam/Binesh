function Binesh.F79_1_1()
	if Q == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Q") ~= -1) then 
		if n ~= nil and CV ~= nil and _DeltaT ~= nil then
			Binesh.CreateHTMLFile("Q = n*C<sub>V</sub>DeltaT")
			Q = n*CV*_DeltaT
			Binesh.AddToHTML("Q = "..Binesh.Convert_e(n).."*"..Binesh.Convert_e(CV).."*"..Binesh.Convert_e(_DeltaT).." &#8658; Q = "..Binesh.Convert_e(Q).." J")
			
			Binesh.AddToHTML("n: "..Binesh.Convert_e(n).." mol", "V")
			Binesh.AddToHTML("DeltaTeta: "..Binesh.Convert_e(_DeltaTeta).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("C<sub>V</sub>: "..Binesh.Convert_e(CV).." J/mol.K", "V")
			Binesh.AddToHTML("Q: ?", "V")
		end
	end
	
	if n == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1) then 
		if Q ~= nil and CV ~= nil and _DeltaT ~= nil then
			Binesh.CreateHTMLFile("Q = nC<sub>V</sub>DeltaT", "n = <span>Q/C<sub>V</sub>DeltaT</span>")
			n = Q/(CV*_DeltaT)
			Binesh.AddToHTML("n = <span>"..Binesh.Convert_e(Q).."/"..Binesh.Convert_e(CV).."*"..Binesh.Convert_e(_DeltaT).."</span> &#8658; n = "..Binesh.Convert_e(n).." mol")
			
			Binesh.AddToHTML("Q: "..Binesh.Convert_e(Q).." J", "V")
			Binesh.AddToHTML("DeltaTeta: "..Binesh.Convert_e(_DeltaTeta).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("C<sub>V</sub>: "..Binesh.Convert_e(CV).." J/mol.K", "V")
			Binesh.AddToHTML("n: ?", "V")
		end
	end
	
	if CV == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ������") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "CV") ~= -1) then
		if Q ~= nil and n ~= nil and _DeltaT ~= nil then
			Binesh.CreateHTMLFile("Q = nC<sub>V</sub>DeltaT", "C<sub>V</sub> = <span>Q/nDeltaT</span>")
			CV = Q/(n*_DeltaT)
			Binesh.AddToHTML("C<sub>V</sub> = <span>"..Binesh.Convert_e(Q).."/"..Binesh.Convert_e(n).."*"..Binesh.Convert_e(_DeltaT).."</span> &#8658; C<sub>V</sub> = "..Binesh.Convert_e(CV).." J/mol.K")
			
			Binesh.AddToHTML("Q: "..Binesh.Convert_e(Q).." J", "V")
			Binesh.AddToHTML("n: "..Binesh.Convert_e(n).." mol", "V")
			Binesh.AddToHTML("DeltaTeta: "..Binesh.Convert_e(_DeltaTeta).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("C<sub>V</sub>: ?", "V")
		end
	end
	
	if _DeltaT == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "��� �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaT") ~= -1)) then
		if Q ~= nil and n ~= nil and CV ~= nil then
			Binesh.CreateHTMLFile("Q = nC<sub>V</sub>DeltaT", "DeltaT = <span>Q/nC<sub>V</sub></span>")
			_DeltaT = Q/(n*CV)
			Binesh.AddToHTML("DeltaT = <span>"..Binesh.Convert_e(Q).."/"..Binesh.Convert_e(n).."*"..Binesh.Convert_e(CV).."</span> &#8658; DeltaT = "..Binesh.Convert_e(_DeltaT).."<sup>o</sup>K")
			
			Binesh.AddToHTML("Q: "..Binesh.Convert_e(Q).." J", "V")
			Binesh.AddToHTML("n: "..Binesh.Convert_e(n).." mol", "V")
			Binesh.AddToHTML("C<sub>V</sub>: "..Binesh.Convert_e(CV).." J/mol.K", "V")
			Binesh.AddToHTML("DeltaT: ?", "V")
		end
	end
end