function Binesh.F67_2()
	if A1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "A1") ~= -1)) then
		if A2 ~= nil and Alpha_Length ~= nil and _DeltaTeta ~= nil and _DeltaA == nil then
			Binesh.CreateHTMLFile("A<sub>2</sub> = A<sub>1</sub>(1+2AlphaDeltaTeta)", "A<sub>1</sub> = <span>A<sub>2</sub>/1+2AlphaDeltaTeta</span>")
			A1 = A2/(1+2*Alpha_Length*_DeltaTeta)
			
			Binesh.AddToHTML("A<sub>1</sub> = <span>"..Binesh.ProgressNumber(A2).."/1+"..Binesh.ProgressNumber(Alpha_Length).."*"..Binesh.ProgressNumber(_DeltaTeta).."</span> &#8658; A<sub>1</sub> = "..Binesh.ProgressNumber(A1).." m")
			
			Binesh.AddToHTML("A<sub>2</sub> = "..Binesh.ProgressNumber(A2).." m", "V")
			Binesh.AddToHTML("Alpha = "..Binesh.ProgressNumber(Alpha_Length).." 1/C", "V")
			Binesh.AddToHTML("DeltaTeta = "..Binesh.ProgressNumber(_DeltaTeta).." <sup>o</sup>C", "V")
			Binesh.AddToHTML("A<sub>1</sub> = ?", "V")
		end
	end
	
	if A2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "A2") ~= -1)) then
		if A1 ~= nil and Alpha_Length ~= nil and _DeltaTeta ~= nil and _DeltaA == nil then
			Binesh.CreateHTMLFile("A<sub>2</sub> = A<sub>1</sub>(1+2AlphaDeltaTeta)")
			A2 = A1*(1+2*Alpha_Length*_DeltaTeta)
			
			Binesh.AddToHTML("A<sub>2</sub> = "..Binesh.ProgressNumber(A1).."(1+2*"..Binesh.ProgressNumber(Alpha_Length).."*"..Binesh.ProgressNumber(_DeltaTeta)..")</span> &#8658; A<sub>2</sub> = "..Binesh.ProgressNumber(A2).." m")
			
			Binesh.AddToHTML("A<sub>1</sub> = "..Binesh.ProgressNumber(A1).." m", "V")
			Binesh.AddToHTML("Alpha = "..Binesh.ProgressNumber(Alpha_Length).." 1/C", "V")
			Binesh.AddToHTML("DeltaTeta = "..Binesh.ProgressNumber(_DeltaTeta).." <sup>o</sup>C", "V")
			Binesh.AddToHTML("A<sub>2</sub> = ?", "V")
		end
	end
end