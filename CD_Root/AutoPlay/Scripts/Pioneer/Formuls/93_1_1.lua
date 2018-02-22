function Binesh.F93_1_1()
	if Teta == nil then
		if _DeltaV_Electric == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaV") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1)) then
			if E_Electric ~= nil and d ~= nil then
				Binesh.CreateHTMLFile("DeltaV = Ed")
				_DeltaV_Electric = E_Electric*d
				Binesh.AddToHTML("DeltaV = "..Binesh.ProgressNumber(E_Electric).."*"..Binesh.ProgressNumber(d).." &#8658; DeltaV = "..Binesh.ProgressNumber(_DeltaV_Electric).." V")
				
				Binesh.AddToHTML("E = "..Binesh.ProgressNumber(E_Electric).." N/C", "V")
				Binesh.AddToHTML("d = "..Binesh.ProgressNumber(d).." m", "V")
				Binesh.AddToHTML("DeltaV = ?", "V")
			end
		end
		
		if E_Electric == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "E") ~= -1) then
			if _DeltaV_Electric ~= nil and d ~= nil then
				Binesh.CreateHTMLFile("DeltaV = Ed", "E = <span>DeltaV/d</span>")
				E_Electric = _DeltaV_Electric / d
				Binesh.AddToHTML("E = <span>"..Binesh.ProgressNumber(_DeltaV_Electric).."/"..Binesh.ProgressNumber(d).."</span> &#8658; E = "..Binesh.ProgressNumber(E_Electric).." N/C")
				
				Binesh.AddToHTML("DeltaV = "..Binesh.ProgressNumber(_DeltaV_Electric).." N/C", "V")
				Binesh.AddToHTML("d = "..Binesh.ProgressNumber(d).." m", "V")
				Binesh.AddToHTML("E = ?", "V")
			end
		end
		
		if d == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "d") ~= -1)) then 
			if _DeltaV_Electric ~= nil and E_Electric ~= nil then
				Binesh.CreateHTMLFile("DeltaV = Ed", "d = <span>DeltaV/E</span>")
				d = _DeltaV_Electric / E_Electric
				Binesh.AddToHTML("d = <span>"..Binesh.ProgressNumber(_DeltaV_Electric).."/"..Binesh.ProgressNumber(E_Electric).."</span> &#8658; d = "..Binesh.ProgressNumber(d).." m")
				
				Binesh.AddToHTML("DeltaV = "..Binesh.ProgressNumber(_DeltaV_Electric).." N/C", "V")
				Binesh.AddToHTML("E = "..Binesh.ProgressNumber(E_Electric).." m", "V")
				Binesh.AddToHTML("d = ?", "V")
			end
		end
	end
end