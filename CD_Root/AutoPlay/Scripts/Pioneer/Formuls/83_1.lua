function Binesh.F83_1()
	if T_CF ~= nil or T_HF then
		Binesh.CreateHTMLFile("F = <span>9/5</span>Teta+32", "Teta = <span>5/9</span>(F-32)")
	end
	
	if T_CF ~= nil then
		T_CC = 5/9*(T_CF-32)
		Binesh.AddToHTML("Teta<sub>T<sub>C</sub></sub> = <span>5/9</span>("..Binesh.Convert_e(T_CF).."-32) &#8658; Teta = "..Binesh.Convert_e(T_CC).." C")
	end
	
	if T_HF ~= nil then
		T_HC = 5/9*(T_HF-32)
		Binesh.AddToHTML("Teta<sub>T<sub>H</sub></sub> = <span>5/9</span>("..Binesh.Convert_e(T_HF).."-32) &#8658; Teta = "..Binesh.Convert_e(T_HC).." C")
	end
	
	if T_CC ~= nil or T_HC ~= nil then
		Binesh.CreateHTMLFile("T = Teta+273")
	end
	
	if T_CC ~= nil then
		T_C = T_CC+273
		Binesh.AddToHTML("T<sub>C</sub> = "..Binesh.Convert_e(T_CC).."+273 &#8658; T<sub>C</sub> = "..Binesh.Convert_e(T_C).." K")
	end
	if T_HC ~= nil then
		T_H = T_HC+273
		Binesh.AddToHTML("T<sub>H</sub> = "..Binesh.Convert_e(T_HC).."+273 &#8658; T<sub>H</sub> = "..Binesh.Convert_e(T_H).." K")
	end
	
	if EtaK == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "»«“œÂ ò«—‰Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Eta_max") ~= -1) then
		if T_C ~= nil and T_H ~= nil then
			Binesh.CreateHTMLFile("Eta<sub>max</sub> = 1- <span>T<sub>C</sub>/T<sub>H</sub></span>")
			
			EtaK = 1-(T_C/T_H)
			
			Binesh.AddToHTML("T<sub>C</sub>: "..Binesh.Convert_e(T_C).."<sup>o</sup>K", "V")
			Binesh.AddToHTML("T<sub>H</sub>: "..Binesh.Convert_e(T_H).."<sup>o</sup>K", "V")
			Binesh.AddToHTML("Eta<sub>max</sub>: ?", "V")
			
			Binesh.AddToHTML("Eta<sub>max</sub> = 1-<span>"..Binesh.Convert_e(T_C).."/"..Binesh.Convert_e(T_H).."</span> &#8658; Eta<sub>max</sub> = "..Binesh.Convert_e(EtaK))
		end
	end
	
	if T_C == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„« „‰»⁄ ”—œ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "TC") ~= -1) then
		if EtaK ~= nil and T_H ~= nil then
			Binesh.CreateHTMLFile("Eta<sub>max</sub> = 1- <span>T<sub>C</sub>/T<sub>H</sub></span>", "T<sub>C</sub> = -(-1+Eta<sub>max</sub>)T<sub>H</sub>")
			
			TC = -(-1+EtaK)*T_H
			
			Binesh.AddToHTML("Eta<sub>max</sub>: "..Binesh.Convert_e(EtaK), "V")
			Binesh.AddToHTML("T<sub>H</sub>: "..Binesh.Convert_e(T_H).."<sup>o</sup>K", "V")
			Binesh.AddToHTML("T<sub>C</sub>: ?", "V")
			
			Binesh.AddToHTML("T<sub>C</sub> = -(-1+"..Binesh.Convert_e(EtaK)..")*"..Binesh.Convert_e(T_H).." &#8658; T<sub>C</sub> = "..Binesh.Convert_e(TC).."<sup>o</sup>K")
		end
	end
	
	if T_H == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„‰»⁄ ê—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "TH") ~= -1) then
		if EtaK ~= nil and T_C ~= nil then
			Binesh.CreateHTMLFile("Eta<sub>max</sub> = 1- <span>T<sub>C</sub>/T<sub>H</sub></span>", "T<sub>H</sub> = - <span>T<sub>C</sub>/(-1+Eta<sub>max</sub>)</span>")
			T_H = -T_C/(-1+EtaK)
			
			Binesh.AddToHTML("T<sub>C</sub>: "..Binesh.Convert_e(T_C).."<sup>o</sup>K", "V")
			Binesh.AddToHTML("Eta<sub>max</sub>: "..Binesh.Convert_e(EtaK), "V")
			Binesh.AddToHTML("T<subH</sub>: ?", "V")
			
			Binesh.AddToHTML("T<sub>H</sub> = - <span>"..Binesh.Convert_e(T_C).."/(-1+"..Binesh.Convert_e(EtaK)..")</span> &#8658; T<sub>H</sub> = "..Binesh.Convert_e(T_H).."<sup>o</sup>K")
		end
	end
end