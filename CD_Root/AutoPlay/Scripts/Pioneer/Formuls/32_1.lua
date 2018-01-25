function Binesh.F32_1()
	if VBar_Speed_mh ~= nil  then
		VBar_Speed = VBar_Speed_mh/3600
		Binesh.CreateHTMLFile("VBar<sub>m/s</sub> = <span>VBar<sub>m/h</sub>/3.6</span>", "VBar<sub>m/s</sub> = <span>"..VBar_Speed_mh.."/3.6</span>")
		Binesh.AddToHTML("VBar<sub>m/s</sub> = "..VBar_Speed.."m/s");
	end
	
	if VBar_Speed_miles ~= nil then
		VBar_Speed = VBar_Speed_miles*1609.3
		Binesh.CreateHTMLFile("VBar<sub>m/s</sub> = VBar<sub>mile/s</sub>*1609.3", "VBar<sub>m/s</sub> = "..VBar_Speed_miles.."*1609.3")
		Binesh.AddToHTML("VBar<sub>m/s></sub> = "..VBar_Speed.."m/s");
	end
	
	if VBar_Speed_mileh ~= nil then
		VBar_Speed = VBar_Speed_mileh*1609.3/3.6
		Binesh.CreateHTMLFile("VBar<sub>m/s</sub> = VBar<sub>mile/h</sub>*<span>1609.3/3.6</span>", "VBar<sub>m/s</sub> = "..VBar_Speed_miles.."*<span>1609.3/3.6</span>")
		Binesh.AddToHTML("VBar<sub>m/s></sub> = "..VBar_Speed.."m/s");
	end
	
	--------------------------{DELTA}--------------------------
	if _Deltax == nil then
		if _x1 ~= nil and _x2 ~= nil then
			Binesh.CreateHTMLFile("Deltax = x<sub>2</sub>-x<sub>1</sub>")
			_Deltax = _x2 - _x1
			Binesh.AddToHTML("Deltax = ".._x2.."-".._x1.." &#8658; Deltax = ".._Deltax.." m")
		end
	end
	
	if _x1 == nil then
		if _Deltax ~= nil and _x2 ~= nil then
			Binesh.CreateHTMLFile("Deltax = x<sub>2</sub>-x<sub>1</sub>", "x<sub>1</sub> = x<sub>2</sub>-Deltax")
			_x1 = _x2-_Deltax
			Binesh.AddToHTML("x<sub>1</sub> = ".._x2.."-".._Deltax.." &#8658; x<sub>1</sub> = ".._x1.." m")
		end
	end
	
	if _x2 == nil then
		if _Deltax ~= nil and _x1 ~= nil then
			Binesh.CreateHTMLFile("Deltax = x<sub>2</sub>-x<sub>1</sub>", "x<sub>2</sub> = Deltax+x<sub>1</sub>")
			_x2 = _x1+_Deltax
			Binesh.AddToHTML("x<sub>2</sub> = ".._Deltax.."+".._x1.." &#8658; x<sub>2</sub> = ".._x2.." m")
		end
	end
	
	if _Deltat == nil then
		if _t1 ~= nil and _t2 ~= nil then
			Binesh.CreateHTMLFile("Deltax = t<sub>2</sub>-t<sub>1</sub>")
			_Deltat = _t2 - _t1
			Binesh.AddToHTML("Deltat = ".._t2.."-".._t1.." &#8658; Deltat = ".._Deltat.." s")
		end
	end
	
	if _t1 == nil then
		if _Deltat ~= nil and _t2 ~= nil then
			Binesh.CreateHTMLFile("Deltat = t<sub>2</sub>-t<sub>1</sub>", "t<sub>1</sub> = t<sub>2</sub>-Deltat")
			_t1 = _t2-_Deltat
			Binesh.AddToHTML("t<sub>1</sub> = ".._t2.."-".._Deltat.." &#8658; t<sub>1</sub> = ".._t1.." s")
		end
	end
	
	if _t2 == nil then
		if _Deltat ~= nil and _t1 ~= nil then
			Binesh.CreateHTMLFile("Deltat = t<sub>2</sub>-t<sub>1</sub>", "t<sub>2</sub> = Deltat+t<sub>1</sub>")
			_t2 = _t1+_Deltat
			Binesh.AddToHTML("t<sub>2</sub> = ".._Deltat.."+".._t1.." &#8658; t<sub>2</sub> = ".._t2.." s")
		end
	end
	--------------------------END {DELTA}--------------------------
	if VBar_Speed == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  „ Ê”ÿ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "VBar") ~= -1 then
		if _Deltax ~= nil and _Deltat ~= nil then
			Binesh.CreateHTMLFile("VBar = <span>Deltax/Deltat</span>")
			VBar_Speed = _Deltax/_Deltat
			
			Binesh.AddToHTML("VBar = <span>".._Deltax.."/".._Deltat.."</span> &#8658; VBar = "..VBar_Speed.." m/s")
			
			Binesh.AddToHTML("Deltat: ".._Deltat.." s", "V")
			Binesh.AddToHTML("Deltax: ".._Deltax.." m", "V")
			Binesh.AddToHTML("VBar: ?", "V")
		end
	end
	
	if _Deltax == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— ›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ›«’·Â") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltax") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "x1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "x2") ~= -1) then
		if VBar_Speed ~= nil and _Deltat ~= nil then
			Binesh.CreateHTMLFile("VBar = <span>Deltax/Deltat</span>", "Deltax = VBarDeltat")
			_Deltax = VBar_Speed*_Deltat
			
			Binesh.AddToHTML("Deltax = "..VBar_Speed.."*".._Deltat.." &#8658; Deltax = ".._Deltax.." m")
			
			Binesh.AddToHTML("Deltat: ".._Deltat.." s", "V")
			Binesh.AddToHTML("VBar: "..VBar_Speed.." m/s", "V")
			Binesh.AddToHTML("Deltax: ?", "V")
		end
	end
	
	if _Deltat == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— “„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ “„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ “„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltat") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t2") ~= -1 then
		if _Deltax ~= nil and VBar_Speed ~= nil then
			Binesh.CreateHTMLFile("VBar = <span>Deltax/Deltat</span>", "Deltat = <span>Deltax/VBar</span>")
			_Deltat = _Deltax/VBar_Speed
			
			Binesh.AddToHTML("Deltat = <span>".._Deltax.."/"..VBar_Speed.."</span> &#8658; Deltat = ".._Deltat.." s")
			
			Binesh.AddToHTML("VBar: "..VBar_Speed.." m/s", "V")
			Binesh.AddToHTML("Deltax: ".._Deltax.." m", "V")
			Binesh.AddToHTML("Deltat: ?", "V")
		end
	end
end