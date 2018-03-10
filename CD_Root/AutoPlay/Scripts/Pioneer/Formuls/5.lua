function Binesh.F5()
	local Text = Input.GetText("Input1");
	if q ~= nil then
		q = math.abs(q)
		if String.Find(Text, "«·ò —Ê‰", 1, false) ~= -1 then
			q = -q
		end
	end
	
	if q == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1) then
		if n_e ~= nil or n_p ~= nil then
			Binesh.CreateHTMLFile("q = MoMne")
			if n_e ~= nil then
				q = n_e*(1.6*10^-19)
				Binesh.AddToHTML("q = "..Binesh.ProgressNumber(n_e).."*"..Binesh.ProgressNumber((1.6*10^-19)).." &#8658; q = "..Binesh.ProgressNumber(q).." C")
			elseif n_p ~= nil then
				q = n_p*(1.6*10^-19)
				Binesh.AddToHTML("q = "..Binesh.ProgressNumber(n_p).."*"..Binesh.ProgressNumber((1.6*10^-19)).." &#8658; q = "..Binesh.ProgressNumber(q).." C")
			end
			
			Binesh.AddToHTML("n = "..Binesh.ProgressNumber(n_e), "V")
			Binesh.AddToHTML("q = ?", "V")
		end
	end
	
	if n_e == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " ⁄œ«œ «·ò —Ê‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, " ⁄œ«œ Å—Ê Ê‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, " ⁄œ«œ –—Â") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1) then
		if q ~= nil then
			Binesh.CreateHTMLFile("MoMq = ne", "n = <span>q/e</span>")
			n_e = q / (1.6*10^-19)
			Binesh.AddToHTML("n = <span>"..Binesh.ProgressNumber(q).."/"..Binesh.ProgressNumber((1.6*10^-19)).."</span> &#8658; n = "..Binesh.ProgressNumber(n_e))
			
			Binesh.AddToHTML("q = "..Binesh.ProgressNumber(q).." C", "V")
			Binesh.AddToHTML("n = ?", "V")
		end
	end
end