if C == nil and C_Radian == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ Õœ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'C' then
		ListBox.AddItem("unknowns", "“«ÊÌÂ Õœ", "C");
	end
end

if n_Glass == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» ‘ò” ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'n' then
		ListBox.AddItem("unknowns", "÷—Ì» ‘ò” ", "n");
	end
end

FindC = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ Õœ")
Findn_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» ‘ò” ");

if C_Radian ~= nil then
	Binesh.CreateHTMLFile("<span>R/Pi</span> = <span>D/180</span>", "D = <span>R*180/Pi</span>")
	C = Math.RadToDeg(C_Radian)
	Binesh.AddToHTML("D<sub>C</sub> = <span>"..C_Radian.."*180/"..Zarib.Pi.."</span> &#8658; D<sub>C</sub> = "..C.."<sup>o</sup>")
	Binesh.AddToHTML("<br>")
end

if FindC ~= -1 and ListBox.GetItemData("unknowns", FindC) == "C" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ Õœ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "C") ~= -1 then
	if n_Glass ~= nil then
		Binesh.CreateHTMLFile("sinC = <span>1/n</span>")
		sinC = Math.Sin(1/n_Glass)
		Binesh.AddToHTML("sinC = <span> 1/"..n_Glass.."</span> &#8658; sinC = "..sinC.." &#8658 C = "..Math.Asin(sinC).."<sup>o</sup>")
		
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ Õœ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "C");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findn_Glass ~= -1 and ListBox.GetItemData("unknowns", Findn_Glass) == "n" and ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» ‘ò” ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1 then
	if C ~= nil then
		Binesh.CreateHTMLFile("sinC = <span>1/n</span>", "n = <span>1/sinC</span>")
		n_Glass = 1/Math.Sin(Math.Rad(C))
		
		Binesh.AddToHTML("n = <span>1/"..sinC.."</span> &#8658; n = "..n_Glass.."m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» ‘ò” ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "n");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end