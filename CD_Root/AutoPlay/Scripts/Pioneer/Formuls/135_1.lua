function Binesh.F135_1()
	if Epsilon == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "���� ��ј�") or ListBox.FindItem("Words", -1, LB_BYTEXT, "Epsilon") ~= -1 then
		if N ~= nil and _DeltaFi ~= nil and _Deltat ~= nil then
			Binesh.CreateHTMLFile("Epsilon = -N<span>DeltaFi/Deltat</span>")
			Epsilon = -N_Round(_DeltaFi/_Deltat)
			
			Binesh.AddToHTML("Epsilon = -("..N_Round..")<span>".._DeltaFi.."/".._Deltat.."</span> &#8658; Epsilon = "..Epsilon.." V")
			
			Binesh.AddToHTML("N: "..N_Round, "V")
			Binesh.AddToHTML("DeltaFi: ".._DeltaFi.." Wb", "V")
			Binesh.AddToHTML("Deltat: ".._Deltat.." s", "V")
			Binesh.AddToHTML("Epsilon: ?", "V")
		end
	end
	
	if N_Round == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1 then
		if Epsilon ~= nil and _Deltat ~= nil and _DeltaFi ~= nil then
			Binesh.CreateHTMLFile("Epsilon = -N<span>DeltaFi/Deltat</span>", "N = - <span>EpsilonDeltat/DeltaFi</span>")
			N_Round = -(Epsilon*_Deltat/_DeltaFi)
			
			Binesh.AddToHTML("N = -(<span>"..Epsilon.."*".._Deltat.."/".._DeltaFi.."</span>) &#8658; N = "..N_Round)
			
			Binesh.AddToHTML("Epsilon: "..Epsilon.." V", "V")
			Binesh.AddToHTML("Deltat: ".._Deltat.." s", "V")
			Binesh.AddToHTML("DeltaFi: ".._DeltaFi.." Wb", "V")
			Binesh.AddToHTML("N: ?", "V")
		end
	end
	
	if _DeltaFi == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "��� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaFi") ~= -1 then
		if Epsilon ~= nil and N_Round ~= nil and _Deltat ~= nil then
			Binesh.CreateHTMLFile("Epsilon = -N<span>DeltaFi/Deltat</span>", "DeltaFi = <span>EpsilonDeltat/-N</span>")
			_DeltaFi = Epsilon*_Deltat/(-N_Round)
			
			Binesh.AddToHTML("DeltaFi = <span>"..Epsilon.."*".._Deltat.."/-("..N_Round..")</span> &#8658; DeltaFi = ".._DeltaFi.." Wb")
			
			Binesh.AddToHTML("Epsilon: "..Epsilon.." V", "V")
			Binesh.AddToHTML("Deltat: ".._Deltat.." s", "V")
			Binesh.AddToHTML("N: "..N_Round, "V")
			Binesh.AddToHTML("DeltaFi: ?", "V")
		end
	end
	
	if _Deltat == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "���� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltat") ~= -1 then
		if Epsilon ~= nil and N_Round ~= nil and _DeltaFi ~= nil then
			Binesh.CreateHTMLFile("Epsilon = -N<span>DeltaFi/Deltat</span>", "Deltat = -N<span>DeltaFi/Epsilon</span>")
			_Deltat = -N_Round(_DeltaFi/Epsilon)
			
			Binesh.AddToHTML("Deltat = -("..N_Round..")<span>".._DeltaFi.."/"..Epsilon.."</span> &#8658; Deltat = ".._Deltat.." s")
			
			Binesh.AddToHTML("N: "..N_Round, "V")
			Binesh.AddToHTML("DeltaFi: ".._DeltaFi.." Wb", "V")
			Binesh.AddToHTML("Epsilon: "..Epsilon.." V", "V")
			Binesh.AddToHTML("Deltat: ?", "V")
		end
	end
end