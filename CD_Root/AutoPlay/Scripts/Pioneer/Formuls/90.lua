function Binesh.F90()
	if Sigma == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "çê«·Ì ”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Sigma") ~= -1) then
		if q ~= nil and A ~= nil then
			Binesh.CreateHTMLFile("Sigma = <span>q/A</span>")
			Sigma = q/A
		
			Binesh.AddToHTML("Sigma = <span>"..Binesh.ProgressNumber(q).."/"..Binesh.ProgressNumber(A).."</span> &#8658; Sigma = "..Binesh.ProgressNumber(Sigma).." C/m<sup>2</sup>")
			
			Binesh.AddToHTML("A = "..Binesh.ProgressNumber(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("q = "..Binesh.ProgressNumber(q).." C", "V")
			Binesh.AddToHTML("Sigma = ?", "V")
		end
	end
	
	if q == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1) then
		if Sigma ~= nil and A ~= nil then
			Binesh.CreateHTMLFile("Sigma = <span>q/A</span>", "q = SigmaA")
			q = Sigma*A
			
			Binesh.AddToHTML("q = "..Binesh.ProgressNumber(Sigma).."*"..Binesh.ProgressNumber(A).." &#8658; q = "..Binesh.ProgressNumber(q).." C");
			
			Binesh.AddToHTML("Sigma = "..Binesh.ProgressNumber(Sigma).." C/m<sup>2</sup>", "V")
			Binesh.AddToHTML("q = "..Binesh.ProgressNumber(q).." C", "V")
			Binesh.AddToHTML("A = ?", "V")
		end
	end
	
	if A == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã”„ ”ÿÕ") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "A") ~= -1)) then
		if Sigma ~= nil and q ~= nil then
			Binesh.CreateHTMLFile("Sigma = <span>q/A</span>", "A = <span>q/Sigma</span>")
			
			A = q/Sigma
			
			Binesh.AddToHTML("A = <span>"..Binesh.ProgressNumber(q).."/"..Binesh.ProgressNumber(Sigma).."</span> &#8658; A = "..Binesh.ProgressNumber(A).." m<sup>2</sup>")
			
			Binesh.AddToHTML("Sigma = "..Binesh.ProgressNumber(Sigma).." C/m<sup>2</sup>", "V")
			Binesh.AddToHTML("A = "..Binesh.ProgressNumber(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("q = ?", "V")
		end
	end
end