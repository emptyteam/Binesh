function Binesh.F77_1_2()
	if _V1 == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ÕÃ„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "ÕÃ„ «Ê·Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1 then 
		if Beta ~= nil and _Teta ~= nil and _V2 ~= nil then
			Binesh.CreateHTMLFile("W = -P(V<sub>2</sub>-V<sub>1</sub>)", "V<sub>2</sub>-V<sub>1</sub> = <span>-W/P</span>")
			Binesh.AddToHTML("V<sub>1</sub> = V<sub>2</sub>+ <span>W/P</span> &#8658; ")
			_V1 = _V2+(W/P)
			Binesh.AddToHTML("V<sub>1</sub> = ".._V2.."+ <span>"..W.."/"..P.." &#8658; V<sub>1</sub> = ".._V1.." m<sup>3</sup>")
			
			Binesh.AddToHTML("V<sub>2</sub>: ".._V2.." m<sup>3</sup>", "V")
			Binesh.AddToHTML("W: "..W.." J", "V")
			Binesh.AddToHTML("P: "..P.." Pa", "V")
			Binesh.AddToHTML("V<sub>1</sub>: ?", "V")
		end
	end
	
	if _V2 == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ÕÃ„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "ÕÃ„ œÊ„Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1 then 
		if Beta ~= nil and _Teta ~= nil and _V1 ~= nil then
			Binesh.CreateHTMLFile("W = -P(V<sub>2</sub>-V<sub>1</sub>)", "V<sub>2</sub>-V<sub>1</sub> = <span>-W/P</span>")
			Binesh.AddToHTML("V<sub>2</sub> = V<sub>2</sub>- <span>W/P</span> &#8658; ")
			_V2 = _V1+(-W/P)
			Binesh.AddToHTML("V<sub>2</sub> = ".._V1.."- <span>"..W.."/"..P.." &#8658; V<sub>2</sub> = ".._V2.." m<sup>3</sup>")
			
			Binesh.AddToHTML("V<sub>1</sub>: ".._V1.." m<sup>3</sup>", "V")
			Binesh.AddToHTML("W: "..W.." J", "V")
			Binesh.AddToHTML("P: "..P.." Pa", "V")
			Binesh.AddToHTML("V<sub>2</sub>: ?", "V")
		end
	end
end