function Binesh.F133()
	if F == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1) then
		if I1 ~= nil and I2 ~= nil and d ~= nil and l ~= nil then
			Binesh.CreateHTMLFile("F = <span>Mu<sub>0</sub>/2Pi</span>*<span>I<sub>1</sub>I<sub>2</sub>/d</span>*l")
			F = 2*10^-7*I1*I2*l/d
			
			Binesh.AddToHTML("F = <span>4*"..Zarib.Pi.."*10<sup>-7</sup>/2*"..Zarib.Pi.."</span>*<span>"..I1.."*"..I2.."/"..d .."</span>*"..l.." &#8658; F = "..F.." N")
			
			Binesh.AddToHTML("I<sub>1</sub>: "..I1.." A", "V")
			Binesh.AddToHTML("I<sub>2</sub>: "..I2.." A", "V")
			Binesh.AddToHTML("d: "..d.." m", "V")
			Binesh.AddToHTML("l: "..l.." m", "V")
			Binesh.AddToHTML("F: ?", "V")
		end
	end
	
	if I1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰ «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "I1") ~= -1)) then
		if F ~= nil and l ~= nil and I2 ~= nil and d ~= nil then
			Binesh.CreateHTMLFile("F = <span>Mu<sub>0</sub>/2Pi</span>*<span>I<sub>1</sub>I<sub>2</sub>/d</span>*l", "I<sub>1</sub> = <span>2PidF/Mu<sub>0</sub>I<sub>2</sub>L</span>")
			I1 = d*F/(2*10^-7*I2*l)
			
			Binesh.AddToHTML("I<sub>1</sub> = <span>2*"..Zarib.Pi.."*"..d.."*"..F.."/4*"..Zarib.Pi.."*10<sup>-7</sup>*"..I2.."*"..l.."</span> &#8658; I<sub>1</sub> = "..I1.." A")
			
			Binesh.AddToHTML("F: "..F.." N", "V")
			Binesh.AddToHTML("I<sub>2</sub>: "..I2.." A", "V")
			Binesh.AddToHTML("d: "..d.." m", "V")
			Binesh.AddToHTML("l: "..l.." m", "V")
			Binesh.AddToHTML("I<sub>1</sub>: ?", "V")
		end
	end
	
	if I2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰ œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "I2") ~= -1)) then
		if F ~= nil and l ~= nil and I1 ~= nil and d ~= nil then
			Binesh.CreateHTMLFile("F = <span>Mu<sub>0</sub>/2Pi</span>*<span>I<sub>1</sub>I<sub>2</sub>/d</span>*l", "I<sub>2</sub> = <span>2PidF/Mu<sub>0</sub>I<sub>1</sub>L</span>")
			I2 = d*F/(2*10^-7*I1*l)
			
			Binesh.AddToHTML("I<sub>1</sub> = <span>2*"..Zarib.Pi.."*"..d.."*"..F.."/4*"..Zarib.Pi.."*10<sup>-7</sup>*"..I1.."*"..l.."</span> &#8658; I<sub>2</sub> = "..I2.." A")
			
			Binesh.AddToHTML("F: "..F.." N", "V")
			Binesh.AddToHTML("I<sub>1</sub>: "..I1.." A", "V")
			Binesh.AddToHTML("d: "..d.." m", "V")
			Binesh.AddToHTML("l: "..l.." m", "V")
			Binesh.AddToHTML("I<sub>2</sub>: ?", "V")
		end
	end
	
	if l == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "l") ~= -1) then
		if F ~= nil and I1 ~= nil and I2 ~= nil and d ~= nil then
			Binesh.CreateHTMLFile("F = <span>Mu<sub>0</sub>/2Pi</span>*<span>I<sub>1</sub>I<sub>2</sub>/d</span>*l", "l = <span>2PidF/Mu<sub>0</sub>I<sub>1</sub>I<sub>2</sub></span>")
			l = d*F/(2*10^-7*I1*I2)
			
			Binesh.AddToHTML("l = <span>2*"..Zarib.Pi.."*"..d.."*"..F.."/4*"..Zarib.Pi.."*10<sup>-7</sup>*"..I1.."*"..I2.."</span> &#8658; l = "..l.." m")
			
			Binesh.AddToHTML("F: "..F.." N", "V")
			Binesh.AddToHTML("I<sub>1</sub>: "..I1.." A", "V")
			Binesh.AddToHTML("I<sub>2</sub>: "..I2.." A", "V")
			Binesh.AddToHTML("d: "..d.." m", "V")
			Binesh.AddToHTML("l: ?", "V")
		end
	end
	
	if d == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "d") ~= -1) then
		if F ~= nil and l ~= nil and I2 ~= nil and I1 ~= nil then
			Binesh.CreateHTMLFile("F = <span>Mu<sub>0</sub>/2Pi</span>*<span>I<sub>1</sub>I<sub>2</sub>/d</span>*l", "d = <span>Mu<sub>0</sub>I<sub>1</sub>I<sub>2</sub>l/2PiF</span>")
			d = 2*10^-7*I1*I2*l/F
			
			Binesh.AddToHTML("l = <span>4*"..Zarib.Pi.."*10<sup>-7</sup>*"..I1.."*"..I2.."*"..l.."/2*"..Zarib.Pi.."*"..F.."</span> &#8658; d = "..d.." m")
			
			Binesh.AddToHTML("F: "..F.." N", "V")
			Binesh.AddToHTML("I<sub>1</sub>: "..I1.." A", "V")
			Binesh.AddToHTML("I<sub>2</sub>: "..I2.." A", "V")
			Binesh.AddToHTML("l: "..l.." m", "V")
			Binesh.AddToHTML("d: ?", "V")
		end
	end
end