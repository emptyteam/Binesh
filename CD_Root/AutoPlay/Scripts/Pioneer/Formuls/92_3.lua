function Binesh.F92_3()
	if _U1 == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ «‰—éÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ «Ê·Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ Å «‰”Ì·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U1") ~= -1 then
		if _DeltaV_Electric ~= nil and q ~= nil and _U2 ~= nil then
			Binesh.CreateHTMLFile("DeltaV = <span>U<sub>2</sub>-U<sub>1</sub>/q</span>", "U<sub>2</sub>-U<sub>1</sub> = DeltaVq")
			Binesh.AddToHTML("U<sub>1</sub> = U<sub>2</sub>-DeltaVq &#8658; ")
			_U1 = _U2-_DeltaV_Electric*q
			Binesh.AddToHTML("U<sub>1</sub> = ".._U2.."-".._DeltaV_Electric.."*"..q.." &#8658; U<sub>1</sub> = ".._U1.." J")
			
			Binesh.AddToHTML("U<sub>2</sub>: ".._U2.." J", "V")
			Binesh.AddToHTML("DeltaV: ".._DeltaV_Electric.." V", "V")
			Binesh.AddToHTML("q: "..q.." C", "V")
			Binesh.AddToHTML("U<sub>1</sub>: ?", "V")
		end
	end
	
	if _U2 == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ «‰—éÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ œÊ„Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ Å «‰”Ì·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U2") ~= -1 then
		if _DeltaV_Electric ~= nil and q ~= nil and _U1 ~= nil then
			Binesh.CreateHTMLFile("DeltaV = <span>U<sub>2</sub>-U<sub>1</sub>/q</span>", "U<sub>2</sub>-U<sub>1</sub> = DeltaVq")
			Binesh.AddToHTML("U<sub>2</sub> = U<sub>1</sub>+DeltaVq &#8658; ")
			_U2 = _U1+_DeltaV_Electric*q
			Binesh.AddToHTML("U<sub>2</sub> = ".._U1.."+".._DeltaV_Electric.."*"..q.." &#8658; U<sub>2</sub> = ".._U2.." J")
			
			Binesh.AddToHTML("U<sub>1</sub>: ".._U1.." J", "V")
			Binesh.AddToHTML("DeltaV: ".._DeltaV_Electric.." V", "V")
			Binesh.AddToHTML("q: "..q.." C", "V")
			Binesh.AddToHTML("U<sub>2</sub>: ?", "V")
		end
	end
end