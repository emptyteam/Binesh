function Binesh.F34_2()
	if _V1_Speed == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  «Ê·Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V0") ~= -1 then 
		if a ~= nil and _Deltat ~= nil and _V2_Speed ~= nil then
			Binesh.CreateHTMLFile("a = <span>(V<sub>2</sub>-V<sub>1</sub>)/Deltat</span>", "V<sub>1</sub> = V<sub>2</sub>-aDeltat")
			_V1_Speed = _V2_Speed+(-a*_Deltat)
			
			Binesh.AddToHTML("V<sub>1</sub> = ".._V2_Speed.."-"..a.."*".._Deltat.." &#8658; V<sub>1</sub> = ".._V1_Speed.." m/s")
			
			Binesh.AddToHTML("V<sub>2</sub>: ".._V2_Speed.." m/s", "V")
			Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("Deltat: ".._Deltat.." s", "V")
			Binesh.AddToHTML("V<sub>1</sub>: ?", "V")
		end
	end
	
	if _V2_Speed == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  œÊ„Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then 
		if a ~= nil and _Deltat ~= nil and _V1_Speed ~= nil then
			Binesh.CreateHTMLFile("a = <span>(V<sub>2</sub>-V<sub>1</sub>)/Deltat</span>", "V<sub>2</sub> = V<sub>1</sub>+aDeltat")
			_V2_Speed = _V1_Speed+a*_Deltat
			
			Binesh.AddToHTML("V<sub>2</sub> = ".._V1_Speed.."+"..a.."*".._Deltat.." &#8658; V<sub>2</sub> = ".._V2_Speed.." m/s")
			
			Binesh.AddToHTML("V<sub>1</sub>: ".._V1_Speed.." m/s", "V")
			Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("Deltat: ".._Deltat.." s", "V")
			Binesh.AddToHTML("V<sub>2</sub>: ?", "V")
		end
	end
end