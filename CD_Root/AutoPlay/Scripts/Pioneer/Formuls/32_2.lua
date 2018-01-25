function Binesh.F32_2()
	if _x1 == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â «Ê·Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "x1") ~= -1 then
		if VBar_Speed ~= nil and _Deltat ~= nil and _x2 ~= nil then
			Binesh.CreateHTMLFile("VBar = <span>(x<sub>2</sub>-x<sub>1</sub>)/Deltat</span>", "x<sub>1</sub> = -VBarDeltat+x<sub>2</sub>")
			_x1 = -(VBar_Speed*_Deltat)+_x2
			
			Binesh.AddToHTML("x<sub>1</sub> = "..-VBar_Speed.."*".._Deltat.."+".._x2.." &#8658; x<sub>1</sub> = ".._x1.." m")
			
			Binesh.AddToHTML("Deltat: ".._Deltat.." s", "V")
			Binesh.AddToHTML("VBar: "..VBar_Speed.." m/s", "V")
			Binesh.AddToHTML("x<sub>2</sub>: ".._x2.." m", "V")
			Binesh.AddToHTML("x<sub>1</sub>: ?", "V")
		end
	end
	
	if _x2 == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â œÊ„Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "x2") ~= -1 then
		if VBar_Speed ~= nil and _Deltat ~= nil and _x1 ~= nil then
			Binesh.CreateHTMLFile("VBar = <span>(x<sub>2</sub>-x<sub>2</sub>)/Deltat</span>", "x<sub>2</sub> = VBarDeltat+x<sub>1</sub>")
			_x2 = (VBar_Speed*_Deltat)+_x1
			
			Binesh.AddToHTML("x<sub>2</sub> = "..VBar_Speed.."*".._Deltat.."+".._x1.." &#8658; x<sub>2</sub> = ".._x2.." m")
			
			Binesh.AddToHTML("Deltat: ".._Deltat.." s", "V")
			Binesh.AddToHTML("VBar: "..VBar_Speed.." m/s", "V")
			Binesh.AddToHTML("x<sub>1</sub>: ".._x1.." m", "V")
			Binesh.AddToHTML("x<sub>2</sub>: ?", "V")
		end
	end
end