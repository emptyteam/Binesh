function Binesh.F141()
	if Teta == nil and Teta_Radian == nil then
	
		Binesh.AddUnknown("“«ÊÌÂ", "Teta")
	end
	
	if T_141 == nil then
	
		Binesh.AddUnknown("œÊ—«‰", "T")
	end
	
	if t == nil then
	
		Binesh.AddUnknown("“„«‰", "t")
	end
	
	FindTeta = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ");
	if FindTeta ~= -1 and ListBox.GetItemData("unknowns", FindTeta) == "Teta" or ListBox.GetItemData("unknowns", FindTeta) == "Alpha" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta") ~= -1 then
		if T_141 ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("Teta = <span>2Pi/T</span>t")
			
			Teta = 2*Zarib.Pi*t/T_141
			
			Binesh.AddToHTML("Teta = <span>2*"..Zarib.Pi.."/"..T_141.."</span>*"..t.." &#8658; Teta = "..Teta)
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("T: "..T_141, "V")
			Binesh.AddToHTML("Teta: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Teta");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindT_141 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ—«‰");
	if FindT_141 ~= -1 and ListBox.GetItemData("unknowns", FindT_141) == "T" and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ—«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T") ~= -1 then
		if Teta ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("Teta = <span>2Pi/T<span>t", "T = <span>2Pi/Teta</span>t")
			
			T_141 = 2*Zarib.Pi*t/Math.Rad(Teta)
			
			Binesh.AddToHTML("T = <span>2*"..Zarib.Pi.."/"..Teta.."</span>*"..t.." &#8658; T = "..T_141)
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("T: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ—«‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "T");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findt = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
	if Findt ~= -1 and ListBox.GetItemData("unknowns", Findt) == "t" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1 then
		if Teta ~= nil and T_141 ~= nil then
			Binesh.CreateHTMLFile("Teta = <span>2Pi/T<span>*t", "t = <span>Teta/2Pi</span>T")
			
			t = Math.Rad(Teta)*T_141/(2*Zarib.Pi)
			
			Binesh.AddToHTML("t = <span>"..Teta.."/2*"..Zarib.Pi.."</span>*"..T_141.." &#8658; t = "..t.." s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("T: "..T_141, "V")
			Binesh.AddToHTML("t: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "t");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end