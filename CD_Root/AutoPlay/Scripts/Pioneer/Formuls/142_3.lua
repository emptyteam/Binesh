function Binesh.F142_3()
	if Teta == nil and Teta_Radian == nil then
		Binesh.AddUnknown("ÒÇæíå", "Teta")
	end
	
	if Omega == nil then
		Binesh.AddUnknown("ÓÑÚÊ ÒÇæíå", "Omega")
	end
	
	if t == nil then
		Binesh.AddUnknown("ÒãÇä", "t")
	end
	
	FindTeta = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÒÇæíå");
	if FindTeta ~= -1 and ListBox.GetItemData("unknowns", FindTeta) == "Teta" or ListBox.GetItemData("unknowns", FindTeta) == "Alpha" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÒÇæíå") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta") ~= -1 then
		if Omega ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("Teta = Omegat")
			
			Teta = Omega*t
			
			Binesh.AddToHTML("Teta = "..Omega.."*"..t.." &#8658; Teta = "..Teta)
			
			Binesh.AddToHTML("Omega: "..Omega.." rad/s", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("Teta: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÒÇæíå");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Teta");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindOmega = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÓÑÚÊ ÒÇæíå");
	if FindOmega ~= -1 and ListBox.GetItemData("unknowns", FindOmega) == "Omega" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÓÑÚÊ ÒÇæíå") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Omega") ~= -1 then
		if Teta ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("Teta = Omegat", "Omega = <span>Teta/t</span>")
			
			Omega = Teta/t
			
			Binesh.AddToHTML("Omega = <span>"..Omega.."/"..t.."</span> &#8658; Omega = "..Omega.." rad/s")
			
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("Omega: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÓÑÚÊ ÒÇæíå");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Omega");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findt = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÒãÇä");
	if Findt ~= -1 and ListBox.GetItemData("unknowns", Findt) == "t" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÒãÇä") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1 then
		if Omega ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("Teta = Omegat", "t = <span>Teta/Omega</span>")
			
			t = Teta/Omega
			
			Binesh.AddToHTML("t = "..Teta.."/"..Omega.." &#8658; t = "..t.." s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("Omega: "..Omega.." rad/s", "V")
			Binesh.AddToHTML("t: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÒãÇä");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "t");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end