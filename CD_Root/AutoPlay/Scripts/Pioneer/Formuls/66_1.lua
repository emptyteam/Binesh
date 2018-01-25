function Binesh.F66_1()
	--------------------------{DELTA}--------------------------
	if _L1 ~= nil then
		L = _L1
	end
	
	if _DeltaL == nil then
		if L ~= nil and _L2 ~= nil then
			Binesh.CreateHTMLFile("DeltaL = L<sub>2</sub>-L<sub>1</sub>")
			_DeltaL = _L2 - L
			Binesh.AddToHTML("DeltaL = ".._L2.."-"..L.." &#8658; DeltaL = ".._DeltaL.."m")
		end
	end
	
	if L == nil then
		if _DeltaL ~= nil and _L2 ~= nil then
			Binesh.CreateHTMLFile("DeltaL = L<sub>2</sub>-L<sub>1</sub>", "L<sub>1</sub> = L<sub>2</sub>-DeltaL")
			L = _L2-_DeltaL
			Binesh.AddToHTML("L<sub>1</sub> = ".._L2.."-".._DeltaL.." &#8658; L<sub>1</sub> = "..L.."m")
		end
	end
	
	if _L2 == nil then
		if _DeltaL ~= nil and L ~= nil then
			Binesh.CreateHTMLFile("DeltaL = L<sub>2</sub>-L<sub>1</sub>", "L<sub>2</sub> = DeltaL+L<sub>1</sub>")
			_L2 = L+_DeltaL
			Binesh.AddToHTML("L<sub>2</sub> = ".._DeltaL.."+"..L.." &#8658; L<sub>2</sub> = ".._L2.."m")
		end
	end
	--------------------------END {DELTA}--------------------------
	if _DeltaL == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "ÿÊ·  €ÌÌ—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaL") ~= -1 then
		if _DeltaTeta ~= nil and Alpha_Length ~= nil and L ~= nil then
			Binesh.CreateHTMLFile("DeltaL = L<sub>1</sub>AlphaDeltaTeta")
			_DeltaL = L*Alpha_Length*_DeltaTeta
			
			Binesh.AddToHTML("DeltaL = "..L.."*"..Alpha_Length.."*".._DeltaTeta.." &#8658; DeltaL = ".._DeltaL.." m")
			
			Binesh.AddToHTML("L<sub>1</sub>: "..L.." m", "V")
			Binesh.AddToHTML("DeltaTeta: ".._DeltaTeta.." <sup>o</sup>C", "V")
			Binesh.AddToHTML("Alpha: "..Alpha_Length.." 1/C", "V")
			Binesh.AddToHTML("DeltaL: ?", "V")
		end
	end
	
	if L == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "ÿÊ· «Ê·Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L") ~= -1 then
		if _DeltaL ~= nil and Alpha_Length ~= nil and _DeltaTeta ~= nil then
			Binesh.CreateHTMLFile("DeltaL = L<sub>1</sub>AlphaDeltaTeta", "L<sub>1</sub> = <span>DeltaL/AlphaDeltaTeta</span>")
			L = _DeltaL/(Alpha_Length*_DeltaTeta)
			
			Binesh.AddToHTML("L<sub>1</sub> = <span>".._DeltaL.."/"..Alpha_Length.."*".._DeltaTeta.."</span> &#8658; L<sub>1</sub> = "..L.." m")
			
			Binesh.AddToHTML("DeltaL: ".._DeltaL.." m", "V")
			Binesh.AddToHTML("DeltaTeta: ".._DeltaTeta.." <sup>o</sup>C", "V")
			Binesh.AddToHTML("Alpha: "..Alpha_Length.." 1/C", "V")
			Binesh.AddToHTML("L<sub>1</sub>: ?", "V")
		end
	end
	
	if Alpha_Length == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» «‰»”«ÿ ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Alpha") ~= -1 then
		if _DeltaL ~= nil and _DeltaTeta ~= nil and L ~= nil then
			Binesh.CreateHTMLFile("DeltaL = L<sub>1</sub>AlphaDeltaTeta", "Alpha = <span>DeltaL/L<sub>1</sub>DeltaTeta</span>")
			Alpha_Length = _DeltaL/(L*_DeltaTeta)
			
			Binesh.AddToHTML("Alpha = <span>".._DeltaL.."/"..L.."*".._DeltaTeta.."</span> &#8658; Alpha = "..Alpha_Length.." 1/C")
			
			Binesh.AddToHTML("DeltaL: ".._DeltaL.." m", "V")
			Binesh.AddToHTML("L<sub>1</sub>: "..L.." m", "V")
			Binesh.AddToHTML("DeltaTeta: ".._DeltaTeta.." <sup>o</sup>C", "V")
			Binesh.AddToHTML("Alpha: ?", "V")
		end
	end
	
	if _DeltaTeta == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„«  €ÌÌ—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaT") ~= -1 then
		if _DeltaL ~= nil and L ~= nil and Alpha_Length ~= nil then
			Binesh.CreateHTMLFile("DeltaL = L<sub>1</sub>AlphaDeltaTeta", "DeltaTeta = <span>DeltaL/L<sub>1</sub>Alpha</span>")
			_DeltaTeta = _DeltaL/(L*Alpha_Length)
			
			Binesh.AddToHTML("DeltaTeta = <span>".._DeltaL.."/"..L.."*"..Alpha_Length.."</span> &#8658; DeltaTeta = ".._DeltaTeta.."<sup>o</sup>C")
			
			Binesh.AddToHTML("DeltaL: ".._DeltaL.." m", "V")
			Binesh.AddToHTML("L<sub>1</sub>: "..L.." m", "V")
			Binesh.AddToHTML("Alpha: "..Alpha_Length.." 1/C", "V")
			Binesh.AddToHTML("DeltaTeta: ?", "V")
		end
	end
end