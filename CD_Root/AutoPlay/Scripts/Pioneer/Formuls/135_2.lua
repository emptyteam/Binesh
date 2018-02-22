function Binesh.F135_2()
	if _Fi1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "‘«— «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Fi1") ~= -1)) then
		if Epsilon ~= nil and N_Ring ~= nil and _Deltat ~= nil and _Fi2 ~= nil then
			Binesh.CreateHTMLFile("Epsilon = -N<span>Fi<sub>2</sub>-Fi<sub>1</sub>/Deltat</span>", "Fi<sub>2</sub>-Fi<sub>1</sub> = <span>EpsilonDeltat/-N</span>")
			Binesh.AddToHTML("Fi<sub>1</sub> = Fi<sub>2</sub>+ <span>EpsilonDeltat/N</span> &#8658; ")
			
			_Fi1 = _Fi2+(Epsilon*_Deltat/N_Ring)
			
			Binesh.AddToHTML("Fi<sub>1</sub> = "..Binesh.ProgressNumber(_Fi2).."+ <span>"..Binesh.ProgressNumber(Epsilon).."*"..Binesh.ProgressNumber(_Deltat).."/"..Binesh.ProgressNumber(N_Ring).."</span> &#8658; Fi<sub>1</sub> = "..Binesh.ProgressNumber(_Fi1).." Wb")
			
			Binesh.AddToHTML("Fi<sub>2</sub> = "..Binesh.ProgressNumber(_Fi2).." Wb", "V")
			Binesh.AddToHTML("Epsilon = "..Binesh.ProgressNumber(Epsilon).." V", "V")
			Binesh.AddToHTML("Deltat = "..Binesh.ProgressNumber(_Deltat).." s", "V")
			Binesh.AddToHTML("N = "..Binesh.ProgressNumber(N_Ring), "V")
			Binesh.AddToHTML("Fi<sub>1</sub> = ?", "V")
		end
	end
	
	if _Fi2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "‘«— œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Fi2") ~= -1)) then
		if Epsilon ~= nil and N_Ring ~= nil and _Deltat ~= nil and _Fi1 ~= nil then
			Binesh.CreateHTMLFile("Epsilon = -N<span>Fi<sub>2</sub>-Fi<sub>1</sub>/Deltat</span>", "Fi<sub>2</sub>-Fi<sub>1</sub> = <span>EpsilonDeltat/-N</span>")
			Binesh.AddToHTML("Fi<sub>2</sub> = Fi<sub>1</sub>+ <span>EpsilonDeltat/-N</span> &#8658; ")
			
			_Fi2 = _Fi1+(Epsilon*_Deltat/(-N_Ring))
			
			Binesh.AddToHTML("Fi<sub>2</sub> = "..Binesh.ProgressNumber(_Fi1).."+ <span>"..Binesh.ProgressNumber(Epsilon).."*"..Binesh.ProgressNumber(_Deltat).."/-("..Binesh.ProgressNumber(N_Ring)..")</span> &#8658; Fi<sub>2</sub> = "..Binesh.ProgressNumber(_Fi2).." Wb")
			
			Binesh.AddToHTML("Fi<sub>1</sub> = "..Binesh.ProgressNumber(_Fi1).." Wb", "V")
			Binesh.AddToHTML("Epsilon = "..Binesh.ProgressNumber(Epsilon).." V", "V")
			Binesh.AddToHTML("Deltat = "..Binesh.ProgressNumber(_Deltat).." s", "V")
			Binesh.AddToHTML("N = "..Binesh.ProgressNumber(N_Ring), "V")
			Binesh.AddToHTML("Fi<sub>2</sub> = ?", "V")
		end
	end
end