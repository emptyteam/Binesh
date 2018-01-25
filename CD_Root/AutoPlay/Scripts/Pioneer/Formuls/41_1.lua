function Binesh.F41_1()
	if _Deltax == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— ›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â  €ÌÌ—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltax") ~= -1 then
		if a ~= nil and V0_Speed ~= nil then
			Binesh.CreateHTMLFile("Deltax = <span>V<sub>0</sub><sup>2</sup>/2a</span>")
		    _Deltax = (V0_Speed^2)/(2*a)
		    
			Binesh.AddToHTML("Deltax = <span>"..V0_Speed.."<sup>2</sup>/2*"..a.."</span> &#8658; Deltax = ".._Deltax.." m")
			
			Binesh.AddToHTML("V<sub>0</sub>: "..V0_Speed.." m/s", "V")
			Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("Deltax: ?", "V")
		end
	end
	
	if V0_Speed == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  «Ê·Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V0") ~= -1 then 
		if a ~= nil and _Deltax ~= nil then
			Binesh.CreateHTMLFile("Deltax = <span>V<sub>0</sub><sup>2</sup>/2a</span>", " V<sub>0</sub> = sqrt(2aDeltax)")
			V0_Speed = Math.Sqrt(2*a*_Deltax);
			
			Binesh.AddToHTML("V<sub>0</sub> = sqrt(2*"..a.."*".._Deltax..")</span> &#8658; V<sub>0</sub> = "..V0_Speed.." m/s")
			
			Binesh.AddToHTML("Deltax: ".._Deltax.." m", "V")
			Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("V<sub>0</sub>: ?", "V")
		end
	end
	
	if a == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "‘ «»") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "a") ~= -1 then
		if V0_Speed ~= nil and _Deltax ~= nil then
			Binesh.CreateHTMLFile("Deltax = <span>V<sub>0</sub><sup>2</sup>/2a</span>", "a = <span>V<sub>0</sub><sup>2</sup>/2Deltax</span>")
			a = V0_Speed^2/(2*_Deltax)
			
			Binesh.AddToHTML("a = <span>"..V0_Speed.."<sup>2</sup>/2*".._Deltax.."</span> &#8658; a = "..a.." m/s<sup>2</sup>")
			
			Binesh.AddToHTML("Deltax: ".._Deltax.." m", "V")
			Binesh.AddToHTML("V<sub>0</sub>: "..V0_Speed.." m/s", "V")
			Binesh.AddToHTML("a: ?", "V")
		end
	end
end