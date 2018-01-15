function Binesh.F93_2_2()
	if _V1_Electric == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é «Ê·Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
		if E_Electric ~= nil and d ~= nil and Teta ~= nil and _V2_Electric ~= nil then
			Binesh.CreateHTMLFile("V<sub>2</sub>-V<sub>1</sub> = -EdcosTeta", "V<sub>1</sub> = V<sub>2</sub>+EdcosTeta")
			_V1_Electric = _V2_Electric+E_Electric*d*Math.Cos(Math.Rad(Teta))
			Binesh.AddToHTML("V<sub>1</sub> = ".._V2_Electric.."+"..E_Electric.."*"..d.."*cos"..Teta.." &#8658; V<sub>1</sub> = ".._V1_Electric.." V")
			
			Binesh.AddToHTML("V<sub>2</sub>: ".._V2_Electric.." V", "V")
			Binesh.AddToHTML("E: "..E_Electric.." N/C", "V")
			Binesh.AddToHTML("d: "..d.." m", "V")
			Binesh.AddToHTML("Teta: "..Teta.." <sup>o</sup>", "V")
			Binesh.AddToHTML("V<sub>1</sub>: ?", "V")
		end
	end
	
	if _V2_Electric == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é œÊ„Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V2") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
		if E_Electric ~= nil and d ~= nil and Teta ~= nil and _V1_Electric ~= nil then
			Binesh.CreateHTMLFile("V<sub>2</sub>-V<sub>1</sub> = -EdcosTeta", "V<sub>2</sub> = V<sub>1</sub>-EdcosTeta")
			_V2_Electric = _V1_Electric+E_Electric*d*Math.Cos(Math.Rad(Teta))
			Binesh.AddToHTML("V<sub>2</sub> = ".._V1_Electric.."-"..E_Electric.."*"..d.."*cos"..Teta.." &#8658; V<sub>2</sub> = ".._V2_Electric.." V")
			
			Binesh.AddToHTML("V<sub>1</sub>: ".._V1_Electric.." V", "V")
			Binesh.AddToHTML("E: "..E_Electric.." N/C", "V")
			Binesh.AddToHTML("d: "..d.." m", "V")
			Binesh.AddToHTML("Teta: "..Teta.." <sup>o</sup>", "V")
			Binesh.AddToHTML("V<sub>2</sub>: ?", "V")
		end
	end
end