function Binesh.F113_2()
	if R1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ „ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„  «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "R1") ~= -1)) then
		if Alpha_112 ~= nil and _DeltaTeta ~= nil and R2 ~= nil then
			Binesh.CreateHTMLFile("R<sub>2</sub> = R<sub>1</sub>(1+AlphaDeltaTeta)", "R<sub>1</sub> = <span>R<sub>2</sub>/1+AlphaDeltaTeta</span>")
			R1 = R2/(1+Alpha_112*_DeltaTeta)
			
			Binesh.AddToHTML("R<sub>1</sub> = <span>"..Binesh.ProgressNumber(R2).."/1+"..Binesh.ProgressNumber(Alpha_112).."*"..Binesh.ProgressNumber(_DeltaTeta).."</span> &#8658; R<sub>1</sub> = "..Binesh.ProgressNumber(R1).." Ohm")
			
			Binesh.AddToHTML("R<sub>2</sub> = "..Binesh.ProgressNumber(R2).." Ohm", "V")
			if Alpha_112_K == nil then
				Binesh.AddToHTML("Alpha = "..Binesh.ProgressNumber(Alpha_112).." 1/C", "V")
			else
				Binesh.AddToHTML("Alpha = "..Binesh.ProgressNumber(Alpha_112).." 1/K", "V")
			end
			Binesh.AddToHTML("DeltaTeta = "..Binesh.ProgressNumber(_DeltaTeta).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("R<sub>1</sub> = ?", "V")
		end
	end
	
	if R2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ „ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„  œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "R1") ~= -1)) then
		if Alpha_112 ~= nil and _DeltaTeta ~= nil and R1 ~= nil then
			Binesh.CreateHTMLFile("R<sub>2</sub> = R<sub>1</sub>(1+AlphaDeltaTeta)")
			R2 = R1*(1+Alpha_112*_DeltaTeta)
			
			Binesh.AddToHTML("R<sub>2</sub> = "..Binesh.ProgressNumber(R1).."(1+"..Binesh.ProgressNumber(Alpha_112).."*"..Binesh.ProgressNumber(_DeltaTeta)..") &#8658; R<sub>2</sub> = "..Binesh.ProgressNumber(R2).." Ohm")
			
			Binesh.AddToHTML("R<sub>1</sub> = "..Binesh.ProgressNumber(R1).." Ohm", "V")
			if Alpha_112_K == nil then
				Binesh.AddToHTML("Alpha = "..Binesh.ProgressNumber(Alpha_112).." 1/C", "V")
			else
				Binesh.AddToHTML("Alpha = "..Binesh.ProgressNumber(Alpha_112).." 1/K", "V")
			end
			Binesh.AddToHTML("DeltaTeta = "..Binesh.ProgressNumber(_DeltaTeta).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("R<sub>2</sub> = ?", "V")
		end
	end
end