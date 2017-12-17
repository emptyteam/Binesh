if Teta == nil and Teta_Radian == nil then
	Binesh.AddUnknown("“«ÊÌÂ", "Teta")
end

if Omega == nil then
	Binesh.AddUnknown("»”«„œ", "Omega")
end

if t == nil then
	Binesh.AddUnknown("“„«‰", "t")
end

FindTeta = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ");
if FindTeta ~= -1 and ListBox.GetItemData("unknowns", FindTeta) == "Teta" or ListBox.GetItemData("unknowns", FindTeta) == "Alpha" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta") ~= -1 then
	if Omega ~= nil and t ~= nil then
		Binesh.CreateHTMLFile("Teta = Omegat")
		
		Teta = Omega*t
		
		Binesh.AddToHTML("Teta = "..Omega.."*"..t.." &#8658; Teta = "..Teta)
		
		Binesh.AddToHTML("Omega: "..Omega.." rad/s", "V")
		Binesh.AddToHTML("t: "..t.." s", "V")
		Binesh.AddToHTML("Teta: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Teta");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindOmega = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "»”«„œ");
if FindOmega ~= -1 and ListBox.GetItemData("unknowns", FindOmega) == "Omega" and ListBox.FindItem("Words", -1, LB_BYTEXT, "»”«„œ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Omega") ~= -1 then
	if Teta ~= nil and t ~= nil then
		Binesh.CreateHTMLFile("Teta = Omegat", "Omega = <span>Teta/t</span>")
		
		Omega = Teta/t
		
		Binesh.AddToHTML("Omega = <span>"..Omega.."/"..t.."</span> &#8658; Omega = "..Omega.." rad/s")
		
		Binesh.AddToHTML("Teta: "..Teta, "V")
		Binesh.AddToHTML("t: "..t.." s", "V")
		Binesh.AddToHTML("Omega: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "»”«„œ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Omega");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findt = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
if Findt ~= -1 and ListBox.GetItemData("unknowns", Findt) == "t" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1 then
	if Omega ~= nil and Teta ~= nil then
		Binesh.CreateHTMLFile("Teta = Omegat", "t = <span>Teta/Omega</span>")
		
		t = Teta/Omega
		
		Binesh.AddToHTML("t = "..Teta.."/"..Omega.." &#8658; t = "..t.." s")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("Teta: "..Teta, "V")
		Binesh.AddToHTML("Omega: "..Omega.." rad/s", "V")
		Binesh.AddToHTML("t: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "t");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end