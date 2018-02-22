function Binesh.F37()
	if VBar_Speed == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  „ Ê”ÿ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "VBar") ~= -1) then
		if _V1_Speed ~= nil and _V2_Speed ~= nil then
			Binesh.CreateHTMLFile("VBar = <span>V<sub>1</sub>+V<sub>2</sub>/2</span>")
			VBar_Speed = (_V1_Speed+_V2_Speed)/2
		
			Binesh.AddToHTML("VBar = <span>"..Binesh.ProgressNumber(_V1_Speed).."+"..Binesh.ProgressNumber(_V2_Speed).."/2</span> &#8658; VBar = "..Binesh.ProgressNumber(VBar_Speed).." m/s")
			
			Binesh.AddToHTML("V<sun>2</sub> = "..Binesh.ProgressNumber(_V2_Speed).." m/s", "V")
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s", "V")
			Binesh.AddToHTML("VBar = ?", "V")
		end
	end
	
	if _V1_Speed == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1)) then
		if VBar_Speed ~= nil and _V2_Speed ~= nil then
			Binesh.CreateHTMLFile("VBar = <span>V<sub>1</sub>+V<sub>2</sub>/2</span>", "V<sub>1</sub> = 2VBar-V<sub>2</sub>")
			_V1_Speed = 2*VBar_Speed - _V2_Speed
	
			Binesh.AddToHTML("V<sub>1</sub> = 2*"..Binesh.ProgressNumber(VBar_Speed).."-"..Binesh.ProgressNumber(_V2_Speed).." &#8658; V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s")
			
			Binesh.AddToHTML("V<sun>2</sub> = "..Binesh.ProgressNumber(_V2_Speed).." m/s", "V")
			Binesh.AddToHTML("VBar = "..Binesh.ProgressNumber(VBar_Speed).." m/s", "V")
			Binesh.AddToHTML("V<sub>1</sub> = ?", "V")
		end
	end
	
	if _V2_Speed == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V2") ~= -1)) then
		if VBar_Speed ~= nil and _V1_Speed ~= nil then
			Binesh.CreateHTMLFile("VBar = <span>V<sub>1</sub>+V<sub>2</sub>/2</span>", "V<sub>2</sub> = 2*VBar-V<sub>1</sub>")
			
			_V2_Speed = 2*VBar_Speed - _V1_Speed
			
			Binesh.AddToHTML("V<sub>2</sub> = 2*"..Binesh.ProgressNumber(VBar_Speed).."-"..Binesh.ProgressNumber(_V1_Speed).." &#8658; V<sub>2</sub> = "..Binesh.ProgressNumber(_V2_Speed).." m/s")
			
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Speed).." m/s", "V")
			Binesh.AddToHTML("VBar = "..Binesh.ProgressNumber(VBar_Speed).." m/s", "V")
			Binesh.AddToHTML("V<sun>2</sub> = ?", "V")
		end
	end
end