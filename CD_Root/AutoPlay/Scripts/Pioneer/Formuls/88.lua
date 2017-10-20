if E_Electric == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'E' then
		ListBox.AddItem("unknowns", "�����", "E");
	end
end

if q == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'q' then
		ListBox.AddItem("unknowns", "���", "q");
	end
end

if r == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'r' then
		ListBox.AddItem("unknowns", "�����", "r");
	end
end

FindE_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����")
Findq = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
Findr = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����")

if FindE_Electric ~= -1 and ListBox.GetItemData("unknowns", FindE_Electric) == "E" and ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "E") ~= -1 then
	if q ~= nil and r ~= nil then
		Binesh.CreateHTMLFile("E = K*<span>q/r<sup>2</sup></span>")
		E_Electric = Zarib.k*q/r^2
		
		Binesh.AddToHTML("E = "..Zarib.k.."*<span>"..q.."/"..r.."<sup>2</sup></span> &#8658; E = "..E_Electric.."N/C")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "E");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findq ~= -1 and ListBox.GetItemData("unknowns", Findq) == "q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
	if E ~= nil and r ~= nil then
		Binesh.CreateHTMLFile("E = K*<span>q/r<sup>2</sup></span>", "q = <span>E*r<sup>2</sup>/K</span>")
		q = E(r^2)/Zarib.k
		
		Binesh.AddToHTML("q = <span>"..E_Electric.."*"..r.."<sup>2</sup>/"..Zarib.k.."</span> &#8658; q = "..q.."C")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findr ~= -1 and ListBox.GetItemData("unknowns", Findr) == "r" and ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "r") ~= -1 then
	if E_Electric ~= nil and q ~= nil then
		Binesh.CreateHTMLFile("E = K*<span>q/r<sup>2</sup></span>", "r = Sqrt(<span>K*q/E</span>)")
		r = Math.Sqrt(Zarib.k*q/E)
		
		Binesh.AddToHTML("r = sqrt(<span>"..Zarib.k.."*"..q.."/"..E_Electric.."</span>) &#8658; r = "..r.."m<sup>2</sup>")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "r");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end