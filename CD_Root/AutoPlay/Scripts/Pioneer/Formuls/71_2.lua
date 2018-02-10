function Binesh.F71_2()
	if _Teta1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„« «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T1") ~= -1)) then
		if Q ~= nil and L ~= nil and t ~= nil and K_71 ~= nil and A ~= nil and _Teta2 ~= nil then
			Binesh.CreateHTMLFile("<span>Q/t</span> = K <span>A(Teta<sub>2</sub>-Teta<sub>1</sub>)/L</span>", "Teta<sub>2</sub>-Teta<sub>1</sub> = <span>QL/tKA</span>")
			Binesh.AddToHTML("Teta<sub>1</sub> = Teta<sub>2</sub>- <span>QL/tKA</span>")
			_Teta1 = _Teta2-((Q*L)/(t*K_71*A))
			
			Binesh.AddToHTML("Teta<sub>2</sub>: "..Binesh.Convert_e(_Teta2).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("Q: "..Binesh.Convert_e(Q).." J", "V")
			Binesh.AddToHTML("L: "..Binesh.Convert_e(L).." m", "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("K: "..Binesh.Convert_e(K_71).." J/msC", "V")
			Binesh.AddToHTML("A: "..Binesh.Convert_e(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("Teta<sub>1</sub>: ?", "V")
			
			Binesh.AddToHTML("Teta<sub>1</sub> = "..Binesh.Convert_e(_Teta2).."- <span>"..Binesh.Convert_e(Q).."*"..Binesh.Convert_e(L).."/"..Binesh.Convert_e(t).."*"..Binesh.Convert_e(K_71).."*"..Binesh.Convert_e(A).."</span> &#8658; Teta<sub>1</sub> = "..Binesh.Convert_e(_Teta1).."<sup>o</sup>C")
		end
	end
	
	if _Teta2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„« œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta2") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T2") ~= -1)) then
		if Q ~= nil and L ~= nil and t ~= nil and K_71 ~= nil and A ~= nil and _Teta1 ~= nil then
			Binesh.CreateHTMLFile("<span>Q/t</span> = K <span>A(Teta<sub>2</sub>-Teta<sub>1</sub>)/L</span>", "Teta<sub>2</sub>-Teta<sub>1</sub> = <span>QL/tKA</span>")
			Binesh.AddToHTML("Teta<sub>2</sub> = Teta<sub>1</sub>+ <span>QL/tKA</span>")
			_Teta2 = _Teta1+((Q*L)/(t*K_71*A))
			
			Binesh.AddToHTML("Teta<sub>1</sub>: "..Binesh.Convert_e(_Teta1).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("Q: "..Binesh.Convert_e(Q).." J", "V")
			Binesh.AddToHTML("L: "..Binesh.Convert_e(L).." m", "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("K: "..Binesh.Convert_e(K_71).." J/msC", "V")
			Binesh.AddToHTML("A: "..Binesh.Convert_e(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("Teta<sub>2</sub>: ?", "V")
			
			Binesh.AddToHTML("Teta<sub>2</sub> = "..Binesh.Convert_e(_Teta1).."- <span>"..Binesh.Convert_e(Q).."*"..Binesh.Convert_e(L).."/"..Binesh.Convert_e(t).."*"..Binesh.Convert_e(K_71).."*"..Binesh.Convert_e(A).."</span> &#8658; Teta<sub>2</sub> = "..Binesh.Convert_e(_Teta2).."<sup>o</sup>C")
		end
	end
end