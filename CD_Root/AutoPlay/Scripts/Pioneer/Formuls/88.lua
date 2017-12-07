if E_Electric == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'E' then
		ListBox.AddItem("unknowns", "„Ìœ«‰", "E");
	end
end

if q == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "òÊ·‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'q' then
		ListBox.AddItem("unknowns", "–—Â", "q");
	end
end

if r == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'r' then
		ListBox.AddItem("unknowns", "›«’·Â", "r");
	end
end

FindE_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰");
if FindE_Electric ~= -1 and ListBox.GetItemData("unknowns", FindE_Electric) == "E" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "E") ~= -1 then
	if q ~= nil and r ~= nil then
		Binesh.CreateHTMLFile("E = K*<span>q/r<sup>2</sup></span>")
		E_Electric = (4*10^-4)*q/(r^2)
		
		Binesh.AddToHTML("E = "..(4*10^-4).."*<span>"..q.."/"..r.."<sup>2</sup></span> &#8658; E = "..E_Electric.." N/C")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "E");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findq = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "»«—");
if Findq ~= -1 and ListBox.GetItemData("unknowns", Findq) == "q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "»«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
	if E ~= nil and r ~= nil then
		Binesh.CreateHTMLFile("E = K<span>q/r<sup>2</sup></span>", "q = <span>Er<sup>2</sup>/K</span>")
		q = E(r^2)/(4*10^-4)
		
		Binesh.AddToHTML("q = <span>"..E_Electric.."*"..r.."<sup>2</sup>/"..(4*10^-4).."</span> &#8658; q = "..q.." C")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findr = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â");
if Findr ~= -1 and ListBox.GetItemData("unknowns", Findr) == "r" and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "r") ~= -1 then
	if E_Electric ~= nil and q ~= nil then
		Binesh.CreateHTMLFile("E = K<span>q/r<sup>2</sup></span>", "r = Sqrt(<span>Kq/E</span>)")
		r = Math.Sqrt((4*10^-4)*q/E)
		
		Binesh.AddToHTML("r = sqrt(<span>"..(4*10^-4).."*"..q.."/"..E_Electric.."</span>) &#8658; r = "..r.." m<sup>2</sup>")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "r");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end