function Binesh.F113_3()
	if _Teta1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„« «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T1") ~= -1)) then
		if _DeltaR ~= nil and Alpha_112 ~= nil and R1 ~= nil and _Teta2 ~= nil then
			Binesh.CreateHTMLFile("DeltaR = R<sub>1</sub>Alpha(Teta<sub>2</sub>-Teta<sub>1</sub>)", "Teta<sub>2</sub>-Teta<sub>1</sub> = <span>DeltaR/AlphaR<sub>1</sub></span>")
			Binesh.AddToHTML("Teta<sub>1</sub> = Teta<sub>2</sub>- <span>DeltaR/AlphaR<sub>1</sub></span> &#8658; ")
			_Teta1 = _Teta2-(_DeltaR/(Alpha_112*R1))
			
			Binesh.AddToHTML("Teta<sub>1</sub> = "..Binesh.Convert_e(_Teta2).."- <span>"..Binesh.Convert_e(_DeltaR).."/"..Binesh.Convert_e(Alpha_112).."*"..Binesh.Convert_e(R1).."</span> &#8658; Teta<sub>1</sub> = "..Binesh.Convert_e(_Teta1).."<sup>o</sup>C")
			
			Binesh.AddToHTML("Teta<sub>2</sub>: "..Binesh.Convert_e(_Teta2).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("DeltaR: "..Binesh.Convert_e(_DeltaR).." Ohm", "V")
			if Alpha_112_K == nil then
				Binesh.AddToHTML("Alpha: "..Binesh.Convert_e(Alpha_112).." 1/C", "V")
			else
				Binesh.AddToHTML("Alpha: "..Binesh.Convert_e(Alpha_112).." 1/K", "V")
			end
			Binesh.AddToHTML("R<sub>1</sub>: "..Binesh.Convert_e(R1).." Ohm", "V")
			Binesh.AddToHTML("Teta<sub>1</sub>: ?", "V")
		end
	end
	
	if _Teta2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„« œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta2") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T2") ~= -1)) then
		if _DeltaR ~= nil and Alpha_112 ~= nil and R1 ~= nil and _Teta2 ~= nil then
			Binesh.CreateHTMLFile("DeltaR = R<sub>1</sub>Alpha(Teta<sub>2</sub>-Teta<sub>1</sub>)", "Teta<sub>2</sub>-Teta<sub>1</sub> = <span>DeltaR/AlphaR<sub>1</sub></span>")
			Binesh.AddToHTML("Teta<sub>2</sub> = Teta<sub>1</sub>+ <span>DeltaR/AlphaR<sub>1</sub></span> &#8658; ")
			_Teta2 = _Teta1+(_DeltaR/(Alpha_112*R1))
			
			Binesh.AddToHTML("Teta<sub>2</sub> = "..Binesh.Convert_e(_Teta1).."+ <span>"..Binesh.Convert_e(_DeltaR).."/"..Binesh.Convert_e(Alpha_112).."*"..Binesh.Convert_e(R1).."</span> &#8658; Teta<sub>2</sub> = "..Binesh.Convert_e(_Teta2).."<sup>o</sup>C")
			
			Binesh.AddToHTML("Teta<sub>2</sub>: "..Binesh.Convert_e(_Teta1).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("DeltaR: "..Binesh.Convert_e(_DeltaR).." Ohm", "V")
			if Alpha_112_K == nil then
				Binesh.AddToHTML("Alpha: "..Binesh.Convert_e(Alpha_112).." 1/C", "V")
			else
				Binesh.AddToHTML("Alpha: "..Binesh.Convert_e(Alpha_112).." 1/K", "V")
			end
			Binesh.AddToHTML("R<sub>1</sub>: "..Binesh.Convert_e(R1).." Ohm", "V")
			Binesh.AddToHTML("Teta<sub>2</sub>: ?", "V")
		end
	end
end