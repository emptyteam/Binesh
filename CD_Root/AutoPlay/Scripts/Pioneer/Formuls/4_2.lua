function Binesh.F4_2()
	if _Teta1 == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„« «Ê·Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T1") ~= -1 then
		if Q ~= nil and m ~= nil and c ~= nil and _Teta2 ~= nil then
			Binesh.CreateHTMLFile("Q = mcDeltaTeta", "Q = mc(Teta<sub>2</sub>-Teta<sub>1</sub>)")
			Binesh.AddToHTML("Teta<sub>1</sub> = Teta<sub>2</sub>- <span>Q/mc</span> &#8658; ")
			
			_Teta1 = (-Q/(m*c)) + _Teta2
			
			Binesh.AddToHTML("Teta<sub>1</sub> = ".._Teta2.."- <span>"..Q.."/"..m.."*"..c.."</span> &#8658; Teta<sub>1</sub> = ".._Teta1.."<sup>o</sup>C")
		end
	end
	
	if _Teta2 == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„« œÊ„Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta2") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T2") ~= -1 then
		if Q ~= nil and m ~= nil and c ~= nil and _Teta1 ~= nil then
			Binesh.CreateHTMLFile("Q = mcDeltaTeta", "Q = mc(Teta<sub>2</sub>-Teta<sub>1</sub>)")
			Binesh.AddToHTML("Teta<sub>1</sub> = Teta<sub>1</sub>+ <span>Q/mc</span> &#8658; ")
			
			_Teta2 = (-Q/(m*c)) + _Teta1
			
			Binesh.AddToHTML("Teta<sub>2</sub> = ".._Teta1.."+ <span>"..Q.."/"..m.."*"..c.."</span> &#8658; Teta<sub>2</sub> = ".._Teta2.."<sup>o</sup>C")
		end
	end
end