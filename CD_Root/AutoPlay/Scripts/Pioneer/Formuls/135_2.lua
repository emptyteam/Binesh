function Binesh.F135_2()
	if _Fi1 == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "��� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Fi1") ~= -1 then
		if Epsilon ~= nil and N_Round ~= nil and _Deltat ~= nil and _Fi2 ~= nil then
			Binesh.CreateHTMLFile("Epsilon = -N<span>Fi<sub>2</sub>-Fi<sub>1</sub>/Deltat</span>", "Fi<sub>2</sub>-Fi<sub>1</sub> = <span>EpsilonDeltat/-N</span>")
			Binesh.AddToHTML("Fi<sub>1</sub> = Fi<sub>2</sub>+ <span>EpsilonDeltat/N</span> &#8658; ")
			
			_Fi1 = _Fi2+(Epsilon*_Deltat/N_Round)
			
			Binesh.AddToHTML("Fi<sub>1</sub> = ".._Fi2.."+ <span>"..Epsilon.."*".._Deltat.."/"..N_Round.."</span> &#8658; Fi<sub>1</sub> = ".._Fi1.." Wb")
			
			Binesh.AddToHTML("Fi<sub>2</sub>: ".._Fi2.." Wb", "V")
			Binesh.AddToHTML("Epsilon: "..Epsilon.." V", "V")
			Binesh.AddToHTML("Deltat: ".._Deltat.." s", "V")
			Binesh.AddToHTML("N: "..N_Round, "V")
			Binesh.AddToHTML("Fi<sub>1</sub>: ?", "V")
		end
	end
	
	if _Fi2 == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "��� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Fi2") ~= -1 then
		if Epsilon ~= nil and N_Round ~= nil and _Deltat ~= nil and _Fi1 ~= nil then
			Binesh.CreateHTMLFile("Epsilon = -N<span>Fi<sub>2</sub>-Fi<sub>1</sub>/Deltat</span>", "Fi<sub>2</sub>-Fi<sub>1</sub> = <span>EpsilonDeltat/-N</span>")
			Binesh.AddToHTML("Fi<sub>2</sub> = Fi<sub>1</sub>+ <span>EpsilonDeltat/-N</span> &#8658; ")
			
			_Fi2 = _Fi1+(Epsilon*_Deltat/(-N_Round))
			
			Binesh.AddToHTML("Fi<sub>2</sub> = ".._Fi1.."+ <span>"..Epsilon.."*".._Deltat.."/-("..N_Round..")</span> &#8658; Fi<sub>2</sub> = ".._Fi2.." Wb")
			
			Binesh.AddToHTML("Fi<sub>1</sub>: ".._Fi1.." Wb", "V")
			Binesh.AddToHTML("Epsilon: "..Epsilon.." V", "V")
			Binesh.AddToHTML("Deltat: ".._Deltat.." s", "V")
			Binesh.AddToHTML("N: "..N_Round, "V")
			Binesh.AddToHTML("Fi<sub>2</sub>: ?", "V")
		end
	end
end