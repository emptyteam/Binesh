function Binesh.F113_1()
	--------------------------{DELTA}--------------------------
	if _DeltaR == nil then
		if R1 ~= nil and R2 ~= nil then
			Binesh.CreateHTMLFile("DeltaR = R<sub>2</sub>-R<sub>1</sub>")
			_DeltaR = R2 - R1
			Binesh.AddToHTML("DeltaR = "..Binesh.Convert_e(R2).."-"..Binesh.Convert_e(R1).." &#8658; DeltaR = "..Binesh.Convert_e(_DeltaR).." Ohm")
		end
	end
	
	if R1 == nil then
		if _DeltaR ~= nil and R2 ~= nil then
			Binesh.CreateHTMLFile("DeltaR = R<sub>2</sub>-R<sub>1</sub>", "R<sub>1</sub> = R<sub>2</sub>-DeltaR")
			R1 = R2-_DeltaR
			Binesh.AddToHTML("R<sub>1</sub> = "..Binesh.Convert_e(R2).."-"..Binesh.Convert_e(_DeltaR).." &#8658; R<sub>1</sub> = "..Binesh.Convert_e(R1).." Ohm")
		end
	end
	
	if R2 == nil then
		if _DeltaR ~= nil and R1 ~= nil then
			Binesh.CreateHTMLFile("DeltaR = R<sub>2</sub>-R<sub>1</sub>", "R<sub>2</sub> = DeltaR+R<sub>1</sub>")
			R2 = R1+_DeltaR
			Binesh.AddToHTML("R<sub>2</sub> = "..Binesh.Convert_e(_DeltaR).."+"..Binesh.Convert_e(R1).." &#8658; R<sub>2</sub> = "..Binesh.Convert_e(R2).." Ohm")
		end
	end
	--------------------------END {DELTA}--------------------------
	if _DeltaR == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— „ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„   €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaR") ~= -1)) then
		if R1 ~= nil and Alpha_112 ~= nil and _DeltaTeta ~= nil then
			Binesh.CreateHTMLFile("DeltaR = R<sub>1</sub>AlphaDeltaTeta")
			_DeltaR = R1*Alpha_112*_DeltaTeta
			
			Binesh.AddToHTML("DeltaR = "..Binesh.Convert_e(R1).."*"..Binesh.Convert_e(Alpha_112).."*"..Binesh.Convert_e(_DeltaTeta).." &#8658; DeltaR = "..Binesh.Convert_e(_DeltaR).." Ohm")
			
			Binesh.AddToHTML("R<sub>1</sub>: "..Binesh.Convert_e(R1).." Ohm", "V")
			if Alpha_112_K == nil then
				Binesh.AddToHTML("Alpha: "..Binesh.Convert_e(Alpha_112).." 1/C", "V")
			else
				Binesh.AddToHTML("Alpha: "..Binesh.Convert_e(Alpha_112).." 1/K", "V")
			end
			Binesh.AddToHTML("DeltaTeta: "..Binesh.Convert_e(_DeltaTeta).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("DeltaR: ?", "V")
		end
	end
	
	if R1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ „ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„  «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "R1") ~= -1)) then
		if _DeltaR ~= nil and Alpha_112 ~= nil and _DeltaTeta ~= nil then
			Binesh.CreateHTMLFile("DeltaR = R<sub>1</sub>AlphaDeltaTeta", "R<sub>1</sub> = <span>DeltaR/AlphaDeltaTeta</span>")
			R1 = _DeltaR/(Alpha_112*_DeltaTeta)
			
			Binesh.AddToHTML("R<sub>1</sub> = <span>"..Binesh.Convert_e(_DeltaR).."/"..Binesh.Convert_e(Alpha_112).."*"..Binesh.Convert_e(_DeltaTeta).."</span> &#8658; R<sub>1</sub> = "..Binesh.Convert_e(R1).." Ohm")
			
			Binesh.AddToHTML("DeltaR: "..Binesh.Convert_e(_DeltaR).." Ohm", "V")
			if Alpha_112_K == nil then
				Binesh.AddToHTML("Alpha: "..Binesh.Convert_e(Alpha_112).." 1/C", "V")
			else
				Binesh.AddToHTML("Alpha: "..Binesh.Convert_e(Alpha_112).." 1/K", "V")
			end
			Binesh.AddToHTML("DeltaTeta: "..Binesh.Convert_e(_DeltaTeta).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("R<sub>1</sub>: ?", "V")
		end
	end
	
	if Alpha_112 == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Alpha") ~= -1) then
		if _DeltaR ~= nil and R1 ~= nil and _DeltaTeta ~= nil then
			Binesh.CreateHTMLFile("DeltaR = R<sub>1</sub>AlphaDeltaTeta", "Alpha = <span>DeltaR/R<sub>1</sub>DeltaTeta</span>")
			Alpha_112 = _DeltaR/(R1*_DeltaTeta)
			
			Binesh.AddToHTML("Alpha = <span>"..Binesh.Convert_e(_DeltaR).."/"..Binesh.Convert_e(R1).."*"..Binesh.Convert_e(_DeltaTeta).."</span> &#8658; Alpha = "..Binesh.Convert_e(Alpha_112).." 1/C")
			
			Binesh.AddToHTML("DeltaR: "..Binesh.Convert_e(_DeltaR).." Ohm", "V")
			Binesh.AddToHTML("R<sub>1</sub>: "..Binesh.Convert_e(R1).." Ohm", "V")
			Binesh.AddToHTML("DeltaTeta: "..Binesh.Convert_e(_DeltaTeta).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("Alpha: ?", "V")
		end
	end
	
	if _DeltaTeta == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„«  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaT") ~= -1)) then
		if _DeltaR ~= nil and Alpha_112 ~= nil and R1 ~= nil then
			Binesh.CreateHTMLFile("DeltaR = R<sub>1</sub>AlphaDeltaTeta", "DeltaTeta = <span>DeltaR/AlphaR<sub>1</sub></span>")
			_DeltaTeta = _DeltaR/(Alpha_112*R1)
			
			Binesh.AddToHTML("DeltaTeta = <span>"..Binesh.Convert_e(_DeltaR).."/"..Binesh.Convert_e(Alpha_112).."*"..Binesh.Convert_e(R1).."</span> &#8658; DeltaTeta = "..Binesh.Convert_e(_DeltaTeta).."<sup>o</sup>C")
			
			Binesh.AddToHTML("DeltaR: "..Binesh.Convert_e(_DeltaR).." Ohm", "V")
			if Alpha_112_K == nil then
				Binesh.AddToHTML("Alpha: "..Binesh.Convert_e(Alpha_112).." 1/C", "V")
			else
				Binesh.AddToHTML("Alpha: "..Binesh.Convert_e(Alpha_112).." 1/K", "V")
			end
			Binesh.AddToHTML("R<sub>1</sub>: "..Binesh.Convert_e(R1).." Ohm", "V")
			Binesh.AddToHTML("DeltaTeta: ?", "V")
		end
	end
end