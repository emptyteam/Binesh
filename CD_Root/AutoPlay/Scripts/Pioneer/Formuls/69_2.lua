function Binesh.F69_2()
	if _V1 == nil and V == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "��� �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1)) then 
		if Beta_Length ~= nil and _DetlaV == nil and _DeltaTeta ~= nil and _V2 ~= nil then
			Binesh.CreateHTMLFile("V<sub>2</sub> = V<sub>1</sub>(1+BetaDeltaTeta)", "V<sub>1</sub> = <span>V<sub>2</sub>/1+BetaDeltaTeta</span>")
			_V1 = _V2/(1+Beta_Length*_DeltaTeta)
			
			Binesh.AddToHTML("V<sub>2</sub> = "..Binesh.ProgressNumber(_V2).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("Beta = "..Binesh.ProgressNumber(Beta_Length).." 1/C", "V")
			Binesh.AddToHTML("DeltaTeta = "..Binesh.ProgressNumber(_DeltaTeta).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("V<sub>1</sub> = ?", "V")
			
			Binesh.AddToHTML("V<sub>1</sub> = <span>"..Binesh.ProgressNumber(_V2).."/1+"..Binesh.ProgressNumber(Beta_Length).."*"..Binesh.ProgressNumber(_DeltaTeta).."</span> &#8658; V<sub>1</sub> = "..Binesh.ProgressNumber(_V1).." m<sup>3</sup>")
		end
	end
	
	if _V2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "��� �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V2") ~= -1)) then 
		if Beta_Length ~= nil and _DetlaV == nil and _DeltaTeta ~= nil and _V1 ~= nil then
			Binesh.CreateHTMLFile("V<sub>2</sub> = V<sub>1</sub>(1+BetaDeltaTeta)")
			_V2 = _V1*(1+Beta_Length*_DeltaTeta)
			
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("Beta = "..Binesh.ProgressNumber(Beta_Length).." 1/C", "V")
			Binesh.AddToHTML("DeltaTeta = "..Binesh.ProgressNumber(_DeltaTeta).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("V<sub>2</sub> = ?", "V")
			
			Binesh.AddToHTML("V<sub>2</sub> = <span>"..Binesh.ProgressNumber(_V1).."(1+"..Binesh.ProgressNumber(Beta_Length).."*"..Binesh.ProgressNumber(_DeltaTeta)..")</span> &#8658; V<sub>2</sub> = "..Binesh.ProgressNumber(_V2).." m<sup>3</sup>")
		end
	end
end