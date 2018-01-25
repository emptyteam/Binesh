function Binesh.F132()
	if B == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1 then
		if l ~= nil and I ~= nil and N_Ring ~= nil then
			Binesh.CreateHTMLFile("B = Mu<sub>0</sub><span>N/l</span>I")
			B = 4*Zarib.Pi*10^-7*(N_Ring/l)*I
			
			Binesh.AddToHTML("B = Mu<sub>0</sub>*<span>"..N_Ring.."/"..l.."</span>*"..I.." &#8658; B = "..B.." T")
			
			Binesh.AddToHTML("l: "..l.." m", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("N: "..N_Ring , "V")
			Binesh.AddToHTML("B: ?", "V")
		end
	end
	
	if l == nil or ListBox.GetItemData("unknowns", Findl) == "L" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "l") ~= -1 then
		if I ~= nil and B ~= nil and N_Ring ~= nil then
			Binesh.CreateHTMLFile("B = Mu<sub>0</sub><span>N/l</span>I", "l = Mu<sub>0</sub><span>N/B</span>I")
			l = 4*Zarib.Pi*10^-7*(N_Ring/B)*I
			
			Binesh.AddToHTML("l = 4Pi*10<sup>-7</sup>*<span>"..N_Ring.."/"..B.."</span>*"..I.." &#8658; l = "..l.." m")
			
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("N: "..N_Ring , "V")
			Binesh.AddToHTML("l: ?", "V")
		end
	end
	
	if I == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
		if B ~= nil and l ~= nil and N_Ring ~= nil then
			Binesh.CreateHTMLFile("B = Mu<sub>0</sub><span>N/l</span>*I", "I = <span>Bl/Mu<sub>0</sub>N</span>")
			I = (B*l)/(4*Zarib.Pi*10^-7*N_Ring)
			
			Binesh.AddToHTML("I = <span>"..B.."*"..l.."/Mu<sub>0</sub>*"..N_Ring.."</span> &#8658; I = "..I.." A")
			
			Binesh.AddToHTML("l: "..l.." m", "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("N: "..N_Ring , "V")
			Binesh.AddToHTML("I: ?", "V")
		end
	end
	
	if N_Ring == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "Õ·ﬁÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1 then
		if B ~= nil and l ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("B = Mu<sub>0</sub><span>N/l</span>I", "N = <span>Bl/u<sub>0</sub>I</span>")
			N_Ring = (B*l)/(4*Zarib.Pi*10^-7*I)
			
			Binesh.AddToHTML("N = <span>"..B.."*"..l.."/Mu<sub>0</sub>*"..I.."</span> &#8658; N = "..N_Ring)
			
			Binesh.AddToHTML("R: "..R_Radius.." m", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("B: "..B.." T" , "V")
			Binesh.AddToHTML("N: ?", "V")
		end
	end
end