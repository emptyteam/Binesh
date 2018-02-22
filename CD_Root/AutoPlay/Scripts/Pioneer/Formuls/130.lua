function Binesh.F130()
	if B == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1) then
		if I ~= nil and r ~= nil then
			Binesh.CreateHTMLFile("B = <span>Mu<sub>0</sub>/2Pi</span>*<span>I/r</span>")
			B = 2*10^-7*I/r
			
			Binesh.AddToHTML("B = <span>4*"..Binesh.ProgressNumber(Settings.Zarib.Pi).."*10<sup>-7</sup>/2*"..Binesh.ProgressNumber(Settings.Zarib.Pi).."</span>*<span>"..Binesh.ProgressNumber(I).."/"..Binesh.ProgressNumber(r).."</span> &#8658; B = "..Binesh.ProgressNumber(B).." T")
			
			Binesh.AddToHTML("r = "..Binesh.ProgressNumber(r).." m", "V")
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("B = ?", "V")
		end
	end
	
	if I == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1) then
		if B ~= nil and r ~= nil then
			Binesh.CreateHTMLFile("B = <span>Mu<sub>0</sub>/2Pi</span>*<span>I/r</span>", "I = <span>2PiBr/Mu<sub>0</sub></span>")
			I = B*r/(2*10^-7)
			
			Binesh.AddToHTML("I = <span>2*"..Binesh.ProgressNumber(Settings.Zarib.Pi).."*"..Binesh.ProgressNumber(B).."*"..Binesh.ProgressNumber(r).."/4*"..Binesh.ProgressNumber(Settings.Zarib.Pi).."*10<sup>-7</sup></span> &#8658; I = "..Binesh.ProgressNumber(I).." A")
			
			Binesh.AddToHTML("B = "..Binesh.ProgressNumber(B).." T", "V")
			Binesh.AddToHTML("r = "..Binesh.ProgressNumber(r).." m", "V")
			Binesh.AddToHTML("I = ?", "V")
		end
	end
	
	if r == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "r") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "d") ~= -1)) then
		if B ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("B = <span>Mu<sub>0</sub>/2Pi</span>*<span>I/r</span>", "r = <span>Mu<sub>0</sub>I/2PiB</span>")
			r = 2*10^-7*I/B
			
			Binesh.AddToHTML("r = <span>4*"..Binesh.ProgressNumber(Settings.Zarib.Pi).."*10<sup>-7</sup>*"..Binesh.ProgressNumber(I).."/2*"..Binesh.ProgressNumber(Settings.Zarib.Pi).."*"..Binesh.ProgressNumber(B).."</span> &#8658; r = "..Binesh.ProgressNumber(r).." m")
			
			Binesh.AddToHTML("B = "..Binesh.ProgressNumber(B).." T", "V")
			Binesh.AddToHTML("I = "..Binesh.ProgressNumber(I).." A", "V")
			Binesh.AddToHTML("r = ?", "V")
		end
	end
end