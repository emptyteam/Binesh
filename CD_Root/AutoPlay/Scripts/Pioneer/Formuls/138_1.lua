function Binesh.F138_1()
	if Epsilon == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "���� ��ј�") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "���ǎ") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "Epsilon") ~= -1) then
		if L_Self ~= nil and _DeltaI ~= nil and _Deltat ~= nil then
			Binesh.CreateHTMLFile("Epsilon = -L<span>DeltaI/Deltat</span>")
			Epsilon = -L_Self*(_DeltaI/_Deltat)
			
			Binesh.AddToHTML("Epsilon = -("..L_Self..")<span>".._DeltaI.."/".._Deltat.." &#8658; Epsilon = "..Epsilon.." V")
			
			Binesh.AddToHTML("L: "..L_Self.." H", "V")
			Binesh.AddToHTML("DeltaI: ".._DeltaI.." A", "V")
			Binesh.AddToHTML("Deltat: ".._Deltat.." s", "V")
			Binesh.AddToHTML("Epsilon: ?", "V")
		end
	end
	
	if L_Self == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "���� ���������") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L") ~= -1) then
		if Epsilon ~= nil and _DeltaI ~= nil and _Deltat ~= nil then
			Binesh.CreateHTMLFile("Epsilon = -L<span>DeltaI/Deltat</span>", "L = <span>EpsilonDeltat/DeltaI</span>")
			L_Self = Epsilon*_Deltat/_DeltaI
			
			Binesh.AddToHTML("L = <span>"..Epsilon.."*".._Deltat.."/".._DeltaI.."</span> &#8658; L = "..L_Self.." H")
			
			Binesh.AddToHTML("Epsilon: "..Epsilon.." V", "V")
			Binesh.AddToHTML("Deltat: ".._Deltat.." s", "V")
			Binesh.AddToHTML("DeltaI: ".._DeltaI.." A", "V")
			Binesh.AddToHTML("L: ?", "V")
		end
	end
	
	if _DeltaI == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� �����") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaI") ~= -1) then
		if Epsilon ~= nil and L_Self ~= nil and _Deltat ~= nil then
			Binesh.CreateHTMLFile("Epsilon = -L<span>DeltaI/Deltat</span>", "DeltaI = - <span>EpsilonDeltat/L</span>")
			_DeltaI = -Epsilon*_Deltat/L_Self
			
			Binesh.AddToHTML("DeltaI = - <span>"..Epsilon.."*".._Deltat.."/"..L_Self.."</span> &#8658; DeltaI = ".._DeltaI.." A")
			
			Binesh.AddToHTML("Epsilon: "..Epsilon.." V", "V")
			Binesh.AddToHTML("Deltat: ".._Deltat.." s", "V")
			Binesh.AddToHTML("L: "..L_Self.." H", "V")
			Binesh.AddToHTML("DeltaI: ?", "V")
		end
	end
	
	if _Deltat == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "���� �����") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltat") ~= -1) then
		if Epsilon ~= nil and L_Self ~= nil and _DeltaI ~= nil then
			Binesh.CreateHTMLFile("Epsilon = -L<span>DeltaI/Deltat</span>", "Deltat = -L<span>DeltaI/Epsilon</span>")
			_Deltat = -L_Self*(_DeltaI/Epsilon)
			
			Binesh.AddToHTML("Deltat = -("..L_Self..")<span>".._DeltaI.."/"..Epsilon.." &#8658; Deltat = ".._Deltat.." s")
			
			Binesh.AddToHTML("L: "..L_Self.." H", "V")
			Binesh.AddToHTML("DeltaI: ".._DeltaI.." A", "V")
			Binesh.AddToHTML("Epsilon: "..Epsilon.." V", "V")
			Binesh.AddToHTML("Deltat: ?", "V")
		end
	end
end