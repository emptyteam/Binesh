function Binesh.F84()
	if QH == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "„‰»⁄ ê—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "QH") ~= -1 then 
		if QC ~= nil and W ~= nil then
			Binesh.CreateHTMLFile("|Q<sub>H</sub>| = W+Q<sub>C</sub>")
			QH = Math.Abs(W+QC);
			
			Binesh.AddToHTML("|Q<sub>H</sub>| = "..W.."+"..QC.." &#8658; |Q<sub>H</sub>| = "..QH.." J")
			
			Binesh.AddToHTML("|Q<sub>C</sub>|: "..QC.." J", "V")
			Binesh.AddToHTML("W: "..W.." J", "V")
			Binesh.AddToHTML("Q<sub>H</sub>: ?", "V")
		end
	end
	
	if W == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "ò«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1 then 
		if QC ~= nil and QH ~= nil then
			Binesh.CreateHTMLFile("|Q<sub>H</sub>| = W+Q<sub>C</sub>", "W = |Q<sub>H</sub>|-Q<sub>C</sub>")
			W = Math.Abs(QH)-QC
			
			Binesh.AddToHTML("W = |"..QH.."|-"..QC.." &#8658; W = "..W.." J")
			
			Binesh.AddToHTML("|Q<sub>C</sub>|: "..QC.." J", "V")
			Binesh.AddToHTML("Q<sub>H</sub>: "..QH.." J", "V")
			Binesh.AddToHTML("W: ?", "V")
		end
	end
	
	if QC == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "„‰»⁄ ”—œ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "QC") ~= -1 then 
		if QH ~= nil and W ~= nil then
			Binesh.CreateHTMLFile("|Q<sub>H</sub>| = W+Q<sub>C</sub>", "Q<sub>C</sub> = |Q<sub>H</sub>|-W")
			QC = Math.Abs(QH)-W
			
			Binesh.AddToHTML("Q<sub>C</sub> = |"..QH.."|-"..W.." &#8658; Q<sub>C</sub> = "..QC.." J")
			
			Binesh.AddToHTML("Q<sub>H</sub>: "..QH.." J", "V")
			Binesh.AddToHTML("W: "..W.." J", "V")
			Binesh.AddToHTML("|Q<sub>C</sub>|: ?", "V")
		end
	end
end