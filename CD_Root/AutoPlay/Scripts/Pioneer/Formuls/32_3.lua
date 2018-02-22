function Binesh.F32_3()
	if _t1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ “„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰ «Ê·Ì‰") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "t1") ~= -1) then
		if VBar_Speed ~= nil and _Deltax ~= nil and _t2 ~= nil then
			Binesh.CreateHTMLFile("VBar = <span>Deltax/(t<sub>1</sub>-t<sub>2</sub>)</span>", "t<sub>1</sub> = t<sub>2</sub>- <span>Deltax/VBar</span>")
			_t1 = -(_Deltax/VBar_Speed) + _t2
			
			Binesh.AddToHTML("t<sub>1</sub> = <span>"..Binesh.ProgressNumber(-_Deltax).."/"..Binesh.ProgressNumber(VBar_Speed).."</span> +"..Binesh.ProgressNumber(_t2).." &#8658; t<sub>1</sub> = "..Binesh.ProgressNumber(_t1).." s")
			
			Binesh.AddToHTML("t<sub>2</sub> = "..Binesh.ProgressNumber(_t2).." s", "V")
			Binesh.AddToHTML("Deltax = "..Binesh.ProgressNumber(_Deltax).." m", "V")
			Binesh.AddToHTML("VBar = "..Binesh.ProgressNumber(VBar_Speed).." m/s", "V")
			Binesh.AddToHTML("t<sub>1</sub> = ?", "V")
		end
	end
	
	if _t2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ “„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰ œÊ„Ì‰") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "t2") ~= -1) then
		if VBar_Speed ~= nil and _Deltax ~= nil and _t1 ~= nil then
			Binesh.CreateHTMLFile("VBar = <span>Deltax/(t<sub>1</sub>-t<sub>2</sub>)</span>", "t<sub>2</sub> = t<sub>1</sub>+ <span>Deltax/VBar</span>")
			_t2 = (_Deltax/VBar_Speed) + _t1
			
			Binesh.AddToHTML("t<sub>2</sub> = <span>"..Binesh.ProgressNumber(_Deltax).."/"..Binesh.ProgressNumber(VBar_Speed).."</span> +"..Binesh.ProgressNumber(_t1).." &#8658; t<sub>2</sub> = "..Binesh.ProgressNumber(_t2).." s")
			
			Binesh.AddToHTML("t<sub>1</sub> = "..Binesh.ProgressNumber(_t1).." s", "V")
			Binesh.AddToHTML("Deltax = "..Binesh.ProgressNumber(_Deltax).." m", "V")
			Binesh.AddToHTML("VBar = "..Binesh.ProgressNumber(VBar_Speed).." m/s", "V")
			Binesh.AddToHTML("t<sub>2</sub> = ?", "V")
		end
	end
end