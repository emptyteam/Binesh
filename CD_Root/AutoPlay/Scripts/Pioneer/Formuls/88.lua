function Binesh.F88()
	if E_Electric == nil then
	
		Binesh.AddUnknown("„Ìœ«‰", "E")
	end
	
	if q == nil then
	
		Binesh.AddUnknown("–—Â", "q")
	end
	
	if r_3 == nil then
	
		Binesh.AddUnknown("›«’·Â", "r")
	end
	
	FindE_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰");
	if FindE_Electric ~= -1 and ListBox.GetItemData("unknowns", FindE_Electric) == "E" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "E") ~= -1 then
		if q ~= nil and r_3 ~= nil then
			Binesh.CreateHTMLFile("E = K*<span>q/r<sup>2</sup></span>")
			E_Electric = (9*10^9)*q/(r_3^2)
			
			Binesh.AddToHTML("E = "..(4*10^-4).."*<span>"..q.."/"..r_3.."<sup>2</sup></span> &#8658; E = "..E_Electric.." N/C")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("q: "..q.." C", "V")
			Binesh.AddToHTML("r: "..r_3.." m", "V")
			Binesh.AddToHTML("E: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "E");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findq = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â");
	if Findq ~= -1 and ListBox.GetItemData("unknowns", Findq) == "q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
		if E_Electric ~= nil and r_3 ~= nil then
			Binesh.CreateHTMLFile("E = K<span>q/r<sup>2</sup></span>", "q = <span>Er<sup>2</sup>/K</span>")
			q = E_Electric*(r_3^2)/(4*10^-4)
			
			Binesh.AddToHTML("q = <span>"..E_Electric.."*"..r_3.."<sup>2</sup>/"..(4*10^-4).."</span> &#8658; q = "..q.." C")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("E: "..E_Electric.." N/C", "V")
			Binesh.AddToHTML("r: "..r_3.." m", "V")
			Binesh.AddToHTML("q: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findr_3 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â");
	if Findr_3 ~= -1 and ListBox.GetItemData("unknowns", Findr_3) == "r" and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "r") ~= -1 then
		if E_Electric ~= nil and q ~= nil then
			Binesh.CreateHTMLFile("E = K<span>q/r<sup>2</sup></span>", "r = Sqrt(<span>Kq/E</span>)")
			r_3 = Math.Sqrt((4*10^-4)*q/E_Electric)
			
			Binesh.AddToHTML("r = sqrt(<span>"..(4*10^-4).."*"..q.."/"..E_Electric.."</span>) &#8658; r = "..r_3.." m")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("E: "..E_Electric.." N/C", "V")
			Binesh.AddToHTML("q: "..q.." C", "V")
			Binesh.AddToHTML("r: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "r");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end