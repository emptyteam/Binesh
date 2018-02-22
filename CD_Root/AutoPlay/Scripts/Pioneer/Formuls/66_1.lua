function Binesh.F66_1()
	--------------------------{DELTA}--------------------------
	if _L1 ~= nil then
		L = _L1
	end
	
	if _DeltaL == nil then
		if L ~= nil and _L2 ~= nil then
			Binesh.CreateHTMLFile("DeltaL = L<sub>2</sub>-L<sub>1</sub>")
			_DeltaL = math.abs(_L2 - L)
			Binesh.AddToHTML("DeltaL = "..Binesh.ProgressNumber(_L2).."-"..Binesh.ProgressNumber(L).." &#8658; DeltaL = "..Binesh.ProgressNumber(_DeltaL).." m")
		end
	end
	
	if L == nil then
		if _DeltaL ~= nil and _L2 ~= nil then
			Binesh.CreateHTMLFile("DeltaL = L<sub>2</sub>-L<sub>1</sub>", "L<sub>1</sub> = L<sub>2</sub>-DeltaL")
			L = math.abs(_L2-_DeltaL)
			Binesh.AddToHTML("L<sub>1</sub> = "..Binesh.ProgressNumber(_L2).."-"..Binesh.ProgressNumber(_DeltaL).." &#8658; L<sub>1</sub> = "..Binesh.ProgressNumber(L).." m")
		end
	end
	
	if _L2 == nil then
		if _DeltaL ~= nil and L ~= nil then
			Binesh.CreateHTMLFile("DeltaL = L<sub>2</sub>-L<sub>1</sub>", "L<sub>2</sub> = DeltaL+L<sub>1</sub>")
			_L2 = math.abs(L+_DeltaL)
			Binesh.AddToHTML("L<sub>2</sub> = "..Binesh.ProgressNumber(_DeltaL).."+"..Binesh.ProgressNumber(L).." &#8658; L<sub>2</sub> = "..Binesh.ProgressNumber(_L2).." m")
		end
	end
	--------------------------END {DELTA}--------------------------
	if _DeltaL == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "ÿÊ·  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaL") ~= -1)) then
		if _DeltaTeta ~= nil and Alpha_Length ~= nil and L ~= nil then
			Binesh.CreateHTMLFile("DeltaL = L<sub>1</sub>AlphaDeltaTeta")
			_DeltaL = L*Alpha_Length*_DeltaTeta
			
			Binesh.AddToHTML("DeltaL = "..Binesh.ProgressNumber(L).."*"..Binesh.ProgressNumber(Alpha_Length).."*"..Binesh.ProgressNumber(_DeltaTeta).." &#8658; DeltaL = "..Binesh.ProgressNumber(_DeltaL).." m")
			
			Binesh.AddToHTML("L<sub>1</sub> = "..Binesh.ProgressNumber(L).." m", "V")
			Binesh.AddToHTML("DeltaTeta = "..Binesh.ProgressNumber(_DeltaTeta).." <sup>o</sup>C", "V")
			Binesh.AddToHTML("Alpha = "..Binesh.ProgressNumber(Alpha_Length).." 1/C", "V")
			Binesh.AddToHTML("DeltaL = ?", "V")
		end
	end
	
	if L == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "ÿÊ· «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "L1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L") ~= -1)) then
		if _DeltaL ~= nil and Alpha_Length ~= nil and _DeltaTeta ~= nil then
			Binesh.CreateHTMLFile("DeltaL = L<sub>1</sub>AlphaDeltaTeta", "L<sub>1</sub> = <span>DeltaL/AlphaDeltaTeta</span>")
			L = _DeltaL/(Alpha_Length*_DeltaTeta)
			
			Binesh.AddToHTML("L<sub>1</sub> = <span>"..Binesh.ProgressNumber(_DeltaL).."/"..Binesh.ProgressNumber(Alpha_Length).."*"..Binesh.ProgressNumber(_DeltaTeta).."</span> &#8658; L<sub>1</sub> = "..Binesh.ProgressNumber(L).." m")
			
			Binesh.AddToHTML("DeltaL = "..Binesh.ProgressNumber(_DeltaL).." m", "V")
			Binesh.AddToHTML("DeltaTeta = "..Binesh.ProgressNumber(_DeltaTeta).." <sup>o</sup>C", "V")
			Binesh.AddToHTML("Alpha = "..Binesh.ProgressNumber(Alpha_Length).." 1/C", "V")
			Binesh.AddToHTML("L<sub>1</sub> = ?", "V")
		end
	end
	
	if Alpha_Length == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» «‰»”«ÿ ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Alpha") ~= -1) then
		if _DeltaL ~= nil and _DeltaTeta ~= nil and L ~= nil then
			Binesh.CreateHTMLFile("DeltaL = L<sub>1</sub>AlphaDeltaTeta", "Alpha = <span>DeltaL/L<sub>1</sub>DeltaTeta</span>")
			Alpha_Length = _DeltaL/(L*_DeltaTeta)
			
			Binesh.AddToHTML("Alpha = <span>"..Binesh.ProgressNumber(_DeltaL).."/"..Binesh.ProgressNumber(L).."*"..Binesh.ProgressNumber(_DeltaTeta).."</span> &#8658; Alpha = "..Binesh.ProgressNumber(Alpha_Length).." 1/C")
			
			Binesh.AddToHTML("DeltaL = "..Binesh.ProgressNumber(_DeltaL).." m", "V")
			Binesh.AddToHTML("L<sub>1</sub> = "..Binesh.ProgressNumber(L).." m", "V")
			Binesh.AddToHTML("DeltaTeta = "..Binesh.ProgressNumber(_DeltaTeta).." <sup>o</sup>C", "V")
			Binesh.AddToHTML("Alpha = ?", "V")
		end
	end
	
	if _DeltaTeta == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„«  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaT") ~= -1)) then
		if _DeltaL ~= nil and L ~= nil and Alpha_Length ~= nil then
			Binesh.CreateHTMLFile("DeltaL = L<sub>1</sub>AlphaDeltaTeta", "DeltaTeta = <span>DeltaL/L<sub>1</sub>Alpha</span>")
			_DeltaTeta = _DeltaL/(L*Alpha_Length)
			
			Binesh.AddToHTML("DeltaTeta = <span>"..Binesh.ProgressNumber(_DeltaL).."/"..Binesh.ProgressNumber(L).."*"..Binesh.ProgressNumber(Alpha_Length).."</span> &#8658; DeltaTeta = "..Binesh.ProgressNumber(_DeltaTeta).."<sup>o</sup>C")
			
			Binesh.AddToHTML("DeltaL = "..Binesh.ProgressNumber(_DeltaL).." m", "V")
			Binesh.AddToHTML("L<sub>1</sub> = "..Binesh.ProgressNumber(L).." m", "V")
			Binesh.AddToHTML("Alpha = "..Binesh.ProgressNumber(Alpha_Length).." 1/C", "V")
			Binesh.AddToHTML("DeltaTeta = ?", "V")
		end
	end
end