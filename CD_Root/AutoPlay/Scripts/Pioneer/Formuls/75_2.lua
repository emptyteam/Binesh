function Binesh.F75_2()
	if _U1_In == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ «‰—éÌ œ—Ê‰Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ œ—Ê‰Ì «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "U1") ~= -1)) then
		if Q ~= nil and W ~= nil and _U2_In ~= nil then
			Binesh.CreateHTMLFile("U<sub>2</sub>-U<sub>1</sub> = Q+W", "U<sub>1</sub> = -(Q+W)+U<sub>2</sub>")
			_U1_In = -(Q+W)+_U2_In
			
			Binesh.AddToHTML("Q: "..Q.." J", "V")
			Binesh.AddToHTML("W: "..W.." J", "V")
			Binesh.AddToHTML("U<sub>2</sub>: ".._U2_In.." J", "V")
			Binesh.AddToHTML("U<sub>1</sub>: ?", "V")
			
			Binesh.AddToHTML("U<sub>1</sub> = -("..Q.."+"..W..")+".._U2_In.." &#8658; U<sub>1</sub> = ".._U1_In.." J")
		end
	end
	
	if _U2_In == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ «‰—éÌ œ—Ê‰Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ œ—Ê‰Ì œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "U2") ~= -1)) then
		if Q ~= nil and W ~= nil and _U1_In ~= nil then
			Binesh.CreateHTMLFile("U<sub>2</sub>-U<sub>1</sub> = Q+W", "U<sub>2</sub> = Q+W+U<sub>1</sub>")
			_U2_In = Q+W+_U1_In
			
			Binesh.AddToHTML("Q: "..Q.." J", "V")
			Binesh.AddToHTML("W: "..W.." J", "V")
			Binesh.AddToHTML("U<sub>1</sub>: ".._U2_In.." J", "V")
			Binesh.AddToHTML("U<sub>2</sub>: ?", "V")
			
			Binesh.AddToHTML("U<sub>2</sub> = "..Q.."+"..W.."+".._U1_In.." &#8658; U<sub>2</sub> = ".._U2_In.." J")
		end
	end
end