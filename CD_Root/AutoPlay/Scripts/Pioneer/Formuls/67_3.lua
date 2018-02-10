function Binesh.F67_3()
	if _Teta1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„« «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T1") ~= -1)) then
		if _DeltaA ~= nil and _A1 ~= nil and Alpha_Length ~= nil and _Teta2 ~= nil and _DeltaTeta == nil then
			Binesh.CreateHTMLFile("DeltaA = A<sub>1</sub>(2Alpha)(Teta<sub>2</sub>-Teta<sub>1</sub>)", "Teta<sub>1</sub> = Teta<sub>2</sub>- <span>DeltaA/A<sub>1</sub>(2Alpha)</span>")
			_Teta1 = _Teta2-(_DeltaA/(A1*2*Alpha_Length))
			
			Binesh.AddToHTML("Teta<sub>1</sub> = "..Binesh.Convert_e(_Teta2).."- <span>"..Binesh.Convert_e(_DeltaA).."/"..Binesh.Convert_e(_A1).."(2*"..Binesh.Convert_e(Alpha_Length)..")</span> &#8658; Teta<sub>1</sub> = "..Binesh.Convert_e(_Teta1).."<sup>o</sup>C")
			
			Binesh.AddToHTML("Teta<sub>2</sub>: "..Binesh.Convert_e(_Teta2).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("DeltaA: "..Binesh.Convert_e(_DeltaA).." m", "V")
			Binesh.AddToHTML("A<sub>1</sub>: "..Binesh.Convert_e(_A1).." m", "V")
			Binesh.AddToHTML("Alpha: "..Binesh.Convert_e(Alpha_Length).." 1/C", "V")
			Binesh.AddToHTML("Teta<sub>1</sub>: ?", "V")
		end
	end
	
	if _Teta2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„« œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta2") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T2") ~= -1)) then
		if _DeltaA ~= nil and _A1 ~= nil and Alpha_Length ~= nil and _Teta1 ~= nil and _DeltaTeta == nil then
			Binesh.CreateHTMLFile("DeltaA = A<sub>1</sub>(2Alpha)(Teta<sub>2</sub>-Teta<sub>1</sub>)", "Teta<sub>2</sub> = Teta<sub>1</sub>+ <span>DeltaA/A<sub>1</sub>(2Alpha)</span>")
			_Teta2 = _Teta1+(_DeltaA/(A1*2*Alpha_Length))
			
			Binesh.AddToHTML("Teta<sub>2</sub> = "..Binesh.Convert_e(_Teta1).."+ <span>"..Binesh.Convert_e(_DeltaA).."/"..Binesh.Convert_e(_A1).."(2*"..Binesh.Convert_e(Alpha_Length)..")</span> &#8658; Teta<sub>2</sub> = "..Binesh.Convert_e(_Teta2).."<sup>o</sup>C")
			
			Binesh.AddToHTML("Teta<sub>1</sub>: "..Binesh.Convert_e(_Teta1).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("DeltaA: "..Binesh.Convert_e(_DeltaA).." m", "V")
			Binesh.AddToHTML("A<sub>1</sub>: "..Binesh.Convert_e(_A1).." m", "V")
			Binesh.AddToHTML("Alpha: "..Binesh.Convert_e(Alpha_Length).." 1/C", "V")
			Binesh.AddToHTML("Teta<sub>2</sub>: ?", "V")
		end
	end
end