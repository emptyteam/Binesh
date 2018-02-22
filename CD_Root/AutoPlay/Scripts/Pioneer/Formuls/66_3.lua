function Binesh.F66_3()
	if _Teta1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„« «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T1") ~= -1)) then
		if _DeltaL ~= nil and _L1 ~= nil and Alpha_Length ~= nil and _Teta2 ~= nil and _DeltaTeta == nil then
			Binesh.CreateHTMLFile("DeltaL = L<sub>1</sub>Alpha(Teta<sub>2</sub>-Teta<sub>1</sub>)", "Teta<sub>1</sub> = Teta<sub>2</sub>- <span>DeltaL/L<sub>1</sub>Alpha</span>")
			_Teta1 = _Teta2-(_DeltaL/(L1*Alpha_Length))
			
			Binesh.AddToHTML("Teta<sub>1</sub> = "..Binesh.ProgressNumber(_Teta2).."- <span>"..Binesh.ProgressNumber(_DeltaL).."/"..Binesh.ProgressNumber(_L1).."*"..Binesh.ProgressNumber(Alpha_Length).."</span> &#8658; Teta<sub>1</sub> = "..Binesh.ProgressNumber(_Teta1).."<sup>o</sup>C")
			
			Binesh.AddToHTML("Teta<sub>2</sub> = "..Binesh.ProgressNumber(_Teta2).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("DeltaL = "..Binesh.ProgressNumber(_DeltaL).." m", "V")
			Binesh.AddToHTML("L<sub>1</sub> = "..Binesh.ProgressNumber(_L1).." m", "V")
			Binesh.AddToHTML("Alpha = "..Binesh.ProgressNumber(Alpha_Length).." 1/C", "V")
			Binesh.AddToHTML("Teta<sub>1</sub> = ?", "V")
		end
	end
	
	if _Teta2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„« œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta2") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T2") ~= -1)) then
		if _DeltaL ~= nil and _L1 ~= nil and Alpha_Length ~= nil and _Teta1 ~= nil and _DeltaTeta == nil then
			Binesh.CreateHTMLFile("DeltaL = L<sub>1</sub>Alpha(Teta<sub>2</sub>-Teta<sub>1</sub>)", "Teta<sub>2</sub> = Teta<sub>1</sub>+ <span>DeltaL/L<sub>1</sub>Alpha</span>")
			_Teta2 = _Teta1+(_DeltaL/(L1*Alpha_Length))
			
			Binesh.AddToHTML("Teta<sub>2</sub> = "..Binesh.ProgressNumber(_Teta1).."+ <span>"..Binesh.ProgressNumber(_DeltaL).."/"..Binesh.ProgressNumber(_L1).."*"..Binesh.ProgressNumber(Alpha_Length).."</span> &#8658; Teta<sub>2</sub> = "..Binesh.ProgressNumber(_Teta2).."<sup>o</sup>C")
			
			Binesh.AddToHTML("Teta<sub>1</sub> = "..Binesh.ProgressNumber(_Teta1).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("DeltaL = "..Binesh.ProgressNumber(_DeltaL).." m", "V")
			Binesh.AddToHTML("L<sub>1</sub> = "..Binesh.ProgressNumber(_L1).." m", "V")
			Binesh.AddToHTML("Alpha = "..Binesh.ProgressNumber(Alpha_Length).." 1/C", "V")
			Binesh.AddToHTML("Teta<sub>2</sub> = ?", "V")
		end
	end
end