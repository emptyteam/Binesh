function Binesh.F138_2()
	if I1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� �����") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "I1") ~= -1) then
		if Epsilon ~= nil and L_Self ~= nil and _Deltat ~= nil and I2 ~= nil then
			Binesh.CreateHTMLFile("Epsilon = -L<span>I<sub>2</sub>-I<sub>1</sub>/Deltat</span>", "I<sub>2</sub>-I<sub>1</sub> = - <span>EpsilonDeltat/L</span>")
			Binesh.AddToHTML("I<sub>1</sub> = I<sub>2</sub> + <span>EpsilonDeltat/L</span> &#8658; ")
			
			I1 = I2+(Epsilon*_Deltat/L_Self)
			
			Binesh.AddToHTML("I<sub>1</sub> = "..Binesh.ProgressNumber(I2).." + <span>"..Binesh.ProgressNumber(Epsilon).."*"..Binesh.ProgressNumber(_Deltat).."/"..Binesh.ProgressNumber(L_Self).."</span> &#8658; I<sub>1</sub> = "..Binesh.ProgressNumber(I1).." A")
			
			Binesh.AddToHTML("I<sub>2</sub> = "..Binesh.ProgressNumber(I2).." A", "V")
			Binesh.AddToHTML("Epsilon = "..Binesh.ProgressNumber(Epsilon).." V", "V")
			Binesh.AddToHTML("Deltat = "..Binesh.ProgressNumber(_Deltat).." s", "V")
			Binesh.AddToHTML("L = "..Binesh.ProgressNumber(L_Self).." H", "V")
			Binesh.AddToHTML("I<sub>1</sub> = ?", "V")
		end
	end
	
	if I2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� �����") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "I2") ~= -1) then
		if Epsilon ~= nil and L_Self ~= nil and _Deltat ~= nil and I1 ~= nil then
			Binesh.CreateHTMLFile("Epsilon = -L<span>I<sub>2</sub>-I<sub>1</sub>/Deltat</span>", "I<sub>2</sub>-I<sub>1</sub> = - <span>EpsilonDeltat/L</span>")
			Binesh.AddToHTML("I<sub>2</sub> = I<sub>1</sub> - <span>EpsilonDeltat/L</span> &#8658; ")
			
			I2 = I1-(Epsilon*_Deltat/L_Self)
			
			Binesh.AddToHTML("I<sub>2</sub> = "..Binesh.ProgressNumber(I1).." - <span>"..Binesh.ProgressNumber(Epsilon).."*"..Binesh.ProgressNumber(_Deltat).."/"..Binesh.ProgressNumber(L_Self).."</span> &#8658; I<sub>2</sub> = "..Binesh.ProgressNumber(I2).." A")
			
			Binesh.AddToHTML("I<sub>1</sub> = "..Binesh.ProgressNumber(I1).." A", "V")
			Binesh.AddToHTML("Epsilon = "..Binesh.ProgressNumber(Epsilon).." V", "V")
			Binesh.AddToHTML("Deltat = "..Binesh.ProgressNumber(_Deltat).." s", "V")
			Binesh.AddToHTML("L = "..Binesh.ProgressNumber(L_Self).." H", "V")
			Binesh.AddToHTML("I<sub>2</sub> = ?", "V")
		end
	end
end