function Binesh.F66_2()
	if _L1 == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "ÿÊ· «Ê·Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L1") ~= -1 then
		if _L2 ~= nil and Alpha_Length ~= nil and _DeltaTeta ~= nil and _DeltaL == nil then
			Binesh.CreateHTMLFile("L<sub>2</sub> = L<sub>1</sub>(1+AlphaDeltaTeta)", "L<sub>1</sub> = <span>L<sub>2</sub>/1+AlphaDeltaTeta</span>")
			_L1 = _L2/(1+Alpha_Length*_DeltaTeta)
			
			Binesh.AddToHTML("L<sub>1</sub> = <span>".._L2.."/1+"..Alpha_Length.."*".._DeltaTeta.."</span> &#8658; L<sub>1</sub> = ".._L1.." m")
			
			Binesh.AddToHTML("L<sub>2</sub>: ".._L2.." m", "V")
			Binesh.AddToHTML("Alpha: "..Alpha_Length.." 1/C", "V")
			Binesh.AddToHTML("DeltaTeta: ".._DeltaTeta.." <sup>o</sup>C", "V")
			Binesh.AddToHTML("L<sub>1</sub>: ?", "V")
		end
	end
	
	if _L2 == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "ÿÊ· œÊ„Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L2") ~= -1 then
		if _L1 ~= nil and Alpha_Length ~= nil and _DeltaTeta ~= nil and _DeltaL == nil then
			Binesh.CreateHTMLFile("L<sub>2</sub> = L<sub>1</sub>(1+AlphaDeltaTeta)")
			_L2 = _L1*(1+Alpha_Length*_DeltaTeta)
			
			Binesh.AddToHTML("L<sub>2</sub> = ".._L1.."(1+"..Alpha_Length.."*".._DeltaTeta..")</span> &#8658; L<sub>2</sub> = ".._L2.." m")
			
			Binesh.AddToHTML("L<sub>1</sub>: ".._L1.." m", "V")
			Binesh.AddToHTML("Alpha: "..Alpha_Length.." 1/C", "V")
			Binesh.AddToHTML("DeltaTeta: ".._DeltaTeta.." <sup>o</sup>C", "V")
			Binesh.AddToHTML("L<sub>2</sub>: ?", "V")
		end
	end
end