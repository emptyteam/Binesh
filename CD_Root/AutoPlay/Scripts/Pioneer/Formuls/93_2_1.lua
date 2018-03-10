function Binesh.F93_2_1()
	if _DeltaV_Electric == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaV") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1)) then
		if E_Electric ~= nil and d ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("DeltaV = -EdCosTeta")
			_DeltaV_Electric = -E_Electric*d*Math.Cos(Math.Rad(Teta))
			Binesh.AddToHTML("DeltaV = -"..Binesh.ProgressNumber(E_Electric).."*"..Binesh.ProgressNumber(d).."*Cos"..Binesh.ProgressNumber(Teta).." &#8658; DeltaV = "..Binesh.ProgressNumber(_DeltaV_Electric).." V")
			
			Binesh.AddToHTML("E = "..Binesh.ProgressNumber(E_Electric).." N/C", "V")
			Binesh.AddToHTML("d = "..Binesh.ProgressNumber(d).." m", "V")
			Binesh.AddToHTML("Teta = "..Binesh.ProgressNumber(Teta).." <sup>o</sup>", "V")
			Binesh.AddToHTML("DeltaV = ?", "V")
		end
	end
	
	if E_Electric == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "E") ~= -1) then
		if _DeltaV_Electric ~= nil and d ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("DeltaV = -EdCosTeta", "E = - <span>DeltaV/dCosTeta</span>")
			E_Electric = -_DeltaV_Electric / (d*Math.Cos(Math.Rad(Teta)))
			Binesh.AddToHTML("E = - <span>"..Binesh.ProgressNumber(_DeltaV_Electric).."/"..Binesh.ProgressNumber(d).."*Cos"..Binesh.ProgressNumber(Teta).."</span> &#8658; E = "..Binesh.ProgressNumber(E_Electric).." N/C")
			
			Binesh.AddToHTML("DeltaV = "..Binesh.ProgressNumber(_DeltaV_Electric).." V", "V")
			Binesh.AddToHTML("d = "..Binesh.ProgressNumber(d).." m", "V")
			Binesh.AddToHTML("Teta = "..Binesh.ProgressNumber(Teta).." <sup>o</sup>", "V")
			Binesh.AddToHTML("E = ?", "V")
		end
	end
	
	if d == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "d") ~= -1) then 
		if _DeltaV_Electric ~= nil and E_Electric ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("DeltaV = -EdCosTeta", "d = - <span>DeltaV/ECosTeta</span>")
			d = -_DeltaV_Electric / (E_Electric*Math.Cos(Math.Rad(Teta)))
			Binesh.AddToHTML("d = - <span>"..Binesh.ProgressNumber(_DeltaV_Electric).."/"..Binesh.ProgressNumber(E_Electric).."</span> &#8658; d = "..Binesh.ProgressNumber(d).." m")
			
			Binesh.AddToHTML("DeltaV = "..Binesh.ProgressNumber(_DeltaV_Electric).." V", "V")
			Binesh.AddToHTML("E = "..Binesh.ProgressNumber(E_Electric).." N/C", "V")
			Binesh.AddToHTML("Teta = "..Binesh.ProgressNumber(Teta).." <sup>o</sup>", "V")
			Binesh.AddToHTML("d = ?", "V")
		end
	end
	
	if Teta == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Alpha") ~= -1)) then
		if _DeltaV_Electric ~= nil and E_Electric ~= nil and d ~= nil then
			Binesh.CreateHTMLFile("DeltaV = -EdCosTeta", "CosTeta = - <span>DeltaV/Ed</span>")
			
			CosTeta = -_DeltaV_Electric / (E_Electric*d)
			Teta_Radian = Math.Acos(Math.Acos(Math.Cos(CosTeta)))
			Teta = Math.RadToDeg(Teta_Radian)
			
			Binesh.AddToHTML("CosTeta = - <span>"..Binesh.ProgressNumber(_DeltaV_Electric).."/"..Binesh.ProgressNumber(E_Electric).."*"..Binesh.ProgressNumber(d).."</span> &#8658; CosTeta = "..Binesh.ProgressNumber(CosTeta).." &#8658; Teta<sub>Radian</sub> = "..Binesh.ProgressNumber(Teta_Radian).." &#8658; Teta = "..Binesh.ProgressNumber(Teta).."<sup>o</sup>")
			
			Binesh.AddToHTML("DeltaV = "..Binesh.ProgressNumber(_DeltaV_Electric).." V", "V")
			Binesh.AddToHTML("E = "..Binesh.ProgressNumber(E_Electric).." N/C", "V")
			Binesh.AddToHTML("d = "..Binesh.ProgressNumber(d).." m", "V")
			Binesh.AddToHTML("Teta = ?", "V")
		end
	end
end