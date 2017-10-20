if n2_Glass == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ÷—Ì» ‘ò”  „ÕÌÿ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'n2' then
		ListBox.AddItem("unknowns", "œÊ„Ì‰ ÷—Ì» ‘ò”  „ÕÌÿ", "n2");
	end
end

if n1_Glass == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ÷—Ì» ‘ò”  „ÕÌÿ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'n1' then
		ListBox.AddItem("unknowns", "«Ê·Ì‰ ÷—Ì» ‘ò”  „ÕÌÿ", "n1");
	end
end


if i == nil and i_Radian == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ  «»‘")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'i' then
		ListBox.AddItem("unknowns", "“«ÊÌÂ  «»‘", "i");
	end
end

if r_Glass == nil and r_Glass_Radian == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ ‘ò” ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'r' then
		ListBox.AddItem("unknowns", "“«ÊÌÂ ‘ò” ", "r");
	end
end

Findn2_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ÷—Ì» ‘ò”  „ÕÌÿ")
Findn1_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ÷—Ì» ‘ò”  „ÕÌÿ")
Findi = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ  «»‘")
Findr_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ ‘ò” ")

if i_Radian ~= nil or r_Glass_Radian ~= nil then
	Binesh.CreateHTMLFile("<span>R/Pi</span> = <span>D/180</span>", "D = <span>R*180/Pi</span>")
end

if i_Radian ~= nil then
	i = Math.RadToDeg(i_Radian)
	Binesh.AddToHTML("D<sub>i</sub> = <span>"..i_Radian.."*180/"..Zarib.Pi.."</span> &#8658; D<sub>i</sub> = "..i.."<sup>o</sup>")
	Binesh.AddToHTML("<br>")
end

if r_Glass_Radian ~= nil then
	r_Glass = Math.RadToDeg(r_Glass_Radian)
	Binesh.AddToHTML("D<sub>r</sub> = <span>"..r_Glass.."*180/"..Zarib.Pi.."</span> &#8658; D<sub>r</sub> = "..r_Glass.."<sup>o</sup>")
	Binesh.AddToHTML("<br>")
end

if Findn2_Glass ~= -1 and ListBox.GetItemData("unknowns", Findn2_Glass) == "n2" and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ÷—Ì» ‘ò”  „ÕÌÿ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n2") ~= -1 then
	if n1_Glass ~= nil and i ~= nil and r_Glass ~= nil then
		Binesh.CreateHTMLFile("<span>n<sub>2</sub>/n<sub>1</sub> = <span>sini/sinr</span>", "n<sub>2</sub> = <span>sini*n<sub>1</sub>/sinr</span>")
		
		n2_Glass = Math.Sin(Math.Rad(i))*n1_Glass/Math.Sin(Math.Rad(r_Glass))
	
		Binesh.AddToHTML("n<sub>2</sub> = <span>sin"..i.."*"..n1_Glass.."/sin"..r_Glass.."</span> &#8658; n<sub>2</sub> = "..n2_Glass.."m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ÷—Ì» ‘ò”  „ÕÌÿ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "n2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findn1_Glass ~= -1 and ListBox.GetItemData("unknowns", Findn1_Glass) == "n1" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ÷—Ì» ‘ò”  „ÕÌÿ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n1") ~= -1 then
	if n2_Glass ~= nil and i ~= nil and r_Glass ~= nil then
		Binesh.CreateHTMLFile("<span>n<sub>2</sub>/n<sub>1</sub> = <span>sini/sinr</span>", "n<sub>1</sub> = <span>sinr*n<sub>2</sub>/sini</span>")
		n1_Glass = Math.Sin(Math.Rad(i))*n2_Glass/Math.Sin(Math.Rad(r_Glass))
		
		Binesh.AddToHTML("n<sub>1</sub> = <span>sin"..i.."*"..n2_Glass.."/sin"..r_Glass.."</span>  &#8658; n<sub>1</sub> = "..n1_Glass.."m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ÷—Ì» ‘ò”  „ÕÌÿ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "n1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findi ~= -1 and ListBox.GetItemData("unknowns", Findi) == "i" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ  «»‘") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "i") ~= -1 then
	if n2_Glass ~= nil and n1_Glass ~= nil and r_Glass ~= nil then
		Binesh.CreateHTMLFile("<span>n<sub>2</sub>/n<sub>1</sub> = <span>sini/sinr</span>", "sini = <span>sinr*n<sub>2</sub>/n<sub>1</sub></span>")
		
		sini = Math.Sin(Math.Rad(r_Glass))*n2_Glass/n1_Glass
		
		Binesh.AddToHTML("sini = <span>sin"..r_Glass.."*"..n2_Glass.."/"..n1_Glass.."</span> &#8658; sini = "..sini.." &#8658; i = "..Math.Asin(sini).."<sup>o</sup>")

		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ  «»‘");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "i");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findr_Glass ~= -1 and ListBox.GetItemData("unknowns", Findr_Glass) == "r" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ ‘ò” ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "r") ~= -1 then
	if n2_Glass ~= nil and n1_Glass ~= nil and i ~= nil then
		Binesh.CreateHTMLFile("<span>n<sub>2</sub>/n<sub>1</sub> = <span>sini/sinr</span>", "sinr = <span>sini*n<sub>1</sub>/n<sub>2</sub></span>")
		
		sinr_Glass = Math.Sin(Math.Rad(i))*n1_Glass/n2_Glass
		
		Binesh.AddToHTML("sinr = <span>sin"..i.."*"..n1_Glass.."/"..n2_Glass.."</span> &#8658; sinr = "..sinr_Glass.." &#8658; r = "..Math.Asin(sinr_Glass).."<sup>o</sup>")

		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ ‘ò” ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "r");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end