function Binesh.F88()
	if E_Electric == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "E") ~= -1) then
		if q ~= nil and r ~= nil then
			Binesh.CreateHTMLFile("E = K<span>q/r<sup>2</sup></span>")
			E_Electric = ((9*10^9)*q)/(r^2)
			
			Binesh.AddToHTML("E = "..Binesh.Convert_e((9*10^9)).."*<span>"..Binesh.Convert_e(q).."/"..Binesh.Convert_e(r).."<sup>2</sup></span> &#8658; E = "..Binesh.Convert_e(E_Electric).." N/C")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("q: "..Binesh.Convert_e(q).." C", "V")
			Binesh.AddToHTML("r: "..Binesh.Convert_e(r).." m", "V")
			Binesh.AddToHTML("E: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "E");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	if q == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1) then
		if E_Electric ~= nil and r ~= nil then
			Binesh.CreateHTMLFile("E = K<span>q/r<sup>2</sup></span>", "q = <span>Er<sup>2</sup>/K</span>")
			q = (E_Electric*(r^2))/(9*10^9)
			
			Binesh.AddToHTML("q = <span>"..Binesh.Convert_e(E_Electric).."*"..Binesh.Convert_e(r).."<sup>2</sup>/"..Binesh.Convert_e((9*10^9)).."</span> &#8658; q = "..Binesh.Convert_e(q).." C")
			
			Binesh.AddToHTML("E: "..Binesh.Convert_e(E_Electric).." N/C", "V")
			Binesh.AddToHTML("r: "..Binesh.Convert_e(r).." m", "V")
			Binesh.AddToHTML("q: ?", "V")
		end
	end
	
	if r == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "r") ~= -1) then
		if E_Electric ~= nil and q ~= nil then
			Binesh.CreateHTMLFile("E = K<span>q/r<sup>2</sup></span>", "r = Sqrt(<span>Kq/E</span>)")
			r = Math.Sqrt(((9*10^9)*q)/E_Electric)
			
			Binesh.AddToHTML("r = sqrt(<span>"..Binesh.Convert_e((9*10^9)).."*"..Binesh.Convert_e(q).."/"..Binesh.Convert_e(E_Electric).."</span>) &#8658; r = "..Binesh.Convert_e(r).." m")
			
			Binesh.AddToHTML("E: "..Binesh.Convert_e(E_Electric).." N/C", "V")
			Binesh.AddToHTML("q: "..Binesh.Convert_e(q).." C", "V")
			Binesh.AddToHTML("r: ?", "V")
		end
	end
end