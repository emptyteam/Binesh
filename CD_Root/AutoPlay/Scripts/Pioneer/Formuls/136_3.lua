function Binesh.F136_3()
	if _Fi1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "��� �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Fi1") ~= -1)) then
		if N_Round ~= nil and _Deltaq ~= nil and R ~= nil and _Fi2 ~= nil then
			Binesh.CreateHTMLFile("Deltaq = <span>N/R</span>Fi<sub>2</sub>-Fi<sub>1</sub>", "Fi<sub>2</sub>-Fi<sub>1</sub> = <span>RDeltaq/N</span>")
			Binesh.AddToHTML("Fi<sub>1</sub> = Fi<sub>2</sub>- <span>RDeltaq/N</span> &#8658; ")
			
			_Fi1 = _Fi2-(_Deltaq*R)/N_Round
			
			Binesh.AddToHTML("Fi<sub>1</sub> = "..Binesh.Convert_e(_Fi2).."- <span>"..Binesh.Convert_e(_Deltaq).."*"..Binesh.Convert_e(R).."/"..Binesh.Convert_e(N_Round).."</span> &#8658; Fi<sub>1</sub> = "..Binesh.Convert_e(_Fi1).." Wb")
			
			Binesh.AddToHTML("Fi<sub>2</sub>: "..Binesh.Convert_e(_Fi2).." Wb", "V")
			Binesh.AddToHTML("Deltaq: "..Binesh.Convert_e(_Deltaq).." C", "V")
			Binesh.AddToHTML("R: "..Binesh.Convert_e(R).." Ohm", "V")
			Binesh.AddToHTML("N: "..Binesh.Convert_e(N_Round), "V")
			Binesh.AddToHTML("Fi<sub>1</sub>: ?", "V")
		end
	end
	
	if _Fi2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "��� �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Fi2") ~= -1)) then
		if N_Round ~= nil and _Deltaq ~= nil and R ~= nil and _Fi1 ~= nil then
			Binesh.CreateHTMLFile("Deltaq = <span>N/R</span>Fi<sub>2</sub>-Fi<sub>1</sub>", "Fi<sub>2</sub>-Fi<sub>1</sub> = <span>RDeltaq/N</span>")
			Binesh.AddToHTML("Fi<sub>2</sub> = Fi<sub>1</sub>+ <span>RDeltaq/N</span> &#8658; ")
			
			_Fi2 = _Fi1+(_Deltaq*R)/N_Round
			
			Binesh.AddToHTML("Fi<sub>2</sub> = "..Binesh.Convert_e(_Fi1).."+ <span>"..Binesh.Convert_e(_Deltaq).."*"..Binesh.Convert_e(R).."/"..Binesh.Convert_e(N_Round).."</span> &#8658; Fi<sub>2</sub> = "..Binesh.Convert_e(_Fi2).." Wb")
			
			Binesh.AddToHTML("Fi<sub>1</sub>: "..Binesh.Convert_e(_Fi1).." Wb", "V")
			Binesh.AddToHTML("Deltaq: "..Binesh.Convert_e(_Deltaq).." C", "V")
			Binesh.AddToHTML("R: "..Binesh.Convert_e(R).." Ohm", "V")
			Binesh.AddToHTML("N: "..Binesh.Convert_e(N_Round), "V")
			Binesh.AddToHTML("Fi<sub>2</sub>: ?", "V")
		end
	end
end