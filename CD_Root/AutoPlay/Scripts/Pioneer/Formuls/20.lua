function Binesh.F20()
	if C == nil and C_Radian == nil then
		Binesh.AddUnknown("“«ÊÌÂ Õœ", "C")
	end
	
	if n_Glass == nil then
		Binesh.AddUnknown("÷—Ì» ‘ò” ", "n")
	end
	
	if C_Radian ~= nil then
		Binesh.CreateHTMLFile("<span>R/Pi</span> = <span>D/180</span>", "D = <span>180R/Pi</span>")
		C = Math.RadToDeg(C_Radian)
		Binesh.AddToHTML("D<sub>C</sub> = <span>180*"..C_Radian.."/"..Zarib.Pi.."</span> &#8658; D<sub>C</sub> = "..C.."<sup>o</sup>")
		Binesh.AddToHTML("<br>")
	end
	
	FindC = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ Õœ")
	if FindC ~= -1 and ListBox.GetItemData("unknowns", FindC) == "C" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ Õœ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "C") ~= -1 then
		if n_Glass ~= nil then
			Binesh.CreateHTMLFile("sinC = <span>1/n</span>")
			SinC = 1/n_Glass
			C_Radian = Math.Asin(Math.Asin(Math.Sin(SinC)))
			C = Math.RadToDeg(C_Radian)
			
			Binesh.AddToHTML("sinC = <span> 1/"..n_Glass.."</span> &#8658; sinC = "..SinC.." &#8658 C<sub>Radian</sub> = "..C_Radian.." &#8658 C = "..C.."<sup>o</sup>")
			
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("n: "..n_Glass, "V")
			Binesh.AddToHTML("C: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ Õœ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "C");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findn_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» ‘ò” ");
	if Findn_Glass ~= -1 and ListBox.GetItemData("unknowns", Findn_Glass) == "n" and ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» ‘ò” ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1 then
		if C ~= nil then
			Binesh.CreateHTMLFile("sinC = <span>1/n</span>", "n = <span>1/sinC</span>")
			n_Glass = 1/Math.Sin(Math.Rad(C))
			
			Binesh.AddToHTML("n = <span>1/sin"..C.."</span> &#8658; n = "..n_Glass.." m")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("C: "..C.." <sup>o</sup>", "V")
			Binesh.AddToHTML("n: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» ‘ò” ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "n");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end