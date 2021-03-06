function Binesh.F135_1()
	--------------------------{DELTA}--------------------------
	if _DeltaFi == nil then
		if _Fi1 ~= nil and _Fi2 ~= nil then
			Binesh.CreateHTMLFile("DeltaFi = Fi<sub>2</sub>-Fi<sub>1</sub>")
			_DeltaFi = _Fi2 - _Fi1
			Binesh.AddToHTML("DeltaFi = "..Binesh.ProgressNumber(_Fi2).."-"..Binesh.ProgressNumber(_Fi1).." &#8658; DeltaFi = "..Binesh.ProgressNumber(_DeltaFi).." Wb")
		end
	end
	
	if _Fi1 == nil then
		if _DeltaFi ~= nil and _Fi2 ~= nil then
			Binesh.CreateHTMLFile("DeltaFi = Fi<sub>2</sub>-Fi<sub>1</sub>", "Fi<sub>1</sub> = Fi<sub>2</sub>-DeltaFi")
			_Fi1 = _Fi2-_DeltaFi
			Binesh.AddToHTML("Fi<sub>1</sub> = "..Binesh.ProgressNumber(_Fi2).."-"..Binesh.ProgressNumber(_DeltaFi).." &#8658; Fi<sub>1</sub> = "..Binesh.ProgressNumber(_Fi1).." Wb")
		end
	end
	
	if _Fi2 == nil then
		if _DeltaFi ~= nil and _Fi1 ~= nil then
			Binesh.CreateHTMLFile("DeltaFi = Fi<sub>2</sub>-Fi<sub>1</sub>", "Fi<sub>2</sub> = DeltaFi+Fi<sub>1</sub>")
			_Fi2 = _Fi1+_DeltaFi
			Binesh.AddToHTML("Fi<sub>2</sub> = "..Binesh.ProgressNumber(_DeltaFi).."+"..Binesh.ProgressNumber(_Fi1).." &#8658; Fi<sub>2</sub> = "..Binesh.ProgressNumber(_Fi2).." Wb")
		end
	end
	--------------------------END {DELTA}--------------------------
	if Epsilon == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "���� ��ј�") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Epsilon") ~= -1) then
		if N_Ring ~= nil and _DeltaFi ~= nil and _Deltat ~= nil then
			Binesh.CreateHTMLFile("Epsilon = -N<span>DeltaFi/Deltat</span>")
			Epsilon = -N_Ring*(_DeltaFi/_Deltat)
			
			Binesh.AddToHTML("Epsilon = -("..Binesh.ProgressNumber(N_Ring)..")<span>"..Binesh.ProgressNumber(_DeltaFi).."/"..Binesh.ProgressNumber(_Deltat).."</span> &#8658; Epsilon = "..Binesh.ProgressNumber(Epsilon).." V")
			
			Binesh.AddToHTML("N = "..Binesh.ProgressNumber(N_Ring), "V")
			Binesh.AddToHTML("DeltaFi = "..Binesh.ProgressNumber(_DeltaFi).." Wb", "V")
			Binesh.AddToHTML("Deltat = "..Binesh.ProgressNumber(_Deltat).." s", "V")
			Binesh.AddToHTML("Epsilon = ?", "V")
		end
	end
	
	if N_Ring == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1) then
		if Epsilon ~= nil and _Deltat ~= nil and _DeltaFi ~= nil then
			Binesh.CreateHTMLFile("Epsilon = -N<span>DeltaFi/Deltat</span>", "N = - <span>EpsilonDeltat/DeltaFi</span>")
			N_Ring = -(Epsilon*_Deltat/_DeltaFi)
			
			Binesh.AddToHTML("N = -(<span>"..Binesh.ProgressNumber(Epsilon).."*"..Binesh.ProgressNumber(_Deltat).."/"..Binesh.ProgressNumber(_DeltaFi).."</span>) &#8658; N = "..Binesh.ProgressNumber(N_Ring))
			
			Binesh.AddToHTML("Epsilon = "..Binesh.ProgressNumber(Epsilon).." V", "V")
			Binesh.AddToHTML("Deltat = "..Binesh.ProgressNumber(_Deltat).." s", "V")
			Binesh.AddToHTML("DeltaFi = "..Binesh.ProgressNumber(_DeltaFi).." Wb", "V")
			Binesh.AddToHTML("N = ?", "V")
		end
	end
	
	if _DeltaFi == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "��� �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaFi") ~= -1)) then
		if Epsilon ~= nil and N_Ring ~= nil and _Deltat ~= nil then
			Binesh.CreateHTMLFile("Epsilon = -N<span>DeltaFi/Deltat</span>", "DeltaFi = <span>EpsilonDeltat/-N</span>")
			_DeltaFi = Epsilon*_Deltat/(-N_Ring)
			
			Binesh.AddToHTML("DeltaFi = <span>"..Binesh.ProgressNumber(Epsilon).."*"..Binesh.ProgressNumber(_Deltat).."/-("..Binesh.ProgressNumber(N_Ring)..")</span> &#8658; DeltaFi = "..Binesh.ProgressNumber(_DeltaFi).." Wb")
			
			Binesh.AddToHTML("Epsilon = "..Binesh.ProgressNumber(Epsilon).." V", "V")
			Binesh.AddToHTML("Deltat = "..Binesh.ProgressNumber(_Deltat).." s", "V")
			Binesh.AddToHTML("N = "..Binesh.ProgressNumber(N_Ring), "V")
			Binesh.AddToHTML("DeltaFi = ?", "V")
		end
	end
	
	if _Deltat == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "���� �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltat") ~= -1)) then
		if Epsilon ~= nil and N_Ring ~= nil and _DeltaFi ~= nil then
			Binesh.CreateHTMLFile("Epsilon = -N<span>DeltaFi/Deltat</span>", "Deltat = -N<span>DeltaFi/Epsilon</span>")
			_Deltat = -N_Ring*(_DeltaFi/Epsilon)
			
			Binesh.AddToHTML("Deltat = -("..Binesh.ProgressNumber(N_Ring)..")<span>"..Binesh.ProgressNumber(_DeltaFi).."/"..Binesh.ProgressNumber(Epsilon).."</span> &#8658; Deltat = "..Binesh.ProgressNumber(_Deltat).." s")
			
			Binesh.AddToHTML("N = "..Binesh.ProgressNumber(N_Ring), "V")
			Binesh.AddToHTML("DeltaFi = "..Binesh.ProgressNumber(_DeltaFi).." Wb", "V")
			Binesh.AddToHTML("Epsilon = "..Binesh.ProgressNumber(Epsilon).." V", "V")
			Binesh.AddToHTML("Deltat = ?", "V")
		end
	end
end