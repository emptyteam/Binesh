function Binesh.F138_1()
	--------------------------{DELTA}--------------------------
	if _DeltaI == nil then
		if I1 ~= nil and I2 ~= nil then
			Binesh.CreateHTMLFile("DeltaI = I<sub>2</sub>-I<sub>1</sub>")
			_DeltaI = I2 - I1
			Binesh.AddToHTML("DeltaI = "..Binesh.Convert_e(I2).."-"..Binesh.Convert_e(I1).." &#8658; DeltaI = "..Binesh.Convert_e(_DeltaI).." A")
		end
	end
	
	if I1 == nil then
		if _DeltaI ~= nil and I2 ~= nil then
			Binesh.CreateHTMLFile("DeltaI = I<sub>2</sub>-I<sub>1</sub>", "I<sub>1</sub> = I<sub>2</sub>-DeltaI")
			I1 = I2-_DeltaI
			Binesh.AddToHTML("I<sub>1</sub> = "..Binesh.Convert_e(I2).."-"..Binesh.Convert_e(_DeltaI).." &#8658; I<sub>1</sub> = "..Binesh.Convert_e(I1).." A")
		end
	end
	
	if I2 == nil then
		if _DeltaI ~= nil and I1 ~= nil then
			Binesh.CreateHTMLFile("DeltaI = I<sub>2</sub>-I<sub>1</sub>", "I<sub>2</sub> = DeltaI+I<sub>1</sub>")
			I2 = I1+_DeltaI
			Binesh.AddToHTML("I<sub>2</sub> = "..Binesh.Convert_e(_DeltaI).."+"..Binesh.Convert_e(I1).." &#8658; I<sub>2</sub> = "..Binesh.Convert_e(I2).." A")
		end
	end
	--------------------------END {DELTA}--------------------------
	if Epsilon == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê „Õ—òÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "Epsilon") ~= -1) then
		if L_Self ~= nil and _DeltaI ~= nil and _Deltat ~= nil then
			Binesh.CreateHTMLFile("Epsilon = -L<span>DeltaI/Deltat</span>")
			Epsilon = -L_Self*(_DeltaI/_Deltat)
			
			Binesh.AddToHTML("Epsilon = -("..Binesh.Convert_e(L_Self)..")<span>"..Binesh.Convert_e(_DeltaI).."/"..Binesh.Convert_e(_Deltat).." &#8658; Epsilon = "..Binesh.Convert_e(Epsilon).." V")
			
			Binesh.AddToHTML("L: "..Binesh.Convert_e(L_Self).." H", "V")
			Binesh.AddToHTML("DeltaI: "..Binesh.Convert_e(_DeltaI).." A", "V")
			Binesh.AddToHTML("Deltat: "..Binesh.Convert_e(_Deltat).." s", "V")
			Binesh.AddToHTML("Epsilon: ?", "V")
		end
	end
	
	if L_Self == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» ŒÊœ«·ﬁ«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "L") ~= -1) then
		if Epsilon ~= nil and _DeltaI ~= nil and _Deltat ~= nil then
			Binesh.CreateHTMLFile("Epsilon = -L<span>DeltaI/Deltat</span>", "L = <span>EpsilonDeltat/DeltaI</span>")
			L_Self = Epsilon*_Deltat/_DeltaI
			
			Binesh.AddToHTML("L = <span>"..Binesh.Convert_e(Epsilon).."*"..Binesh.Convert_e(_Deltat).."/"..Binesh.Convert_e(_DeltaI).."</span> &#8658; L = "..Binesh.Convert_e(L_Self).." H")
			
			Binesh.AddToHTML("Epsilon: "..Binesh.Convert_e(Epsilon).." V", "V")
			Binesh.AddToHTML("Deltat: "..Binesh.Convert_e(_Deltat).." s", "V")
			Binesh.AddToHTML("DeltaI: "..Binesh.Convert_e(_DeltaI).." A", "V")
			Binesh.AddToHTML("L: ?", "V")
		end
	end
	
	if _DeltaI == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰  €ÌÌ—") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaI") ~= -1) then
		if Epsilon ~= nil and L_Self ~= nil and _Deltat ~= nil then
			Binesh.CreateHTMLFile("Epsilon = -L<span>DeltaI/Deltat</span>", "DeltaI = - <span>EpsilonDeltat/L</span>")
			_DeltaI = -Epsilon*_Deltat/L_Self
			
			Binesh.AddToHTML("DeltaI = - <span>"..Binesh.Convert_e(Epsilon).."*"..Binesh.Convert_e(_Deltat).."/"..Binesh.Convert_e(L_Self).."</span> &#8658; DeltaI = "..Binesh.Convert_e(_DeltaI).." A")
			
			Binesh.AddToHTML("Epsilon: "..Binesh.Convert_e(Epsilon).." V", "V")
			Binesh.AddToHTML("Deltat: "..Binesh.Convert_e(_Deltat).." s", "V")
			Binesh.AddToHTML("L: "..Binesh.Convert_e(L_Self).." H", "V")
			Binesh.AddToHTML("DeltaI: ?", "V")
		end
	end
	
	if _Deltat == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— “„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰  €ÌÌ—") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltat") ~= -1) then
		if Epsilon ~= nil and L_Self ~= nil and _DeltaI ~= nil then
			Binesh.CreateHTMLFile("Epsilon = -L<span>DeltaI/Deltat</span>", "Deltat = -L<span>DeltaI/Epsilon</span>")
			_Deltat = -L_Self*(_DeltaI/Epsilon)
			
			Binesh.AddToHTML("Deltat = -("..Binesh.Convert_e(L_Self)..")<span>"..Binesh.Convert_e(_DeltaI).."/"..Binesh.Convert_e(Epsilon).." &#8658; Deltat = "..Binesh.Convert_e(_Deltat).." s")
			
			Binesh.AddToHTML("L: "..Binesh.Convert_e(L_Self).." H", "V")
			Binesh.AddToHTML("DeltaI: "..Binesh.Convert_e(_DeltaI).." A", "V")
			Binesh.AddToHTML("Epsilon: "..Binesh.Convert_e(Epsilon).." V", "V")
			Binesh.AddToHTML("Deltat: ?", "V")
		end
	end
end