if n_Glass == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» ‘ò” ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'n' then
		ListBox.AddItem("unknowns", "÷—Ì» ‘ò” ", "n");
	end
end

if i == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ  «»‘")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'i' then
		ListBox.AddItem("unknowns", "“«ÊÌÂ  «»‘", "i");
	end
end

if r_Glass == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ ‘ò” ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'r' then
		ListBox.AddItem("unknowns", "“«ÊÌÂ ‘ò” ", "r");
	end
end

Findn_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» ‘ò” ")
Findi = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ  «»‘");
Findr_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ ‘ò” ")

if Findn_Glass ~= -1 and ListBox.GetItemData("unknowns", Findn_Glass) == "n" and ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» ‘ò” ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1 then
	if i ~= nil and r_Glass ~= nil then
		Binesh.CreateHTMLFile("n = <span>sini/sinr</span>")
		n_Glass = Math.Sin(i)/Math.Sin(r)
		
		Binesh.AddToHTML("n = <span>"..Math.Sin(i).."/"..Math.Sin(r).."</span> &#8658; n = "..n_Glass.."m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» ‘ò” ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "n");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findi ~= -1 and ListBox.GetItemData("unknowns", Findi) == "i" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ  «»‘") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "i") ~= -1 then
	if n_Glass ~= nil and r_Glass ~= nil then
		Binesh.CreateHTMLFile("n = <span>sini/sinr</span>", "sini = nsinr")
		sin_i = n_Glass * Math.Sin(r_Glass)
		i = Math.Asin(sin_i)
		Binesh.AddToHTML("sini = "..n_Glass.."*sin"..r_Glass.." &#8658; sini = "..sin_i.." &#8658; i = "..i.."<sup>o</sup>")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ  «»‘");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "i");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findr_Glass ~= -1 and ListBox.GetItemData("unknowns", Findr_Glass) == "r" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ ‘ò” ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "r") ~= -1 then
	if n_Glass ~= nil and i ~= nil then
		Binesh.CreateHTMLFile("n = <span>sini/sinr</span>", "sinr = <span>sini/n<span>")
		sin_r_Glass = Math.Sin(i)/n_Glass
		r_Glass = Math.Asin(sin_r_Glass)
		Binesh.AddToHTML("sinr = <span>"..sini.."/"..n_Glass.." &#8658; sinr = "..sin_r_Glass.." &#8658; r = "..r_Glass.."<sup>o</sup>")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ ‘ò” ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "r");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end