function Binesh.F67_1()
	--------------------------{DEATA}--------------------------
	if _A1 ~= nil then
		A = _A1
	end
	
	if _DeltaA == nil then
		if A ~= nil and _A2 ~= nil then
			Binesh.CreateHTMLFile("DeltaA = A<sub>2</sub>-A<sub>1</sub>")
			_DeltaA = math.abs(_A2 - A)
			Binesh.AddToHTML("DeltaA = "..Binesh.ProgressNumber(_A2).."-"..Binesh.ProgressNumber(A).." &#8658; DeltaA = "..Binesh.ProgressNumber(_DeltaA).." m<sup>2</sup>")
		end
	end
	
	if A == nil then
		if _DeltaA ~= nil and _A2 ~= nil then
			Binesh.CreateHTMLFile("DeltaA = A<sub>2</sub>-A<sub>1</sub>", "A<sub>1</sub> = A<sub>2</sub>-DeltaA")
			A = math.abs(_A2-_DeltaA)
			Binesh.AddToHTML("A<sub>1</sub> = "..Binesh.ProgressNumber(_A2).."-"..Binesh.ProgressNumber(_DeltaA).." &#8658; A<sub>1</sub> = "..Binesh.ProgressNumber(A).." m<sup>2</sup>")
		end
	end
	
	if _A2 == nil then
		if _DeltaA ~= nil and A ~= nil then
			Binesh.CreateHTMLFile("DeltaA = A<sub>2</sub>-A<sub>1</sub>", "A<sub>2</sub> = DeltaA+A<sub>1</sub>")
			_A2 = math.abs(A+_DeltaA)
			Binesh.AddToHTML("A<sub>2</sub> = "..Binesh.ProgressNumber(_DeltaA).."+"..Binesh.ProgressNumber(A).." &#8658; A<sub>2</sub> = "..Binesh.ProgressNumber(_A2).." m<sup>2</sup>")
		end
	end
	--------------------------END {DEATA}--------------------------
	if _DeltaA == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— ”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaA") ~= -1)) then
		if _DeltaTeta ~= nil and Alpha_Length ~= nil and A ~= nil then
			Binesh.CreateHTMLFile("DeltaA = A<sub>1</sub>(2Alpha)DeltaTeta")
			_DeltaA = A*2*Alpha_Length*_DeltaTeta
			
			Binesh.AddToHTML("DeltaA = "..Binesh.ProgressNumber(A).."(2*"..Binesh.ProgressNumber(Alpha_Length)..")"..Binesh.ProgressNumber(_DeltaTeta).." &#8658; DeltaA = "..Binesh.ProgressNumber(_DeltaA).." m<sup>2</sup>")
			
			Binesh.AddToHTML("A<sub>1</sub> = "..Binesh.ProgressNumber(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("DeltaTeta = "..Binesh.ProgressNumber(_DeltaTeta).." <sup>o</sup>C", "V")
			Binesh.AddToHTML("Alpha = "..Binesh.ProgressNumber(Alpha_Length).." 1/C", "V")
			Binesh.AddToHTML("DeltaA = ?", "V")
		end
	end
	
	if A == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "A1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "A") ~= -1)) then
		if _DeltaA ~= nil and Alpha_Length ~= nil and _DeltaTeta ~= nil then
			Binesh.CreateHTMLFile("DeltaA = A<sub>1</sub>(2Alpha)DeltaTeta", "A<sub>1</sub> = <span>DeltaA/(2Alpha)DeltaTeta</span>")
			A = _DeltaA/(2*Alpha_Length*_DeltaTeta)
			
			Binesh.AddToHTML("A<sub>1</sub> = <span>"..Binesh.ProgressNumber(_DeltaA).."/(2*"..Binesh.ProgressNumber(Alpha_Length)..")"..Binesh.ProgressNumber(_DeltaTeta).."</span> &#8658; A<sub>1</sub> = "..Binesh.ProgressNumber(A).." m")
			
			Binesh.AddToHTML("DeltaA = "..Binesh.ProgressNumber(_DeltaA).." m", "V")
			Binesh.AddToHTML("DeltaTeta = "..Binesh.ProgressNumber(_DeltaTeta).." <sup>o</sup>C", "V")
			Binesh.AddToHTML("Alpha = "..Binesh.ProgressNumber(Alpha_Length).." 1/C", "V")
			Binesh.AddToHTML("A<sub>1</sub> = ?", "V")
		end
	end
	
	if Alpha_Length == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» «‰»”«ÿ ”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Alpha") ~= -1) then
		if _DeltaA ~= nil and _DeltaTeta ~= nil and A ~= nil then
			Binesh.CreateHTMLFile("DeltaA = A<sub>1</sub>(2Alpha)DeltaTeta", "Alpha = <span>DeltaA/2A<sub>1</sub>DeltaTeta</span>")
			Alpha_Length = _DeltaA/(2*A*_DeltaTeta)
			
			Binesh.AddToHTML("Alpha = <span>"..Binesh.ProgressNumber(_DeltaA).."/2*"..Binesh.ProgressNumber(A).."*"..Binesh.ProgressNumber(_DeltaTeta).."</span> &#8658; Alpha = "..Binesh.ProgressNumber(Alpha_Length).." 1/C")
			
			Binesh.AddToHTML("DeltaA = "..Binesh.ProgressNumber(_DeltaA).." m", "V")
			Binesh.AddToHTML("A<sub>1</sub> = "..Binesh.ProgressNumber(A).." m", "V")
			Binesh.AddToHTML("DeltaTeta = "..Binesh.ProgressNumber(_DeltaTeta).." <sup>o</sup>C", "V")
			Binesh.AddToHTML("Alpha = ?", "V")
		end
	end
	
	if _DeltaTeta == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„«  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaT") ~= -1)) then
		if _DeltaA ~= nil and A ~= nil and Alpha_Length ~= nil then
			Binesh.CreateHTMLFile("DeltaA = A<sub>1</sub>(2Alpha)DeltaTeta", "DeltaTeta = <span>DeltaA/A<sub>1</sub>(2Alpha)</span>")
			_DeltaTeta = _DeltaA/(A*2*Alpha_Length)
			
			Binesh.AddToHTML("DeltaTeta = <span>"..Binesh.ProgressNumber(_DeltaA).."/"..Binesh.ProgressNumber(A).."(2"..Binesh.ProgressNumber(Alpha_Length)..")</span> &#8658; DeltaTeta = "..Binesh.ProgressNumber(_DeltaTeta).."<sup>o</sup>C")
			
			Binesh.AddToHTML("DeltaA = "..Binesh.ProgressNumber(_DeltaA).." m", "V")
			Binesh.AddToHTML("A<sub>1</sub> = "..Binesh.ProgressNumber(A).." m", "V")
			Binesh.AddToHTML("Alpha = "..Binesh.ProgressNumber(Alpha_Length).." 1/C", "V")
			Binesh.AddToHTML("DeltaTeta = ?", "V")
		end
	end
end