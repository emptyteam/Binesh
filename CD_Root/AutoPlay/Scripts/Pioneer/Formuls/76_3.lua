function Binesh.F76_3()
	if _U1_In == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ «‰—éÌ œ—Ê‰Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ œ—Ê‰Ì «Ê·Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U1") ~= -1 then
		if _DeltaT ~= nil and n ~= nil and C_V ~= nil and _U2_In ~= nil then
			Binesh.CreateHTMLFile("U<sub>2</sub>-U<sub>1</sub> = nC<sub>V</sub>DeltaT", "U<sub>1</sub> = U<sub>2</sub>-nC<sub>V</sub>DeltaT")
			_U1_In = _U2_In+(-n*C_V*_DeltaT)
			
			Binesh.AddToHTML("U<sub>2</sub>: ".._U2_In.." J", "V")
			Binesh.AddToHTML("n: "..n.." mol", "V")
			Binesh.AddToHTML("C<sub>V</sub>: "..C_V.." J/mol.K", "V")
			Binesh.AddToHTML("DeltaT: ".._DeltaT.."<sup>o</sup>K", "V")
			Binesh.AddToHTML("U<sub>1</sub>: ?", "V")
			
			Binesh.AddToHTML("U<sub>1</sub> = ".._U2_In.."-"..n.."*"..C_V.."*".._DeltaT.." &#8658; U<sub>1</sub> = ".._U1_In.." J")
		end
	end
	
	if _U2_In == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ «‰—éÌ œ—Ê‰Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ œ—Ê‰Ì œÊ„Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U2") ~= -1 then
		if _DeltaT ~= nil and n ~= nil and C_V ~= nil and _U1_In ~= nil then
			Binesh.CreateHTMLFile("U<sub>2</sub>-U<sub>1</sub> = nC<sub>V</sub>DeltaT", "U<sub>2</sub> = U<sub>1</sub>+nC<sub>V</sub>DeltaT")
			_U2_In = _U1_In+(n*C_V*_DeltaT)
			
			Binesh.AddToHTML("U<sub>1</sub>: ".._U1_In.." J", "V")
			Binesh.AddToHTML("n: "..n.." mol", "V")
			Binesh.AddToHTML("C<sub>V</sub>: "..C_V.." J/mol.K", "V")
			Binesh.AddToHTML("DeltaT: ".._DeltaT.."<sup>o</sup>K", "V")
			Binesh.AddToHTML("U<sub>2</sub>: ?", "V")
			
			Binesh.AddToHTML("U<sub>2</sub> = ".._U1_In.."+"..n.."*"..C_V.."*".._DeltaT.." &#8658; U<sub>2</sub> = ".._U2_In.." J")
		end
	end
end