function Binesh.F97_3()
	if U == nil then
		Binesh.AddUnknown("«‰—éÌ", "U")
	end
	
	if q == nil then
		Binesh.AddUnknown("–—Â", "q")
	end
	
	if V_Electric == nil then
		Binesh.AddUnknown("Ê· «é", "V")
	end
	
	FindU = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ");
	if FindU ~= -1 and ListBox.GetItemData("unknowns", FindU) == "U" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1 then
		if V_Electric ~= nil and q ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span>qV")
			U = 0.5*q*V_Electric
			
			Binesh.AddToHTML("q: "..q.." C", "V")
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("U: ?", "V")
			
			Binesh.AddToHTML("U = <span>1/2</span>*"..q.."*"..V_Electric.." &#8658; U = "..U.." J")
			Web.Refresh("Web1");
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "U");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownindex);
			end
		end
	end
	
	Findq = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â");
	if Findq ~= -1 and ListBox.GetItemData("unknowns", Findq) == "q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
		if V_Electric ~= nil and U ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span>qV", "q = <span>2U/V</span>")
			q = (2*U)/V_Electric
			
			Binesh.AddToHTML("U: "..U.." J", "V")
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("q: ?", "V")
			
			Binesh.AddToHTML("q = <span>2*"..U.."/"..V_Electric.."</span> &#8658; q = "..q.." C")
			Web.Refresh("Web1");
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownindex);
			end
		end
	end
	
	FindV_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é");
	if FindV_Electric ~= -1 and ListBox.GetItemData("unknowns", FindV_Electric) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
		if U ~= nil and q ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span>qV", "V = <span>2U/q</span>")
			V_Electric = Math.Sqrt(2*U/q)
			
			Binesh.AddToHTML("U: "..U.." J", "V")
			Binesh.AddToHTML("q: "..q.." C", "V")
			Binesh.AddToHTML("V: ?", "V")
			
			
			Binesh.AddToHTML("V = Sqrt(2*"..U.."/"..q..") &#8658; V = "..V_Speed.." m/s")
			Web.Refresh("Web1");
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownindex);
			end
		end
	end
end