function Binesh.F69_3()
	if _Teta1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "��� �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T1") ~= -1)) then
		if Beta_Length ~= nil and _DetlaV ~= nil and _V1 ~= nil and _Teta2 ~= nil then
			Binesh.CreateHTMLFile("DeltaV = V<sub>1</sub>Beta(Teta<sub>2</sub>-Teta<sub>1</sub>)", "Teta<sub>1</sub> = Teta<sub>2</sub>- <span>DeltaV/V<sub>1</sub>Beta</sapn>")
			_Teta1 = _Teta2+(-_DeltaV/(_V1*Beta_Length))
			
			Binesh.AddToHTML("Teta<sub>2</sub> = "..Binesh.ProgressNumber(_Teta2).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("DeltaV = "..Binesh.ProgressNumber(_DeltaV).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("Beta = "..Binesh.ProgressNumber(Beta_Length).." 1/C", "V")
			Binesh.AddToHTML("Teta<sub>1</sub> = ?", "V")
			
			Binesh.AddToHTML("Teta<sub>1</sub> = "..Binesh.ProgressNumber(_Teta2).."- <span>"..Binesh.ProgressNumber(_DeltaV).."/"..Binesh.ProgressNumber(_V1).."*"..Binesh.ProgressNumber(Beta_Length).."</span> &#8658; Teta<sub>1</sub> = "..Binesh.ProgressNumber(_Teta1).."<sup>o</sup>C")
		end
	end
	
	if _Teta2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "��� �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta2") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T2") ~= -1)) then
		if Beta_Length ~= nil and _DetlaV ~= nil and _V1 ~= nil and _Teta1 ~= nil then
			Binesh.CreateHTMLFile("DeltaV = V<sub>1</sub>Beta(Teta<sub>2</sub>-Teta<sub>1</sub>)", "Teta<sub>2</sub> = Teta<sub>1</sub>+ <span>DeltaV/V<sub>1</sub>Beta</sapn>")
			_Teta2 = _Teta1+(_DeltaV/(_V1*Beta_Length))
			
			Binesh.AddToHTML("Teta<sub>1</sub> = "..Binesh.ProgressNumber(_Teta1).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("DeltaV = "..Binesh.ProgressNumber(_DeltaV).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1).." m<sup>3</sup>", "V")
			Binesh.AddToHTML("Beta = "..Binesh.ProgressNumber(Beta_Length).." 1/C", "V")
			Binesh.AddToHTML("Teta<sub>2</sub> = ?", "V")
			
			Binesh.AddToHTML("Teta<sub>2</sub> = "..Binesh.ProgressNumber(_Teta1).."+ <span>"..Binesh.ProgressNumber(_DeltaV).."/"..Binesh.ProgressNumber(_V1).."*"..Binesh.ProgressNumber(Beta_Length).."</span> &#8658; Teta<sub>2</sub> = "..Binesh.ProgressNumber(_Teta2).."<sup>o</sup>C")
		end
	end
end