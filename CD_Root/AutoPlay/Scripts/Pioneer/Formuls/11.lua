function Binesh.F11()
	if Sp == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "”«ÌÂ ”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "S`") ~= -1) then
		if S ~= nil and p_Source ~= nil and q_Source ~= nil then
			Binesh.CreateHTMLFile("<span>S`/S</span> = (<span>q/p</span>)<sup>2</sup>", "S` = <span>q<sup>2</sup>*S/p<sup>2</sup></span>")
			Sp = (q_Source^2)*S/(p_Source^2)
			
			Binesh.AddToHTML("S` = <span>"..Binesh.Convert_e(q_Source).."<sup>2</sup>*"..Binesh.Convert_e(S).."/"..Binesh.Convert_e(p_Source).."<sup>2</sup></span> &#8658; S` = "..Binesh.Convert_e(Sp).." m<sup>2<sup>")
			
			Binesh.AddToHTML("p: "..Binesh.Convert_e(p_Source).."m", "V")
			Binesh.AddToHTML("q: "..Binesh.Convert_e(q_Source).."m", "V")
			Binesh.AddToHTML("S`: "..Binesh.Convert_e(Sp).."m<sup>2<sup>", "V")
			Binesh.AddToHTML("S: ?", "V")
		end
	end
	
	if S == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã”„ ”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "S") ~= -1) then
		if Sp ~= nil and p_Source ~= nil and q_Source ~= nil then
			Binesh.CreateHTMLFile("<span>S`/S</span> = (<span>q/p</span>)<sup>2</sup>", "S = <span>p<sup>2</sup>*S`/q<sup>2</sup></span>")
			S = (p_Source^2)*Sp/(q_Source^2)
			
			Binesh.AddToHTML("S = <span>"..Binesh.Convert_e(p_Source).."<sup>2</sup>*"..Binesh.Convert_e(Sp).."/"..Binesh.Convert_e(q_Source).."<sup>2</sup></span> &#8658; S = "..Binesh.Convert_e(S).." m<sup>2<sup>")
			
			Binesh.AddToHTML("p: "..Binesh.Convert_e(p_Source).."m", "V")
			Binesh.AddToHTML("q: "..Binesh.Convert_e(q_Source).."m", "V")
			Binesh.AddToHTML("S: "..Binesh.Convert_e(S).."m<sup>2<sup>", "V")
			Binesh.AddToHTML("S`: ?", "V")
		end
	end
	
	if p_Source == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â „‰»⁄ ‰Ê— Ã”„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "p") ~= -1) then
		if Sp ~= nil and S ~= nil and q ~= nil then
			Binesh.CreateHTMLFile("<span>S`/S</span> = (<span>q/p</span>)<sup>2</sup>", "p = <span>sqrt(S*q<sup>2</sup>/S`)</span>")
			p_Source = Math.Sqrt(S*q_Source^2/Sp)
			
			Binesh.AddToHTML("p = <span>sqrt("..Binesh.Convert_e(S).."*"..Binesh.Convert_e(q_Source).."<sup>2</sup>/"..Binesh.Convert_e(Sp)..")</span> &#8658; p = "..Binesh.Convert_e(p_Source).." m")
			
			Binesh.AddToHTML("q: "..Binesh.Convert_e(q_Source).."m", "V")
			Binesh.AddToHTML("S: "..Binesh.Convert_e(S).."m<sup>2<sup>", "V")
			Binesh.AddToHTML("S`: "..Binesh.Convert_e(Sp).."m<sup>2<sup>", "V")
			Binesh.AddToHTML("p: ?", "V")
		end
	end
	
	if q_Source == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â „‰»⁄ ‰Ê— ”«ÌÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1) then
		if Sp ~= nil and S ~= nil and p_Source ~= nil then
			Binesh.CreateHTMLFile("<span>S`/S</span> = (<span>q/p</span>)<sup>2</sup>", "q = <span>sqrt(S`*P<sup>2</sup>/S)</span>")
			q_Source = Math.Sqrt(Sp*p_Source^2/S)
			
			Binesh.AddToHTML("q = <span>sqrt("..Binesh.Convert_e(Sp).."*"..Binesh.Convert_e(p_Source).."<sup>2</sup>)/"..Binesh.Convert_e(S).."</span> &#8658; q = "..Binesh.Convert_e(q_Source).." m")
			
			Binesh.AddToHTML("p: "..Binesh.Convert_e(p_Source).."m", "V")
			Binesh.AddToHTML("S: "..Binesh.Convert_e(S).."m<sup>2<sup>", "V")
			Binesh.AddToHTML("S`: "..Binesh.Convert_e(Sp).."m<sup>2<sup>", "V")
			Binesh.AddToHTML("q: ?", "V")
		end
	end
end