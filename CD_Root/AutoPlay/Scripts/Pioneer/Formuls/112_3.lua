function Binesh.F112_3()
	if _Teta1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„« «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T1") ~= -1)) then
		if _DeltaRu_Resistor ~= nil and Alpha_112 ~= nil and _Ru_Resistor1 ~= nil and _Teta2 ~= nil then
			Binesh.CreateHTMLFile("DeltaRu = Ru<sub>1</sub>Alpha(Teta<sub>2</sub>-Teta<sub>1</sub>)", "Teta<sub>2</sub>-Teta<sub>1</sub> = <span>DeltaRu/AlphaRu<sub>1</sub></span>")
			Binesh.AddToHTML("Teta<sub>1</sub> = Teta<sub>2</sub>- <span>DeltaRu/AlphaRu<sub>1</sub></span> &#8658; ")
			_Teta1 = _Teta2-(_DeltaRu_Resistor/(Alpha_112*_Ru_Resistor1))
			
			Binesh.AddToHTML("Teta<sub>1</sub> = ".._Teta2.."- <span>".._DeltaRu_Resistor.."/"..Alpha_112.."*".._Ru_Resistor1.."</span> &#8658; Teta<sub>1</sub> = ".._Teta1.."<sup>o</sup>C")
			
			Binesh.AddToHTML("Teta<sub>2</sub>: ".._Teta2.."<sup>o</sup>C", "V")
			Binesh.AddToHTML("DeltaRu: ".._DeltaRu_Resistor.." Ohm.m", "V")
			if Alpha_112_K == nil then
				Binesh.AddToHTML("Alpha: "..Alpha_112.." 1/C", "V")
			else
				Binesh.AddToHTML("Alpha: "..Alpha_112.." 1/K", "V")
			end
			Binesh.AddToHTML("Ru<sub>1</sub>: ".._Ru_Resistor1.." Ohm.m", "V")
			Binesh.AddToHTML("Teta<sub>1</sub>: ?", "V")
		end
	end
	
	if _Teta2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„« œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta2") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T2") ~= -1)) then
		if _DeltaRu_Resistor ~= nil and Alpha_112 ~= nil and _Ru_Resistor1 ~= nil and _Teta2 ~= nil then
			Binesh.CreateHTMLFile("DeltaRu = Ru<sub>1</sub>Alpha(Teta<sub>2</sub>-Teta<sub>1</sub>)", "Teta<sub>2</sub>-Teta<sub>1</sub> = <span>DeltaRu/AlphaRu<sub>1</sub></span>")
			Binesh.AddToHTML("Teta<sub>2</sub> = Teta<sub>1</sub>+ <span>DeltaRu/AlphaRu<sub>1</sub></span> &#8658; ")
			_Teta2 = _Teta1+(_DeltaRu_Resistor/(Alpha_112*_Ru_Resistor1))
			
			Binesh.AddToHTML("Teta<sub>2</sub> = ".._Teta1.."+ <span>".._DeltaRu_Resistor.."/"..Alpha_112.."*".._Ru_Resistor1.."</span> &#8658; Teta<sub>2</sub> = ".._Teta2.."<sup>o</sup>C")
			
			Binesh.AddToHTML("Teta<sub>2</sub>: ".._Teta1.."<sup>o</sup>C", "V")
			Binesh.AddToHTML("DeltaRu: ".._DeltaRu_Resistor.." Ohm.m", "V")
			if Alpha_112_K == nil then
				Binesh.AddToHTML("Alpha: "..Alpha_112.." 1/C", "V")
			else
				Binesh.AddToHTML("Alpha: "..Alpha_112.." 1/K", "V")
			end
			Binesh.AddToHTML("Ru<sub>1</sub>: ".._Ru_Resistor1.." Ohm.m", "V")
			Binesh.AddToHTML("Teta<sub>2</sub>: ?", "V")
		end
	end
end