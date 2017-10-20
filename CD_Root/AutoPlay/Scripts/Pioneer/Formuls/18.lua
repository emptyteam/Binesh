if n_Glass == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» ‘ò” ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'n' then
		ListBox.AddItem("unknowns", "÷—Ì» ‘ò” ", "n");
	end
end

if C_Speed_Glass == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Œ·«¡ ”—⁄ ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'C' then
		ListBox.AddItem("unknowns", "Œ·«¡ ”—⁄ ", "C");
	end
end

if V_Speed_Glass == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ÕÌÿ ‘›«› ”—⁄ ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'V' then
		ListBox.AddItem("unknowns", "„ÕÌÿ ‘›«› ”—⁄ ", "V");
	end
end

Findn_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» ‘ò” ")
FindC_Speed_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Œ·«¡ ”—⁄ ");
FindV_Speed_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ÕÌÿ ‘›«› ”—⁄ ")

if Findn_Glass ~= -1 and ListBox.GetItemData("unknowns", Findn_Glass) == "n" and ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» ‘ò” ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1 then
	if V_Speed_Glass ~= nil and C_Speed_Glass ~= nil then
		Binesh.CreateHTMLFile("n = <span>C/V</span>")
		n_Glass =  C_Speed_Glass/ V_Speed_Glass
		
		Binesh.AddToHTML("n = <span>".. C_Speed_Glass.."/"..V_Speed_Glass.."</span> &#8658; n = "..n_Glass.." m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("C = "..C_Speed_Glass.." m/s" ,"V")
		Binesh.AddToHTML("V = "..V_Speed_Glass.." m/s","V")
		Binesh.AddToHTML("n = "..n_Glass.." m","V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "÷—Ì» ‘ò” ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "n");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindC_Speed_Glass ~= -1 and ListBox.GetItemData("unknowns", FindC_Speed_Glass) == "C" then
	if  V_Speed_Glass ~= nil and n_Glass ~= nil then
		Binesh.CreateHTMLFile("n = <span>C/V</span>", "C = nV")
		C_Speed_Glass = n_Glass*V_Speed_Glass
		
		Binesh.AddToHTML("C = "..n_Glass.."*"..V_Speed_Glass.." &#8658; C = "..C_Speed_Glass.." m/s")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("n = "..n_Glass.." m","V")
		Binesh.AddToHTML("V = "..V_Speed_Glass.." m/s","V")
		Binesh.AddToHTML("C = "..C_Speed_Glass.." m/s" ,"V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Œ·«¡ ”—⁄ ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "m/s");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindV_Speed_Glass ~= -1 and ListBox.GetItemData("unknowns", FindV) == "V" then
	if C_Speed_Glass ~= nil and n_Glass ~= nil then
		Binesh.CreateHTMLFile("n = <span>C/V</span>", "V = <span>C/n</span>")
		V_Speed_Glass = C_Speed_Glass/n_Glass
		
		Binesh.AddToHTML("V = "..C_Speed_Glass.."/"..n_Glass.." &#8658; V = "..V_Speed_Glass.." m/s")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("C = "..C_Speed_Glass.." m/s" ,"V")
		Binesh.AddToHTML("n = "..n_Glass.." m","V")
		Binesh.AddToHTML("V = "..V_Speed_Glass.." m/s","V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ÕÌÿ ‘›«› ”—⁄ ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end