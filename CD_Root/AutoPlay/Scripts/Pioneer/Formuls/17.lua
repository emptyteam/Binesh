if n_Glass == nil then
	Binesh.AddUnknown("���� Ԙ��", "n")
end

if i == nil then
	Binesh.AddUnknown("����� ����", "i")
end

if r_Glass == nil then
	Binesh.AddUnknown("����� Ԙ��", "r")
end

Findn_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� Ԙ��");
if Findn_Glass ~= -1 and ListBox.GetItemData("unknowns", Findn_Glass) == "n" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���� Ԙ��") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1 then
	if i ~= nil and r_Glass ~= nil then
		Binesh.CreateHTMLFile("n = <span>sini/sinr</span>")
		n_Glass = Math.Sin(i)/Math.Sin(r)
		
		Binesh.AddToHTML("n = <span>"..Math.Sin(i).."/"..Math.Sin(r).."</span> &#8658; n = "..n_Glass)
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("i: "..i.."<sup>o</sup>", "V")
		Binesh.AddToHTML("r: "..r.."<sup>o</sup>", "V")
		Binesh.AddToHTML("n: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� Ԙ��");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "n");
		if unknownPersianindex == unknownSymbolindex then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findi = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����");
if Findi ~= -1 and ListBox.GetItemData("unknowns", Findi) == "i" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "i") ~= -1 then
	if n_Glass ~= nil and r_Glass ~= nil then
		Binesh.CreateHTMLFile("n = <span>sini/sinr</span>", "sini = n*sinr")
		sin_i = n_Glass * Math.Sin(r_Glass)
		i = Math.Asin(sin_i)
		Binesh.AddToHTML("sini = "..n_Glass.."*sin"..r_Glass.." &#8658; sini = "..sin_i.." &#8658; i = "..i.."<sup>o</sup>")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("n: "..n_Glass, "V")
		Binesh.AddToHTML("r: "..r.."<sup>o</sup>", "V")
		Binesh.AddToHTML("i: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "i");
		if unknownPersianindex == unknownSymbolindex then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findr_Glass = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� Ԙ��");
if Findr_Glass ~= -1 and ListBox.GetItemData("unknowns", Findr_Glass) == "r" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����� Ԙ��") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "r") ~= -1 then
	if n_Glass ~= nil and i ~= nil then
		Binesh.CreateHTMLFile("n = <span>sini/sinr</span>", "sinr = <span>sini/n<span>")
		sin_r_Glass = Math.Sin(i)/n_Glass
		r_Glass = Math.Asin(sin_r_Glass)
		Binesh.AddToHTML("sinr = <span>"..sini.."/"..n_Glass.." &#8658; sinr = "..sin_r_Glass.." &#8658; r = "..r_Glass.."<sup>o</sup>")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("n: "..n_Glass, "V")
		Binesh.AddToHTML("i: "..i.."<sup>o</sup>", "V")
		Binesh.AddToHTML("r: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� Ԙ��");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "r");
		if unknownPersianindex == unknownSymbolindex then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end