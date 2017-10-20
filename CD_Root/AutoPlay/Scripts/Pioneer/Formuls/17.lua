if n_Glass == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� Ԙ��")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'n' then
		ListBox.AddItem("unknowns", "���� Ԙ��", "n");
	end
end

if i == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'i' then
		ListBox.AddItem("unknowns", "����� ����", "i");
	end
end

if r_Glass == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� Ԙ��")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'r' then
		ListBox.AddItem("unknowns", "����� Ԙ��", "r");
	end
end

Findn_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� Ԙ��")
Findi = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����");
Findr_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� Ԙ��")

if Findn_Glass ~= -1 and ListBox.GetItemData("unknowns", Findn_Glass) == "n" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���� Ԙ��") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1 then
	if i ~= nil and r_Glass ~= nil then
		Binesh.CreateHTMLFile("n = <span>sini/sinr</span>")
		n_Glass = Math.Sin(Math.Rad(i))/Math.Sin(Math.Rad(r_Glass))
		
		Binesh.AddToHTML("n = <span>sin"..i.."/sin"..r_Glass.."</span> &#8658; n = "..n_Glass.." m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("i = "..i.." <sup>o</sup>" ,"V")
		Binesh.AddToHTML("r = "..r_Glass.." <sup>o</sup>" ,"V")
		Binesh.AddToHTML("n = "..n_Glass.." m","V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� Ԙ��");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "n");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findi ~= -1 and ListBox.GetItemData("unknowns", Findi) == "i" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "i") ~= -1 then
	if n_Glass ~= nil and r_Glass ~= nil then
		Binesh.CreateHTMLFile("n = <span>sini/sinr</span>", "sini = nsinr")
		
		sini = n_Glass * Math.Sin(Math.Rad(r_Glass))
		i = Math.Asin(sini)
		
		Binesh.AddToHTML("sini = "..n_Glass.."*sin"..r_Glass.." &#8658; sini = "..sini.." &#8658; i = "..i.." <sup>o</sup>")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("n = "..n_Glass.." m","V")
		Binesh.AddToHTML("r = "..r_Glass.." <sup>o</sup>" ,"V")
		Binesh.AddToHTML("i = "..i.." <sup>o</sup>" ,"V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "i");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findr_Glass ~= -1 and ListBox.GetItemData("unknowns", Findr_Glass) == "r" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� Ԙ��") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "r") ~= -1 then
	if n_Glass ~= nil and i ~= nil then
		Binesh.CreateHTMLFile("n = <span>sini/sinr</span>", "sinr = <span>sini/n<span>")
		
		sinr_Glass = Math.Sin(Math.Rad(i))/n_Glass
		r_Glass = Math.Asin(r_Glass)
		
		Binesh.AddToHTML("sinr = <span>sin"..i.."/"..n_Glass.." &#8658; sinr = "..sinr_Glass.." &#8658; r = "..r_Glass.." <sup>o</sup>")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("i = "..i.." <sup>o</sup>" ,"V")
		Binesh.AddToHTML("n = "..n_Glass.." m","V")
		Binesh.AddToHTML("r = "..r_Glass.." <sup>o</sup>" ,"V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� Ԙ��");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "r");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end