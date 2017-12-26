function Binesh.F17()
	if n_Glass == nil then
		Binesh.AddUnknown("÷—Ì» ‘ò” ", "n")
	end
	
	if i == nil then
		Binesh.AddUnknown("“«ÊÌÂ  «»‘", "i")
	end
	
	if r_Glass == nil then
		Binesh.AddUnknown("“«ÊÌÂ ‘ò” ", "r")
	end
	
	Findn_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» ‘ò” ");
	if Findn_Glass ~= -1 and ListBox.GetItemData("unknowns", Findn_Glass) == "n" and ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» ‘ò” ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1 then
		if i ~= nil and r_Glass ~= nil then
			Binesh.CreateHTMLFile("n = <span>sini/sinr</span>")
			n_Glass = Math.Sin(i)/Math.Sin(r)
			
			Binesh.AddToHTML("n = <span>"..Math.Sin(i).."/"..Math.Sin(r).."</span> &#8658; n = "..n_Glass)
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("i: "..i.."<sup>o</sup>", "V")
			Binesh.AddToHTML("r: "..r.."<sup>o</sup>", "V")
			Binesh.AddToHTML("n: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» ‘ò” ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "n");
			if unknownPersianindex == unknownSymbolindex then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findi = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ  «»‘");
	if Findi ~= -1 and ListBox.GetItemData("unknowns", Findi) == "i" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ  «»‘") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "i") ~= -1 then
		if n_Glass ~= nil and r_Glass ~= nil then
			Binesh.CreateHTMLFile("n = <span>sini/sinr</span>", "sini = n*sinr")
			Sini = n_Glass * Math.Sin(r_Glass)
			i_Radian = Math.Asin(Math.Asin(Math.Sin(Sini)))
			i = Math.RadToDeg(i_Radian)
			
			
			Binesh.AddToHTML("sini = "..n_Glass.."*sin"..r_Glass.." &#8658; sini = "..Sini.." &#8658; i<sub>Radian</sub> = "..i_Radian.." &#8658; i = "..i.."<sup>o</sup>")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("n: "..n_Glass, "V")
			Binesh.AddToHTML("r: "..r.."<sup>o</sup>", "V")
			Binesh.AddToHTML("i: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ  «»‘");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "i");
			if unknownPersianindex == unknownSymbolindex then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findr_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ ‘ò” ");
	if Findr_Glass ~= -1 and ListBox.GetItemData("unknowns", Findr_Glass) == "r" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ ‘ò” ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "r") ~= -1 then
		if n_Glass ~= nil and i ~= nil then
			Binesh.CreateHTMLFile("n = <span>sini/sinr</span>", "sinr = <span>sini/n<span>")
			Sinr_Glass = Math.Sin(i)/n_Glass
			r_Glass_Radian = Math.Asin(Math.Asin(Math.Sin(Sinr_Glass)))
			r_Glass = Math.RadToDeg(r_Glass_Radian)
			
			
			Binesh.AddToHTML("sinr = <span>"..sini.."/"..n_Glass.." &#8658; sinr = "..Sinr_Glass.." &#8658; r<sub>Radian</sub> = "..r_Glass.." &#8658; r = "..r_Glass.."<sup>o</sup>")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("n: "..n_Glass, "V")
			Binesh.AddToHTML("i: "..i.."<sup>o</sup>", "V")
			Binesh.AddToHTML("r: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ ‘ò” ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "r");
			if unknownPersianindex == unknownSymbolindex then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end