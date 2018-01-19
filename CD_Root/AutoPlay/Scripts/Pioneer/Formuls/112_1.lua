function Binesh.F112_1()
	--------------------------{DELTA}--------------------------
	if _DeltaRu_Resistor == nil then
		if _Ru_Resistor1 ~= nil and _Ru_Resistor2 ~= nil then
			Binesh.CreateHTMLFile("DeltaRu = Ru<sub>2</sub>-Ru<sub>1</sub>")
			_DeltaRu_Resistor = _Ru_Resistor2 - _Ru_Resistor1
			Binesh.AddToHTML("DeltaRu = ".._Ru_Resistor2.."-".._Ru_Resistor1.." &#8658; DeltaRu = ".._DeltaRu_Resistor.." Ohm.m")
		end
	end
	
	if _Ru_Resistor1 == nil then
		if _DeltaRu_Resistor ~= nil and _Ru_Resistor2 ~= nil then
			Binesh.CreateHTMLFile("DeltaRu = Ru<sub>2</sub>-Ru<sub>1</sub>", "Ru<sub>1</sub> = Ru<sub>2</sub>-DeltaRu")
			_Ru_Resistor1 = _Ru_Resistor2-_DeltaRu_Resistor
			Binesh.AddToHTML("Ru<sub>1</sub> = ".._Ru_Resistor2.."-".._DeltaRu_Resistor.." &#8658; Ru<sub>1</sub> = ".._Ru_Resistor1.." Ohm.m")
		end
	end
	
	if _Ru_Resistor2 == nil then
		if _DeltaRu_Resistor ~= nil and _Ru_Resistor1 ~= nil then
			Binesh.CreateHTMLFile("DeltaRu = Ru<sub>2</sub>-Ru<sub>1</sub>", "Ru<sub>2</sub> = DeltaRu+Ru<sub>1</sub>")
			_Ru_Resistor2 = _Ru_Resistor1+_DeltaRu_Resistor
			Binesh.AddToHTML("Ru<sub>2</sub> = ".._DeltaRu_Resistor.."+".._Ru_Resistor1.." &#8658; Ru<sub>2</sub> = ".._Ru_Resistor2.." Ohm.m")
		end
	end
	--------------------------END {DELTA}--------------------------
	if _DeltaRu_Resistor == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— „ﬁ«Ê„  ÊÌéÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„  ÊÌéÂ  €ÌÌ—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaRu") ~= -1 then
		if _Ru_Resistor1 ~= nil and Alpha_112 ~= nil and _DeltaTeta ~= nil then
			Binesh.CreateHTMLFile("DeltaRu = Ru<sub>1</sub>AlphaDeltaTeta")
			_DeltaRu_Resistor = _Ru_Resistor1*Alpha_112*_DeltaTeta
			
			Binesh.AddToHTML("DeltaRu = ".._Ru_Resistor1.."*"..Alpha_112.."*".._DeltaTeta.." &#8658; DeltaRu = ".._DeltaRu_Resistor.." Ohm.m")
			
			Binesh.AddToHTML("Ru<sub>1</sub>: ".._Ru_Resistor1.." Ohm.m", "V")
			if Alpha_112_K == nil then
				Binesh.AddToHTML("Alpha: "..Alpha_112.." 1/C", "V")
			else
				Binesh.AddToHTML("Alpha: "..Alpha_112.." 1/K", "V")
			end
			Binesh.AddToHTML("DeltaTeta: ".._DeltaTeta.."<sup>o</sup>C", "V")
			Binesh.AddToHTML("DeltaRu: ?", "V")
		end
	end
	
	if _Ru_Resistor1 == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ „ﬁ«Ê„  ÊÌéÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„  ÊÌéÂ «Ê·Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ru1") ~= -1 then
		if _DeltaRu_Resistor ~= nil and Alpha_112 ~= nil and _DeltaTeta ~= nil then
			Binesh.CreateHTMLFile("DeltaRu = Ru<sub>1</sub>AlphaDeltaTeta", "Ru<sub>1</sub> = <span>DeltaRu/AlphaDeltaTeta</span>")
			_Ru_Resistor1 = _DeltaRu_Resistor/(Alpha_112*_DeltaTeta)
			
			Binesh.AddToHTML("Ru<sub>1</sub> = <span>".._DeltaRu_Resistor.."/"..Alpha_112.."*".._DeltaTeta.."</span> &#8658; Ru<sub>1</sub> = ".._Ru_Resistor1.." Ohm.m")
			
			Binesh.AddToHTML("DeltaRu: ".._DeltaRu_Resistor.." Ohm.m", "V")
			if Alpha_112_K == nil then
				Binesh.AddToHTML("Alpha: "..Alpha_112.." 1/C", "V")
			else
				Binesh.AddToHTML("Alpha: "..Alpha_112.." 1/K", "V")
			end
			Binesh.AddToHTML("DeltaTeta: ".._DeltaTeta.."<sup>o</sup>C", "V")
			Binesh.AddToHTML("Ru<sub>1</sub>: ?", "V")
		end
	end
	
	if Alpha_112 == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» œ„«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Alpha") ~= -1 then
		if _DeltaRu_Resistor ~= nil and _Ru_Resistor1 ~= nil and _DeltaTeta ~= nil then
			Binesh.CreateHTMLFile("DeltaRu = Ru<sub>1</sub>AlphaDeltaTeta", "Alpha = <span>DeltaRu/Ru<sub>1</sub>DeltaTeta</span>")
			Alpha_112 = _DeltaRu_Resistor/(_Ru_Resistor1*_DeltaTeta)
			
			Binesh.AddToHTML("Alpha = <span>".._DeltaRu_Resistor.."/".._Ru_Resistor1.."*".._DeltaTeta.."</span> &#8658; Alpha = "..Alpha_112.." 1/C")
			
			Binesh.AddToHTML("DeltaRu: ".._DeltaRu_Resistor.." Ohm.m", "V")
			Binesh.AddToHTML("Ru<sub>1</sub>: ".._Ru_Resistor1.." Ohm.m", "V")
			Binesh.AddToHTML("DeltaTeta: ".._DeltaTeta.."<sup>o</sup>C", "V")
			Binesh.AddToHTML("Alpha: ?", "V")
		end
	end
	
	if _DeltaTeta == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„«  €ÌÌ—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaTeta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaT") ~= -1 then
		if _DeltaRu_Resistor ~= nil and Alpha_112 ~= nil and _Ru_Resistor1 ~= nil then
			Binesh.CreateHTMLFile("DeltaRu = Ru<sub>1</sub>AlphaDeltaTeta", "DeltaTeta = <span>DeltaRu/AlphaRu<sub>1</sub></span>")
			_DeltaTeta = _DeltaRu_Resistor/(Alpha_112*_Ru_Resistor1)
			
			Binesh.AddToHTML("DeltaTeta = <span>".._DeltaRu_Resistor.."/"..Alpha_112.."*".._Ru_Resistor1.."</span> &#8658; DeltaTeta = ".._DeltaTeta.."<sup>o</sup>C")
			
			Binesh.AddToHTML("DeltaRu: ".._DeltaRu_Resistor.." Ohm.m", "V")
			if Alpha_112_K == nil then
				Binesh.AddToHTML("Alpha: "..Alpha_112.." 1/C", "V")
			else
				Binesh.AddToHTML("Alpha: "..Alpha_112.." 1/K", "V")
			end
			Binesh.AddToHTML("Ru<sub>1</sub>: ".._Ru_Resistor1.." Ohm.m", "V")
			Binesh.AddToHTML("DeltaTeta: ?", "V")
		end
	end
end