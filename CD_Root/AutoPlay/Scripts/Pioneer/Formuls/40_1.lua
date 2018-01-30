function Binesh.F40_1()
	if V_Speed == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1)) then 
		if V0_Speed ~= nil and a ~= nil and _Deltax ~= nil then
			Binesh.CreateHTMLFile("V<sup>2</sup>-V<sub>0</sub><sup>2</sup> = 2aDeltax", "V = Sqrt(<span>2aDeltax/V<sub>0</sub><sup>2</sup></span>)")
			V_Speed = Math.Sqrt((2*a*_Deltax)/V0_Speed^2);
			
			Binesh.AddToHTML("V = sqrt(<span>2*"..a.."*".._Deltax..")/"..V0_Speed.."<sup>2</sup></span>) &#8658; V = "..V_Speed.." m/s")
			
			Binesh.AddToHTML("V<sub>0</sub>: "..V0_Speed.." m/s", "V")
			Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("Deltax: ".._Deltax.." m", "V")
			Binesh.AddToHTML("V: ?", "V")
		end
	end
	
	if V0_Speed == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V0") ~= -1)) then 
		if V_Speed ~= nil and a ~= nil and _Deltax ~= nil then
			Binesh.CreateHTMLFile("V<sup>2</sup>-V<sub>0</sub><sup>2</sup> = 2aDeltax", "V<sub>0</sub><sup>2</sup> = Sqrt(<span>2aDeltax/V<sup>2</sup></span>)")
			V0_Speed = Math.Sqrt((2*a*_Deltax)/V_Speed^2);
			
			Binesh.AddToHTML("V<sub>0</sub> = sqrt(<span>2*"..a.."*".._Deltax.."/"..V_Speed.."<sup>2</sup></span>) &#8658; V<sub>0</sub> = "..V0_Speed.." m/s")
			
			Binesh.AddToHTML("V: "..V_Speed.." m/s", "V")
			Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("Deltax: ".._Deltax.." m", "V")
			Binesh.AddToHTML("V<sub>0</sub>: ?", "V")
		end
	end
	
	if a == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "‘ «»") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "a") ~= -1) then
		if V_Speed ~= nil and V0_Speed ~= nil and _Deltax ~= nil then
			Binesh.CreateHTMLFile("V<sup>2</sup>-V<sub>0</sub><sup>2</sup> = 2aDeltax", "a = <span>V<sup>2</sup>-V<sub>0</sub><sup>2</sup>/2Deltax</span>")
			a = ((V_Speed^2)-(V0_Speed^2))/(2*_Deltax)
			
			Binesh.AddToHTML("a = <span>"..V_Speed.."<sup>2</sup>-"..V0_Speed.."<sup>2</sup>/2*".._Deltax.."</span> &#8658; a = "..a.." m/s<sup>2</sup>")
			
			Binesh.AddToHTML("V: "..V_Speed.." m/s", "V")
			Binesh.AddToHTML("V<sub>0</sub>: "..V0_Speed.." m/s", "V")
			Binesh.AddToHTML("Deltax: ".._Deltax.." m", "V")
			Binesh.AddToHTML("a: ?", "V")
		end
	end
	
	if _Deltax == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— ›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltax") ~= -1)) then
		if V_Speed ~= nil and V0_Speed ~= nil and a ~= nil then
			Binesh.CreateHTMLFile("V<sup>2</sup>-V<sub>0</sub><sup>2</sup> = 2aDeltax", "Deltax = <span>V<sup>2</sup>-V<sub>0</sub><sup>2</sup>/2a</span>")
		    _Deltax = ((V_Speed^2) - (V0_Speed^2)) / (2*a)
		    
			Binesh.AddToHTML("Deltax = <span>"..V_Speed.."<sup>2</sup>-"..V0_Speed.."<sup>2</sup>/2*"..a.."</span> &#8658; Deltax = ".._Deltax.." m")
			
			Binesh.AddToHTML("V: "..V_Speed.." m/s", "V")
			Binesh.AddToHTML("V<sub>0</sub>: "..V0_Speed, "V")
			Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("Deltax: ?", "V")
		end
	end
end