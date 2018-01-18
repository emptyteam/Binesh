function Binesh.F93_2_1()
	if _DeltaV_Electric == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é  €ÌÌ—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaV") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
		if E_Electric ~= nil and d ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("DeltaV = -EdcosTeta")
			_DeltaV_Electric = -E_Electric*d*Math.Cos(Math.Rad(Teta))
			Binesh.AddToHTML("DeltaV = -"..E_Electric.."*"..d.."*cos"..Teta.." &#8658; DeltaV = ".._DeltaV_Electric.." V")
			
			Binesh.AddToHTML("E: "..E_Electric.." N/C", "V")
			Binesh.AddToHTML("d: "..d.." m", "V")
			Binesh.AddToHTML("Teta: "..Teta.." <sup>o</sup>", "V")
			Binesh.AddToHTML("DeltaV: ?", "V")
		end
	end
	
	if E_Electric == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "E") ~= -1 then
		if _DeltaV_Electric ~= nil and d ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("DeltaV = -EdcosTeta", "E = - <span>DeltaV/dcosTeta</span>")
			E_Electric = -_DeltaV_Electric / (d*Math.Cos(Math.Rad(Teta)))
			Binesh.AddToHTML("E = - <span>".._DeltaV_Electric.."/"..d.."*cos"..Teta.."</span> &#8658; E = "..E_Electric.." N/C")
			
			Binesh.AddToHTML("DeltaV: ".._DeltaV_Electric.." V", "V")
			Binesh.AddToHTML("d: "..d.." m", "V")
			Binesh.AddToHTML("Teta: "..Teta.." <sup>o</sup>", "V")
			Binesh.AddToHTML("E: ?", "V")
		end
	end
	
	if d == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã«»Ã«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "d") ~= -1 then 
		if _DeltaV_Electric ~= nil and E_Electric ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("DeltaV = -EdcosTeta", "d = - <span>DeltaV/EcosTeta</span>")
			d = -_DeltaV_Electric / (E_Electric*Math.Cos(Math.Rad(Teta)))
			Binesh.AddToHTML("d = - <span>".._DeltaV_Electric.."/"..E_Electric.."</span> &#8658; d = "..d.." m")
			
			Binesh.AddToHTML("DeltaV: ".._DeltaV_Electric.." V", "V")
			Binesh.AddToHTML("E: "..E_Electric.." N/C", "V")
			Binesh.AddToHTML("Teta: "..Teta.." <sup>o</sup>", "V")
			Binesh.AddToHTML("d: ?", "V")
		end
	end
	
	if Teta == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Alpha") ~= -1 then
		if _DeltaV_Electric ~= nil and E_Electric ~= nil and d ~= nil then
			Binesh.CreateHTMLFile("DeltaV = -EdcosTeta", "cosTeta = - <span>DeltaV/Ed</span>")
			
			CosTeta = -_DeltaV_Electric / (E_Electric*d)
			Teta_Radian = Math.Acos(Math.Acos(Math.Cos(CosTeta)))
			Teta = Math.RadToDeg(Teta_Radian)
			
			Binesh.AddToHTML("cosTeta = - <span>".._DeltaV_Electric.."/"..E_Electric.."*"..d.."</span> &#8658; cosTeta = "..CosTeta.." &#8658; Teta<sub>Radian</sub> = "..Teta_Radian.." &#8658; Teta = "..Teta.."<sup>o</sup>")
			
			Binesh.AddToHTML("DeltaV: ".._DeltaV_Electric.." V", "V")
			Binesh.AddToHTML("E: "..E_Electric.." N/C", "V")
			Binesh.AddToHTML("d: "..d.." m", "V")
			Binesh.AddToHTML("Teta: ?", "V")
		end
	end
end