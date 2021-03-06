function Binesh.F133()
	if F == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1) then
		if I1 ~= nil and I2 ~= nil and d ~= nil and l ~= nil then
			Binesh.CreateHTMLFile("F = <span>Mu<sub>0</sub>/2Pi</span>*<span>I<sub>1</sub>I<sub>2</sub>/d</span>*l")
			F = 2*10^-7*I1*I2*l/d
			
			Binesh.AddToHTML("F = <span>4*"..Binesh.ProgressNumber(Settings.Zarib.Pi).."*10<sup>-7</sup>/2*"..Binesh.ProgressNumber(Settings.Zarib.Pi).."</span>*<span>"..Binesh.ProgressNumber(I1).."*"..Binesh.ProgressNumber(I2).."/"..Binesh.ProgressNumber(d ).."</span>*"..Binesh.ProgressNumber(l).." &#8658; F = "..Binesh.ProgressNumber(F).." N")
			
			Binesh.AddToHTML("I<sub>1</sub> = "..Binesh.ProgressNumber(I1).." A", "V")
			Binesh.AddToHTML("I<sub>2</sub> = "..Binesh.ProgressNumber(I2).." A", "V")
			Binesh.AddToHTML("d = "..Binesh.ProgressNumber(d).." m", "V")
			Binesh.AddToHTML("l = "..Binesh.ProgressNumber(l).." m", "V")
			Binesh.AddToHTML("F = ?", "V")
		end
	end
	
	if I1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "I1") ~= -1)) then
		if F ~= nil and l ~= nil and I2 ~= nil and d ~= nil then
			Binesh.CreateHTMLFile("F = <span>Mu<sub>0</sub>/2Pi</span>*<span>I<sub>1</sub>I<sub>2</sub>/d</span>*l", "I<sub>1</sub> = <span>2PidF/Mu<sub>0</sub>I<sub>2</sub>L</span>")
			I1 = d*F/(2*10^-7*I2*l)
			
			Binesh.AddToHTML("I<sub>1</sub> = <span>2*"..Binesh.ProgressNumber(Settings.Zarib.Pi).."*"..Binesh.ProgressNumber(d).."*"..Binesh.ProgressNumber(F).."/4*"..Binesh.ProgressNumber(Settings.Zarib.Pi).."*10<sup>-7</sup>*"..Binesh.ProgressNumber(I2).."*"..Binesh.ProgressNumber(l).."</span> &#8658; I<sub>1</sub> = "..Binesh.ProgressNumber(I1).." A")
			
			Binesh.AddToHTML("F = "..Binesh.ProgressNumber(F).." N", "V")
			Binesh.AddToHTML("I<sub>2</sub> = "..Binesh.ProgressNumber(I2).." A", "V")
			Binesh.AddToHTML("d = "..Binesh.ProgressNumber(d).." m", "V")
			Binesh.AddToHTML("l = "..Binesh.ProgressNumber(l).." m", "V")
			Binesh.AddToHTML("I<sub>1</sub> = ?", "V")
		end
	end
	
	if I2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "����� �����") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "I2") ~= -1)) then
		if F ~= nil and l ~= nil and I1 ~= nil and d ~= nil then
			Binesh.CreateHTMLFile("F = <span>Mu<sub>0</sub>/2Pi</span>*<span>I<sub>1</sub>I<sub>2</sub>/d</span>*l", "I<sub>2</sub> = <span>2PidF/Mu<sub>0</sub>I<sub>1</sub>L</span>")
			I2 = d*F/(2*10^-7*I1*l)
			
			Binesh.AddToHTML("I<sub>1</sub> = <span>2*"..Binesh.ProgressNumber(Settings.Zarib.Pi).."*"..Binesh.ProgressNumber(d).."*"..Binesh.ProgressNumber(F).."/4*"..Binesh.ProgressNumber(Settings.Zarib.Pi).."*10<sup>-7</sup>*"..Binesh.ProgressNumber(I1).."*"..Binesh.ProgressNumber(l).."</span> &#8658; I<sub>2</sub> = "..Binesh.ProgressNumber(I2).." A")
			
			Binesh.AddToHTML("F = "..Binesh.ProgressNumber(F).." N", "V")
			Binesh.AddToHTML("I<sub>1</sub> = "..Binesh.ProgressNumber(I1).." A", "V")
			Binesh.AddToHTML("d = "..Binesh.ProgressNumber(d).." m", "V")
			Binesh.AddToHTML("l = "..Binesh.ProgressNumber(l).." m", "V")
			Binesh.AddToHTML("I<sub>2</sub> = ?", "V")
		end
	end
	
	if l == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "l") ~= -1) then
		if F ~= nil and I1 ~= nil and I2 ~= nil and d ~= nil then
			Binesh.CreateHTMLFile("F = <span>Mu<sub>0</sub>/2Pi</span>*<span>I<sub>1</sub>I<sub>2</sub>/d</span>*l", "l = <span>2PidF/Mu<sub>0</sub>I<sub>1</sub>I<sub>2</sub></span>")
			l = d*F/(2*10^-7*I1*I2)
			
			Binesh.AddToHTML("l = <span>2*"..Binesh.ProgressNumber(Settings.Zarib.Pi).."*"..Binesh.ProgressNumber(d).."*"..Binesh.ProgressNumber(F).."/4*"..Binesh.ProgressNumber(Settings.Zarib.Pi).."*10<sup>-7</sup>*"..Binesh.ProgressNumber(I1).."*"..Binesh.ProgressNumber(I2).."</span> &#8658; l = "..Binesh.ProgressNumber(l).." m")
			
			Binesh.AddToHTML("F = "..Binesh.ProgressNumber(F).." N", "V")
			Binesh.AddToHTML("I<sub>1</sub> = "..Binesh.ProgressNumber(I1).." A", "V")
			Binesh.AddToHTML("I<sub>2</sub> = "..Binesh.ProgressNumber(I2).." A", "V")
			Binesh.AddToHTML("d = "..Binesh.ProgressNumber(d).." m", "V")
			Binesh.AddToHTML("l = ?", "V")
		end
	end
	
	if d == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "d") ~= -1) then
		if F ~= nil and l ~= nil and I2 ~= nil and I1 ~= nil then
			Binesh.CreateHTMLFile("F = <span>Mu<sub>0</sub>/2Pi</span>*<span>I<sub>1</sub>I<sub>2</sub>/d</span>*l", "d = <span>Mu<sub>0</sub>I<sub>1</sub>I<sub>2</sub>l/2PiF</span>")
			d = 2*10^-7*I1*I2*l/F
			
			Binesh.AddToHTML("l = <span>4*"..Binesh.ProgressNumber(Settings.Zarib.Pi).."*10<sup>-7</sup>*"..Binesh.ProgressNumber(I1).."*"..Binesh.ProgressNumber(I2).."*"..Binesh.ProgressNumber(l).."/2*"..Binesh.ProgressNumber(Settings.Zarib.Pi).."*"..Binesh.ProgressNumber(F).."</span> &#8658; d = "..Binesh.ProgressNumber(d).." m")
			
			Binesh.AddToHTML("F = "..Binesh.ProgressNumber(F).." N", "V")
			Binesh.AddToHTML("I<sub>1</sub> = "..Binesh.ProgressNumber(I1).." A", "V")
			Binesh.AddToHTML("I<sub>2</sub> = "..Binesh.ProgressNumber(I2).." A", "V")
			Binesh.AddToHTML("l = "..Binesh.ProgressNumber(l).." m", "V")
			Binesh.AddToHTML("d = ?", "V")
		end
	end
end