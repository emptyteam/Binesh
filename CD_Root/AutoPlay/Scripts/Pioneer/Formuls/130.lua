function Binesh.F130()
	if B == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1 then
		if I ~= nil and r_3 ~= nil then
			Binesh.CreateHTMLFile("B = <span>Mu<sub>0</sub>/2Pi</span>*<span>I/r</span>")
			B = 2*10^-7*I/r_3
			
			Binesh.AddToHTML("B = <span>4*"..Zarib.Pi.."*10<sup>-7</sup>/2*"..Zarib.Pi.."</span>*<span>"..I.."/"..r_3.."</span> &#8658; B = "..B.." T")
			
			Binesh.AddToHTML("r: "..r_3.." m", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("B: ?", "V")
		end
	end
	
	if I == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
		if B ~= nil and r_3 ~= nil then
			Binesh.CreateHTMLFile("B = <span>Mu<sub>0</sub>/2Pi</span>*<span>I/r</span>", "I = <span>2PiBr/Mu<sub>0</sub></span>")
			I = B*r_3/(2*10^-7)
			
			Binesh.AddToHTML("I = <span>2*"..Zarib.Pi.."*"..B.."*"..r_3.."/4*"..Zarib.Pi.."*10<sup>-7</sup></span> &#8658; I = "..I.." A")
			
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("r: "..r_3.." m", "V")
			Binesh.AddToHTML("I: ?", "V")
		end
	end
	
	if r_3 == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "r") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "d") ~= -1 then
		if B ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("B = <span>Mu<sub>0</sub>/2Pi</span>*<span>I/r</span>", "r = <span>Mu<sub>0</sub>I/2PiB</span>")
			r_3 = 2*10^-7*I/B
			
			Binesh.AddToHTML("r = <span>4*"..Zarib.Pi.."*10<sup>-7</sup>*"..I.."/2*"..Zarib.Pi.."*"..B.."</span> &#8658; r = "..r_3.." m")
			
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("r: ?", "V")
		end
	end
end