if q == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'q' then
		ListBox.AddItem("unknowns", "���", "q");
	end
end

if n_e == nil and n_p == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ������")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'n' then
		ListBox.AddItem("unknowns", "����� ������", "n");
	end
end

Findq = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���")
Findn_e = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ������");

if Findq ~= -1 and ListBox.GetItemData("unknowns", Findq) == "c" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
	if n_e ~= nil or n_p ~= nil then
		Binesh.CreateHTMLFile("q = MOMne")
		if n_e ~= nil then
			q = n_e*1.6*10^-19
			
			Binesh.AddToHTML("q = "..n_e.."*1.6*10^-19 &#8658; q = "..q.." c")
			
			Binesh.AddToHTML("n<sub>e</sub> = "..n_e ,"V")
			Binesh.AddToHTML("q = "..q.." c" ,"V")
		elseif n_p ~= nil then
			q = n_p*1.6*10^-19
			
			Binesh.AddToHTML("q = "..n_p.."*1.6*10<sup>-19</sup> &#8658; q = "..q.." c")
			
			Binesh.AddToHTML("n<sub>p</sub> = "..n_p ,"V")
			Binesh.AddToHTML("q = "..q.." c" ,"V")
		end
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findn_e ~= -1 and ListBox.GetItemData("unknowns", Findn_e) == "n" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ������") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1 then
	if q ~= nil then
		Binesh.CreateHTMLFile("q = MOMne", "n = <span>q/e</span>")
		n_e = q / 1.6*10^-19
		
		Binesh.AddToHTML("n = <span>"..q.."/1.6*10<sup>-19</sup></span> &#8658; n = "..n_e)
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("q = "..q.." c" ,"V")
		Binesh.AddToHTML("n<sub>e</sub> = "..n_e ,"V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ������");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "n");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end