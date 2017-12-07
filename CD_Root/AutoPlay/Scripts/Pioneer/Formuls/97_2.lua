if U == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'U' then
		ListBox.AddItem("unknowns", "«‰—éÌ", "U");
	end
end

if C_Condenser == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Œ«“‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'C' then
		ListBox.AddItem("unknowns", "Œ«“‰", "C");
	end
end

if q == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'q' then
		ListBox.AddItem("unknowns", "–—Â", "q");
	end
end

FindU = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ");
if FindU ~= -1 and ListBox.GetItemData("unknowns", FindU) == "U" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1 then
	if q ~= nil and C_Condenser ~= nil then
		Binesh.CreateHTMLFile("U = <span>1/2</span><span>q<sup>2</sup>/C</span>")
		U = 0.5*(q^2*C_CondenserC)
		
		Binesh.AddToHTML("U = <span>1/2</span>*<span>"..q.."<sup>2</sup>/"..C_Condenser.."<span> &#8658; U = "..U.." J")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "U");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindC_Condenser = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Œ«“‰");
if FindC_Condenser ~= -1 and ListBox.GetItemData("unknowns", FindC_Condenser) == "C" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Œ«“‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "C") ~= -1 then
	if q ~= nil and U ~= nil then
		Binesh.CreateHTMLFile("U = <span>1/2</span><span>q<sup>2</sup>/C</span>", "C = <span>q<sup>2</sup>/2U</span>")
		C_Condenser = (q^2)/(2*U)
		
		Binesh.AddToHTML("C = <span>"..q.."<sup>2</sup>/2*"..U.."</span> &#8658; C = "..C_Condenser.." F")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Œ«“‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "C");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findq = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â");
if Findq ~= -1 and ListBox.GetItemData("unknowns", Findq) == "q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
	if U ~= nil and C_Condenser ~= nil then
		Binesh.CreateHTMLFile("U = <span>1/2</span><span>q<sup>2</sup>/C</span>", "q = Sqrt(2CU)")
		q = Math.Sqrt(2*U*C_Condenser)
		
		Binesh.AddToHTML("q = Sqrt(2*"..C_Condenser.."*"..U..") &#8658; q = "..q.." C")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end