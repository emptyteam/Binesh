function Binesh.F79_1_2()
	if _T1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„« «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T1") ~= -1)) then
		if Q ~= nil and n ~= nil and CV ~= nil and _T2 ~= nil then
			Binesh.CreateHTMLFile("Q = nC<sub>V</sub>(T<sub>2</sub>-T<sub>1</sub>)", "T<sub>2</sub>-T<sub>1</sub> = <span>Q/nC<sub>V</sub></span>")
			Binesh.AddToHTML("T<sub>1</sub> = T<sub>2</sub>- <span>Q/nC<sub>V</sub></span> &#8658; ")
			_T1 = _T2+(-Q/(n*CV))
			Binesh.AddToHTML("T<sub>1</sub> = "..Binesh.Convert_e(_T2).."- <span>"..Binesh.Convert_e(Q).."/"..Binesh.Convert_e(n).."*"..Binesh.Convert_e(CV).."</span> &#8658; T<sub>1</sub> = "..Binesh.Convert_e(_T1).."<sup>o</sup>K")
			
			Binesh.AddToHTML("T<sub>2</sub>: "..Binesh.Convert_e(_T2).."sup>o</sup>K", "V")
			Binesh.AddToHTML("Q: "..Binesh.Convert_e(Q).." J", "V")
			Binesh.AddToHTML("n: "..Binesh.Convert_e(n).." mol", "V")
			Binesh.AddToHTML("C<sub>V</sub>: "..Binesh.Convert_e(CV).." J/mol.K", "V")
			Binesh.AddToHTML("T<sub>1</sub>: ?", "V")
		end
	end
	
	if _T2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„« œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta2") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T2") ~= -1)) then
		if Q ~= nil and n ~= nil and CV ~= nil and _T1 ~= nil then
			Binesh.CreateHTMLFile("Q = nC<sub>V</sub>(T<sub>2</sub>-T<sub>1</sub>)", "T<sub>2</sub>-T<sub>1</sub> = <span>Q/nC<sub>V</sub></span>")
			Binesh.AddToHTML("T<sub>2</sub> = T<sub>1</sub>+ <span>Q/nC<sub>V</sub></span> &#8658; ")
			_T2 = _T1+(Q/(n*CV))
			Binesh.AddToHTML("T<sub>2</sub> = "..Binesh.Convert_e(_T1).."- <span>"..Binesh.Convert_e(Q).."/"..Binesh.Convert_e(n).."*"..Binesh.Convert_e(CV).."</span> &#8658; T<sub>2</sub> = "..Binesh.Convert_e(_T2).."<sup>o</sup>K")
			
			Binesh.AddToHTML("T<sub>1</sub>: "..Binesh.Convert_e(_T1).."sup>o</sup>K", "V")
			Binesh.AddToHTML("Q: "..Binesh.Convert_e(Q).." J", "V")
			Binesh.AddToHTML("n: "..Binesh.Convert_e(n).." mol", "V")
			Binesh.AddToHTML("C<sub>V</sub>: "..Binesh.Convert_e(CV).." J/mol.K", "V")
			Binesh.AddToHTML("T<sub>2</sub>: ?", "V")
		end
	end
end