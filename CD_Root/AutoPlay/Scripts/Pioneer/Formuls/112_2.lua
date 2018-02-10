function Binesh.F112_2()
	if _Ru_Resistor1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ „ﬁ«Ê„  ÊÌéÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„  ÊÌéÂ «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ru1") ~= -1)) then
		if Alpha_112 ~= nil and _DeltaTeta ~= nil and _Ru_Resistor2 ~= nil then
			Binesh.CreateHTMLFile("Ru<sub>2</sub> = Ru<sub>1</sub>(1+AlphaDeltaTeta)", "Ru<sub>1</sub> = <span>Ru<sub>2</sub>/1+AlphaDeltaTeta</span>")
			_Ru_Resistor1 = _Ru_Resistor2/(1+Alpha_112*_DeltaTeta)
			
			Binesh.AddToHTML("Ru<sub>1</sub> = <span>"..Binesh.Convert_e(_Ru_Resistor2).."/1+"..Binesh.Convert_e(Alpha_112).."*"..Binesh.Convert_e(_DeltaTeta).."</span> &#8658; Ru<sub>1</sub> = "..Binesh.Convert_e(_Ru_Resistor1).." Ohm.m")
			
			Binesh.AddToHTML("Ru<sub>2</sub>: "..Binesh.Convert_e(_Ru_Resistor2).." Ohm.m", "V")
			if Alpha_112_K == nil then
				Binesh.AddToHTML("Alpha: "..Binesh.Convert_e(Alpha_112).." 1/C", "V")
			else
				Binesh.AddToHTML("Alpha: "..Binesh.Convert_e(Alpha_112).." 1/K", "V")
			end
			Binesh.AddToHTML("DeltaTeta: "..Binesh.Convert_e(_DeltaTeta).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("Ru<sub>1</sub>: ?", "V")
		end
	end
	
	if _Ru_Resistor2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ „ﬁ«Ê„  ÊÌéÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„  ÊÌéÂ œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ru1") ~= -1)) then
		if Alpha_112 ~= nil and _DeltaTeta ~= nil and _Ru_Resistor1 ~= nil then
			Binesh.CreateHTMLFile("Ru<sub>2</sub> = Ru<sub>1</sub>(1+AlphaDeltaTeta)")
			_Ru_Resistor2 = _Ru_Resistor1*(1+Alpha_112*_DeltaTeta)
			
			Binesh.AddToHTML("Ru<sub>2</sub> = "..Binesh.Convert_e(_Ru_Resistor1).."(1+"..Binesh.Convert_e(Alpha_112).."*"..Binesh.Convert_e(_DeltaTeta)..") &#8658; Ru<sub>2</sub> = "..Binesh.Convert_e(_Ru_Resistor2).." Ohm.m")
			
			Binesh.AddToHTML("Ru<sub>1</sub>: "..Binesh.Convert_e(_Ru_Resistor1).." Ohm.m", "V")
			if Alpha_112_K == nil then
				Binesh.AddToHTML("Alpha: "..Binesh.Convert_e(Alpha_112).." 1/C", "V")
			else
				Binesh.AddToHTML("Alpha: "..Binesh.Convert_e(Alpha_112).." 1/K", "V")
			end
			Binesh.AddToHTML("DeltaTeta: "..Binesh.Convert_e(_DeltaTeta).."<sup>o</sup>C", "V")
			Binesh.AddToHTML("Ru<sub>2</sub>: ?", "V")
		end
	end
end