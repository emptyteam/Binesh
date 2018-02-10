function Binesh.F69_2()
	if _V1 == nil and V == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ÕÃ„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "ÕÃ„ «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1)) then 
		if Beta_Length ~= nil and _DetlaV == nil and _DeltaTeta ~= nil and _V2 ~= nil then
			Binesh.CreateHTMLFile("V<sub>2</sub> = V<sub>1</sub>(1+BetaDeltaTeta)", "V<sub>1</sub> = <span>V<sub>2</sub>/1+BetaDeltaTeta</span>")
			_V1 = _V2/(1+Beta_Length*_DeltaTeta)
			
			Binesh.AddToHTML("V<sub>2</sub>: "..Binesh.Convert_e(_V2).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("Beta: "..Binesh.Convert_e(Beta_Length).." 1/C", "V")
			Binesh.AddToHTML("DeltaTeta: "..Binesh.Convert_e(_DeltaTeta).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("V<sub>1</sub>: ?", "V")
			
			Binesh.AddToHTML("V<sub>1</sub> = <span>"..Binesh.Convert_e(_V2).."/1+"..Binesh.Convert_e(Beta_Length).."*"..Binesh.Convert_e(_DeltaTeta).."</span> &#8658; V<sub>1</sub> = "..Binesh.Convert_e(_V1).." m<sup>3</sup>")
		end
	end
	
	if _V2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ÕÃ„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "ÕÃ„ œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V2") ~= -1)) then 
		if Beta_Length ~= nil and _DetlaV == nil and _DeltaTeta ~= nil and _V1 ~= nil then
			Binesh.CreateHTMLFile("V<sub>2</sub> = V<sub>1</sub>(1+BetaDeltaTeta)")
			_V2 = _V1*(1+Beta_Length*_DeltaTeta)
			
			Binesh.AddToHTML("V<sub>1</sub>: "..Binesh.Convert_e(_V1).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("Beta: "..Binesh.Convert_e(Beta_Length).." 1/C", "V")
			Binesh.AddToHTML("DeltaTeta: "..Binesh.Convert_e(_DeltaTeta).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("V<sub>2</sub>: ?", "V")
			
			Binesh.AddToHTML("V<sub>2</sub> = <span>"..Binesh.Convert_e(_V1).."(1+"..Binesh.Convert_e(Beta_Length).."*"..Binesh.Convert_e(_DeltaTeta)..")</span> &#8658; V<sub>2</sub> = "..Binesh.Convert_e(_V2).." m<sup>3</sup>")
		end
	end
end