function Binesh.F71_1()
	if Q == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ê—„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Q") ~= -1) then
		if t ~= nil and K_71 ~= nil and A ~= nil and _DeltaTeta ~= nil and L ~= nil then
			Binesh.CreateHTMLFile("<span>Q/t</span> = K <span>ADeltaTeta/L</span>", "Q = <span>tKADeltaTeta/L</span>")
			Q = t*K_71*A*_DeltaTeta/L
			
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("K = "..Binesh.ProgressNumber(K_71).." J/msC", "V")
			Binesh.AddToHTML("A = "..Binesh.ProgressNumber(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("DeltaTeta = "..Binesh.ProgressNumber(_DeltaTeta).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("L = "..Binesh.ProgressNumber(L).." m", "V")
			Binesh.AddToHTML("Q = ?", "V")
			
			Binesh.AddToHTML("Q = <span>"..Binesh.ProgressNumber(t).."*"..Binesh.ProgressNumber(K_71).."*"..Binesh.ProgressNumber(A).."*"..Binesh.ProgressNumber(_DeltaTeta).."/"..Binesh.ProgressNumber(L).."</span> &#8658; Q = "..Binesh.ProgressNumber(Q).." J")
		end
	end
	
	if t == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1) then
		if Q ~= nil and K_71 ~= nil and A ~= nil and _DeltaTeta ~= nil and L ~= nil then
			Binesh.CreateHTMLFile("<span>Q/t</span> = K <span>ADeltaTeta/L</span>", "t = <span>QL/KADeltaTeta</span>")
			t = (Q*L)/(K_71*A*_DeltaTeta)
			
			Binesh.AddToHTML("Q = "..Binesh.ProgressNumber(Q).." J", "V")
			Binesh.AddToHTML("L = "..Binesh.ProgressNumber(L).." m", "V")
			Binesh.AddToHTML("K = "..Binesh.ProgressNumber(K_71).." J/msC", "V")
			Binesh.AddToHTML("A = "..Binesh.ProgressNumber(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("DeltaTeta = "..Binesh.ProgressNumber(_DeltaTeta).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("t = ?", "V")
			
			Binesh.AddToHTML("t = <span>"..Binesh.ProgressNumber(Q).."*"..Binesh.ProgressNumber(L).."/"..Binesh.ProgressNumber(K_71).."*"..Binesh.ProgressNumber(A).."*"..Binesh.ProgressNumber(_DeltaTeta).."</span> &#8658; t = "..Binesh.ProgressNumber(t).." s")
		end
	end
	
	if K_71 == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "—”«‰‰œêÌ ”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "K") ~= -1) then
		if Q ~= nil and L ~= nil and t ~= nil and A ~= nil and _DeltaTeta ~= nil then
			Binesh.CreateHTMLFile("<span>Q/t</span> = K <span>ADeltaTeta/L</span>", "K = <span>QL/tADeltaTeta</span>")
			K_71 = (Q*L)/(t*A*_DeltaTeta)
			
			Binesh.AddToHTML("Q = "..Binesh.ProgressNumber(Q).." J", "V")
			Binesh.AddToHTML("L = "..Binesh.ProgressNumber(L).." m", "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("A = "..Binesh.ProgressNumber(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("DeltaTeta = "..Binesh.ProgressNumber(_DeltaTeta).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("K = ?", "V")
			
			Binesh.AddToHTML("K = <span>"..Binesh.ProgressNumber(Q).."*"..Binesh.ProgressNumber(L).."/"..Binesh.ProgressNumber(t).."*"..Binesh.ProgressNumber(A).."*"..Binesh.ProgressNumber(_DeltaTeta).."</span> &#8658; K = "..Binesh.ProgressNumber(K_71).." J/msC")
		end
	end
	
	if A == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã”„ ”ÿÕ") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "A") ~= -1)) then
		if Q ~= nil and L ~= nil and t ~= nil and K_71 ~= nil and _DeltaTeta ~= nil then
			Binesh.CreateHTMLFile("<span>Q/t</span> = K <span>ADeltaTeta/L</span>", "A = <span>QL/tKDeltaTeta</span>")
			A = (Q*L)/(t*K_71*_DeltaTeta)
			
			Binesh.AddToHTML("Q = "..Binesh.ProgressNumber(Q).." J", "V")
			Binesh.AddToHTML("L = "..Binesh.ProgressNumber(L).." m", "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("K = "..Binesh.ProgressNumber(K_71).." J/msC", "V")
			Binesh.AddToHTML("DeltaTeta = "..Binesh.ProgressNumber(_DeltaTeta).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("A = ?", "V")
			
			Binesh.AddToHTML("A = <span>"..Binesh.ProgressNumber(Q).."*"..Binesh.ProgressNumber(L).."/"..Binesh.ProgressNumber(t).."*"..Binesh.ProgressNumber(K_71).."*"..Binesh.ProgressNumber(_DeltaTeta).."</span> &#8658; A = "..Binesh.ProgressNumber(A).." m<sup>2</sup>")
		end
	end
	
	if _DeltaTeta == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„«  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaT") ~= -1)) then
		if Q ~= nil and L ~= nil and t ~= nil and K_71 ~= nil and A ~= nil then
			Binesh.CreateHTMLFile("<span>Q/t</span> = K <span>ADeltaTeta/L</span>", "DeltaTeta = <span>QL/tKA</span>")
			_DeltaTeta = (Q*L)/(t*K_71*A)
			
			Binesh.AddToHTML("Q = "..Binesh.ProgressNumber(Q).." J", "V")
			Binesh.AddToHTML("L = "..Binesh.ProgressNumber(L).." m", "V")
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("K = "..Binesh.ProgressNumber(K_71).." J/msC", "V")
			Binesh.AddToHTML("A = "..Binesh.ProgressNumber(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("DeltaTeta = ?", "V")
			
			Binesh.AddToHTML("DeltaTeta = <span>"..Binesh.ProgressNumber(Q).."*"..Binesh.ProgressNumber(L).."/"..Binesh.ProgressNumber(t).."*"..Binesh.ProgressNumber(K_71).."*"..Binesh.ProgressNumber(A).."</span> &#8658; DeltaTeta = "..Binesh.ProgressNumber(_DeltaTeta).."<sup>o</sup>C")
		end
	end
	
	if L == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L") ~= -1) then
		if t ~= nil and K_71 ~= nil and A ~= nil and _DeltaTeta ~= nil and Q ~= nil then
			Binesh.CreateHTMLFile("<span>Q/t</span> = K <span>ADeltaTeta/L</span>", "L = <span>tKADeltaTeta/Q</span>")
			L = t*K_71*A*_DeltaTeta/Q
			
			Binesh.AddToHTML("t = "..Binesh.ProgressNumber(t).." s", "V")
			Binesh.AddToHTML("K = "..Binesh.ProgressNumber(K_71).." J/msC", "V")
			Binesh.AddToHTML("A = "..Binesh.ProgressNumber(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("DeltaTeta = "..Binesh.ProgressNumber(_DeltaTeta).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("Q = "..Binesh.ProgressNumber(Q).." J", "V")
			Binesh.AddToHTML("L = ?", "V")
			
			Binesh.AddToHTML("L = <span>"..Binesh.ProgressNumber(t).."*"..Binesh.ProgressNumber(K_71).."*"..Binesh.ProgressNumber(A).."*"..Binesh.ProgressNumber(_DeltaTeta).."/"..Binesh.ProgressNumber(Q).."</span> &#8658; L = "..Binesh.ProgressNumber(L).." m")
		end
	end
end