function Binesh.F131()
	if B == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1) then
		if N_Ring ~= nil and R_Radius ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("B = <span>NMu<sub>0</sub>I/2R</span>")
			B = N_Ring * 4*3.14*10^(-7) * I /(2*R_Radius)
			
			Binesh.AddToHTML("B = <span>"..Binesh.ProgressNumber(N_Ring).."*4*"..Binesh.ProgressNumber(Settings.Zarib.Pi).."*10<sup>-7</sup>*"..Binesh.ProgressNumber(I).."/2*"..Binesh.ProgressNumber(R_Radius).."</span> &#8658; B = "..Binesh.ProgressNumber(B).." T")
			
			Binesh.AddToHTML("R = "..Binesh.ProgressNumber(R_Radius).." m", "V")
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("N = "..Binesh.ProgressNumber(N_Ring), "V")
			Binesh.AddToHTML("B = ?", "V")
		end
	end
	
	if R_Radius == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1) then
		if N_Ring ~= nil and B ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("B = <span>NMu<sub>0</sub>I/2R</span>", "R = <span>NMu<sub>0</sub>I/2B</span>")
			R_Radius = N_Ring * 4*Settings.Zarib.Pi*10^(-7) * I /(2*B)
			
			Binesh.AddToHTML("R = <span>"..Binesh.ProgressNumber(N_Ring).."*4*"..Binesh.ProgressNumber(Settings.Zarib.Pi).."*10<sup>-7</sup>*"..Binesh.ProgressNumber(I).."/2*"..Binesh.ProgressNumber(B).."</span> &#8658; R = "..Binesh.ProgressNumber(R_Radius).." m")
			
			Binesh.AddToHTML("B = "..Binesh.ProgressNumber(B).." T", "V")
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("N = "..Binesh.ProgressNumber(N_Ring), "V")
			Binesh.AddToHTML("R = ?", "V")
		end
	end
	
	if N_Ring == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1) then
		if R_Radius ~= nil and B ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("B = <span>NMu<sub>0</sub>I/2R</span>", "N = <span>2BR/Mu<sub>0</sub>I</span>")
			N_Ring = 2*B*R_Radius/(4*Settings.Zarib.Pi*10^(-7)*I)
			
			Binesh.AddToHTML("N = <span>2*"..Binesh.ProgressNumber(B).."*"..Binesh.ProgressNumber(R_Radius).."/4*"..Binesh.ProgressNumber(Settings.Zarib.Pi).."*10<sup>-7</sup>*"..Binesh.ProgressNumber(I).."</span> &#8658; N = "..Binesh.ProgressNumber(N_Ring) )
			
			Binesh.AddToHTML("R = "..Binesh.ProgressNumber(R_Radius).." m", "V")
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("B = "..Binesh.ProgressNumber(B).." T" , "V")
			Binesh.AddToHTML("N = ?", "V")
		end
	end
	
	if I == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1) then
		if N_Ring ~= nil and B ~= nil and R_Radius ~= nil then
			Binesh.CreateHTMLFile("B = <span>NMu<sub>0</sub>I/2R</span>", "I = <span>2BR/Mu<sub>0</sub>N</span>")
			I = 2*B*R_Radius/(4*Settings.Zarib.Pi*10^(-7)*N_Ring)
			
			Binesh.AddToHTML("I = <span>2*"..Binesh.ProgressNumber(B).."*"..Binesh.ProgressNumber(R_Radius).."/4*"..Binesh.ProgressNumber(Settings.Zarib.Pi).."*10<sup>-7</sup>*"..Binesh.ProgressNumber(N_Ring).."</span> &#8658; I = "..Binesh.ProgressNumber(I).." A")
			
			Binesh.AddToHTML("R = "..Binesh.ProgressNumber(R_Radius).." m", "V")
			Binesh.AddToHTML("B = "..Binesh.ProgressNumber(B).." T", "V")
			Binesh.AddToHTML("N = "..Binesh.ProgressNumber(N_Ring), "V")
			Binesh.AddToHTML("I = ?", "V")
		end
	end	
end