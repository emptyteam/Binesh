function Binesh.F132()
	if ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  “«ÊÌÂ") == -1 and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "l") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1) then
		if B == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1) then
			if l ~= nil and I ~= nil and N_Ring ~= nil then
				Binesh.CreateHTMLFile("B = Mu<sub>0</sub><span>N/l</span>I")
				B = 4*Zarib.Pi*10^-7*(N_Ring/l)*I
				
				Binesh.AddToHTML("B = Mu<sub>0</sub>*<span>"..Binesh.Convert_e(N_Ring).."/"..Binesh.Convert_e(l).."</span>*"..Binesh.Convert_e(I).." &#8658; B = "..Binesh.Convert_e(B).." T")
				
				Binesh.AddToHTML("l: "..Binesh.Convert_e(l).." m", "V")
				Binesh.AddToHTML("I: "..Binesh.Convert_e(I).." A", "V")
				Binesh.AddToHTML("N: "..Binesh.Convert_e(N_Ring), "V")
				Binesh.AddToHTML("B: ?", "V")
			end
		end
		
		if l == nil or ((ListBox.GetItemData("unknowns", Findl) == "L" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÿÊ·") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "l") ~= -1)) then
			if I ~= nil and B ~= nil and N_Ring ~= nil then
				Binesh.CreateHTMLFile("B = Mu<sub>0</sub><span>N/l</span>I", "l = Mu<sub>0</sub><span>N/B</span>I")
				l = 4*Zarib.Pi*10^-7*(N_Ring/B)*I
				
				Binesh.AddToHTML("l = 4Pi*10<sup>-7</sup>*<span>"..Binesh.Convert_e(N_Ring).."/"..Binesh.Convert_e(B).."</span>*"..Binesh.Convert_e(I).." &#8658; l = "..Binesh.Convert_e(l).." m")
				
				Binesh.AddToHTML("B: "..Binesh.Convert_e(B).." T", "V")
				Binesh.AddToHTML("I: "..Binesh.Convert_e(I).." A", "V")
				Binesh.AddToHTML("N: "..Binesh.Convert_e(N_Ring), "V")
				Binesh.AddToHTML("l: ?", "V")
			end
		end
		
		if I == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1) then
			if B ~= nil and l ~= nil and N_Ring ~= nil then
				Binesh.CreateHTMLFile("B = Mu<sub>0</sub><span>N/l</span>*I", "I = <span>Bl/Mu<sub>0</sub>N</span>")
				I = (B*l)/(4*Zarib.Pi*10^-7*N_Ring)
				
				Binesh.AddToHTML("I = <span>"..Binesh.Convert_e(B).."*"..Binesh.Convert_e(l).."/Mu<sub>0</sub>*"..Binesh.Convert_e(N_Ring).."</span> &#8658; I = "..Binesh.Convert_e(I).." A")
				
				Binesh.AddToHTML("l: "..Binesh.Convert_e(l).." m", "V")
				Binesh.AddToHTML("B: "..Binesh.Convert_e(B).." T", "V")
				Binesh.AddToHTML("N: "..Binesh.Convert_e(N_Ring), "V")
				Binesh.AddToHTML("I: ?", "V")
			end
		end
		
		if N_Ring == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Õ·ﬁÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1) then
			if B ~= nil and l ~= nil and I ~= nil then
				Binesh.CreateHTMLFile("B = Mu<sub>0</sub><span>N/l</span>I", "N = <span>Bl/u<sub>0</sub>I</span>")
				N_Ring = (B*l)/(4*Zarib.Pi*10^-7*I)
				
				Binesh.AddToHTML("N = <span>"..Binesh.Convert_e(B).."*"..Binesh.Convert_e(l).."/Mu<sub>0</sub>*"..Binesh.Convert_e(I).."</span> &#8658; N = "..Binesh.Convert_e(N_Ring))
				
				Binesh.AddToHTML("R: "..Binesh.Convert_e(R_Radius).." m", "V")
				Binesh.AddToHTML("I: "..Binesh.Convert_e(I).." A", "V")
				Binesh.AddToHTML("B: "..Binesh.Convert_e(B).." T" , "V")
				Binesh.AddToHTML("N: ?", "V")
			end
		end
	end
end