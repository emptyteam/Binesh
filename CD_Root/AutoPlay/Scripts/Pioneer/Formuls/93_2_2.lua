function Binesh.F93_2_2()
	if _V1_Electric == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "���ǎ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���ǎ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "���ǎ �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1)) then
		if E_Electric ~= nil and d ~= nil and Teta ~= nil and _V2_Electric ~= nil then
			Binesh.CreateHTMLFile("V<sub>2</sub>-V<sub>1</sub> = -EdcosTeta", "V<sub>1</sub> = V<sub>2</sub>+EdcosTeta")
			_V1_Electric = _V2_Electric+E_Electric*d*Math.Cos(Math.Rad(Teta))
			Binesh.AddToHTML("V<sub>1</sub> = "..Binesh.Convert_e(_V2_Electric).."+"..Binesh.Convert_e(E_Electric).."*"..Binesh.Convert_e(d).."*cos"..Binesh.Convert_e(Teta).." &#8658; V<sub>1</sub> = "..Binesh.Convert_e(_V1_Electric).." V")
			
			Binesh.AddToHTML("V<sub>2</sub>: "..Binesh.Convert_e(_V2_Electric).." V", "V")
			Binesh.AddToHTML("E: "..Binesh.Convert_e(E_Electric).." N/C", "V")
			Binesh.AddToHTML("d: "..Binesh.Convert_e(d).." m", "V")
			Binesh.AddToHTML("Teta: "..Binesh.Convert_e(Teta).." <sup>o</sup>", "V")
			Binesh.AddToHTML("V<sub>1</sub>: ?", "V")
		end
	end
	
	if _V2_Electric == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "���ǎ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���ǎ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "���ǎ �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V2") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1)) then
		if E_Electric ~= nil and d ~= nil and Teta ~= nil and _V1_Electric ~= nil then
			Binesh.CreateHTMLFile("V<sub>2</sub>-V<sub>1</sub> = -EdcosTeta", "V<sub>2</sub> = V<sub>1</sub>-EdcosTeta")
			_V2_Electric = _V1_Electric+E_Electric*d*Math.Cos(Math.Rad(Teta))
			Binesh.AddToHTML("V<sub>2</sub> = "..Binesh.Convert_e(_V1_Electric).."-"..Binesh.Convert_e(E_Electric).."*"..Binesh.Convert_e(d).."*cos"..Binesh.Convert_e(Teta).." &#8658; V<sub>2</sub> = "..Binesh.Convert_e(_V2_Electric).." V")
			
			Binesh.AddToHTML("V<sub>1</sub>: "..Binesh.Convert_e(_V1_Electric).." V", "V")
			Binesh.AddToHTML("E: "..Binesh.Convert_e(E_Electric).." N/C", "V")
			Binesh.AddToHTML("d: "..Binesh.Convert_e(d).." m", "V")
			Binesh.AddToHTML("Teta: "..Binesh.Convert_e(Teta).." <sup>o</sup>", "V")
			Binesh.AddToHTML("V<sub>2</sub>: ?", "V")
		end
	end
end