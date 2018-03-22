function Binesh.F93_2_2()
	if ListBox.FindItem("Words", -1, LB_BYTEXT, "„€‰«ÿÌ”Ì") == -1 then
		if _V1_Electric == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1)) then
			if E_Electric ~= nil and d ~= nil and Teta ~= nil and _V2_Electric ~= nil then
				Binesh.CreateHTMLFile("V<sub>2</sub>-V<sub>1</sub> = -EdCosTeta", "V<sub>1</sub> = V<sub>2</sub>+EdCosTeta")
				_V1_Electric = _V2_Electric+E_Electric*d*Math.Cos(Math.Rad(Teta))
				Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V2_Electric).."+"..Binesh.ProgressNumber(E_Electric).."*"..Binesh.ProgressNumber(d).."*Cos"..Binesh.ProgressNumber(Teta).." &#8658; V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Electric).." V")
				
				Binesh.AddToHTML("V<sub>2</sub> = "..Binesh.ProgressNumber(_V2_Electric).." V", "V")
				Binesh.AddToHTML("E = "..Binesh.ProgressNumber(E_Electric).." N/C", "V")
				Binesh.AddToHTML("d = "..Binesh.ProgressNumber(d).." m", "V")
				Binesh.AddToHTML("Teta = "..Binesh.ProgressNumber(Teta).." <sup>o</sup>", "V")
				Binesh.AddToHTML("V<sub>1</sub> = ?", "V")
			end
		end
		
		if _V2_Electric == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V2") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1)) then
			if E_Electric ~= nil and d ~= nil and Teta ~= nil and _V1_Electric ~= nil then
				Binesh.CreateHTMLFile("V<sub>2</sub>-V<sub>1</sub> = -EdCosTeta", "V<sub>2</sub> = V<sub>1</sub>-EdCosTeta")
				_V2_Electric = _V1_Electric+E_Electric*d*Math.Cos(Math.Rad(Teta))
				Binesh.AddToHTML("V<sub>2</sub> = "..Binesh.ProgressNumber(_V1_Electric).."-"..Binesh.ProgressNumber(E_Electric).."*"..Binesh.ProgressNumber(d).."*Cos"..Binesh.ProgressNumber(Teta).." &#8658; V<sub>2</sub> = "..Binesh.ProgressNumber(_V2_Electric).." V")
				
				Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.ProgressNumber(_V1_Electric).." V", "V")
				Binesh.AddToHTML("E = "..Binesh.ProgressNumber(E_Electric).." N/C", "V")
				Binesh.AddToHTML("d = "..Binesh.ProgressNumber(d).." m", "V")
				Binesh.AddToHTML("Teta = "..Binesh.ProgressNumber(Teta).." <sup>o</sup>", "V")
				Binesh.AddToHTML("V<sub>2</sub> = ?", "V")
			end
		end
	end
end