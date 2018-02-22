function Binesh.F76_2()
	if _T1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„« «Ê·Ì‰") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta1") ~= -1 or (ListBox.FindItem("Words", -1, LB_BYTEXT, "T1") ~= -1)) then
		if _DeltaU_In ~= nil and n ~= nil and C_V ~= nil and _T2 ~= nil then
			Binesh.CreateHTMLFile("DeltaU = nC<sub>V</sub>(T<sub>2</sub>-T<sub>1</sub>)", "T<sub>1</sub> = T<sub>2</sub>- <span>DeltaU/nC<sub>V</sub></span>")
			_T1 = _T2+(-_DeltaU_In/n*C_V)
			
			Binesh.AddToHTML("T<sub>2</sub> = "..Binesh.ProgressNumber(_T2).."<sup>o</sup>K", "V")
			Binesh.AddToHTML("DeltaU = "..Binesh.ProgressNumber(_DeltaU_In).." J", "V")
			Binesh.AddToHTML("n = "..Binesh.ProgressNumber(n).." mol", "V")
			Binesh.AddToHTML("C<sub>V</sub> = "..Binesh.ProgressNumber(C_V).." J/mol.K", "V")
			Binesh.AddToHTML("T<sub>1</sub> = ?", "V")
			
			Binesh.AddToHTML("T<sub>1</sub> = "..Binesh.ProgressNumber(_T2).."- <span>"..Binesh.ProgressNumber(_DeltaU_In).."/"..Binesh.ProgressNumber(C_V).."*"..Binesh.ProgressNumber(n).."</span> &#8658; T<sub>1</sub> = "..Binesh.ProgressNumber(_T1).."<sup>o</sup>K")
		end
	end
	
	if _T2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„« œÊ„Ì‰") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta2") ~= -1 or (ListBox.FindItem("Words", -1, LB_BYTEXT, "T2") ~= -1)) then
		if _DeltaU_In ~= nil and n ~= nil and C_V ~= nil and _T1 ~= nil then
			Binesh.CreateHTMLFile("DeltaU = nC<sub>V</sub>(T<sub>2</sub>-T<sub>1</sub>)", "T<sub>1</sub> = T<sub>2</sub>- <span>DeltaU/nC<sub>V</sub></span>")
			_T2 = _T1+(_DeltaU_In/n*C_V)
			
			Binesh.AddToHTML("T<sub>1</sub> = "..Binesh.ProgressNumber(_T1).."<sup>o</sup>K", "V")
			Binesh.AddToHTML("DeltaU = "..Binesh.ProgressNumber(_DeltaU_In).." J", "V")
			Binesh.AddToHTML("n = "..Binesh.ProgressNumber(n).." mol", "V")
			Binesh.AddToHTML("C<sub>V</sub> = "..Binesh.ProgressNumber(C_V).." J/mol.K", "V")
			Binesh.AddToHTML("T<sub>2</sub> = ?", "V")
			
			Binesh.AddToHTML("T<sub>2</sub> = "..Binesh.ProgressNumber(_T2).." <span>"..Binesh.ProgressNumber(_DeltaU_In).."/"..Binesh.ProgressNumber(C_V).."*"..Binesh.ProgressNumber(n).."</span> &#8658; T<sub>2</sub> = "..Binesh.ProgressNumber(_T2).."<sup>o</sup>K")
		end
	end
end