function Binesh.F88()
	if E_Electric == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "E") ~= -1 then
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
	
	if q == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
		if E_Electric ~= nil and r_3 ~= nil then
			Binesh.CreateHTMLFile("E = K<span>q/r<sup>2</sup></span>", "q = <span>Er<sup>2</sup>/K</span>")
			q = E_Electric*(r_3^2)/(4*10^-4)
			
			Binesh.AddToHTML("q = <span>"..E_Electric.."*"..r_3.."<sup>2</sup>/"..(4*10^-4).."</span> &#8658; q = "..q.." C")
			
			Binesh.AddToHTML("E: "..E_Electric.." N/C", "V")
			Binesh.AddToHTML("r: "..r_3.." m", "V")
			Binesh.AddToHTML("q: ?", "V")
		end
	end
	
	if r_3 == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "r") ~= -1 then
		if E_Electric ~= nil and q ~= nil then
			Binesh.CreateHTMLFile("E = K<span>q/r<sup>2</sup></span>", "r = Sqrt(<span>Kq/E</span>)")
			r_3 = Math.Sqrt((4*10^-4)*q/E_Electric)
			
			Binesh.AddToHTML("r = sqrt(<span>"..(4*10^-4).."*"..q.."/"..E_Electric.."</span>) &#8658; r = "..r_3.." m")
			
			Binesh.AddToHTML("E: "..E_Electric.." N/C", "V")
			Binesh.AddToHTML("q: "..q.." C", "V")
			Binesh.AddToHTML("r: ?", "V")
		end
	end
end