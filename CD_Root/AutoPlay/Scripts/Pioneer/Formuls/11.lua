if S == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã”„ „”«Õ ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'S' then
		ListBox.AddItem("unknowns", "Ã”„ „”«Õ ", "S");
	end
end

if Sp == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”«ÌÂ „”«Õ ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'S`' then
		ListBox.AddItem("unknowns", "”«ÌÂ „”«Õ ", "S`");
	end
end

if p_Source == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â „‰»⁄ ‰Ê— Ã”„")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'P_Source' then
		ListBox.AddItem("unknowns", "›«’·Â „‰»⁄ ‰Ê— Ã”„", "p_Source");
	end
end

if q_Source == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â „‰»⁄ ‰Ê— ”«ÌÂ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'q_Source' then
		ListBox.AddItem("unknowns", "›«’·Â „‰»⁄ ‰Ê— ”«ÌÂ", "q_Source");
	end
end

FindS = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã”„ „”«Õ ")
FindSp = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”«ÌÂ „”«Õ ")
Findp_Source = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â „‰»⁄ ‰Ê— Ã”„")
Findq_Source = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â „‰»⁄ ‰Ê— ”«ÌÂ")

if FindSp ~= -1 and ListBox.GetItemData("unknowns", FindSp) == "S`" then
	if S ~= nil and p_Source ~= nil and q_Source ~= nil then
		Binesh.CreateHTMLFile("<span>S`/S</span> = (<span>q/p</span>)<sup>2</sup>", "S` = <span>q<sup>2</sup>S/p<sup>2</sup></span>")
		Sp = (q_Source^2)*S/(p_Source^2)
		
		Binesh.AddToHTML("S` = <span>"..q_Source.."<sup>2</sup>*"..S.."/"..p_Source.."<sup>2</sup></span> &#8658; S` = "..Sp.."m<sup>2<sup>")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”«ÌÂ „”«Õ ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "S`");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindS ~= -1 and ListBox.GetItemData("unknowns", FindS) == "S" then
	if Sp ~= nil and p_Source ~= nil and q_Source ~= nil then
		Binesh.CreateHTMLFile("<span>S`/S</span> = (<span>q/p</span>)<sup>2</sup>", "S = <span>p<sup>2</sup>S`/q<sup>2</sup></span>")
		S = (p_Source^2)*Sp/(q_Source^2)
		
		Binesh.AddToHTML("S = <span>"..p_Source.."<sup>2</sup>*"..Sp.."/"..q_Source.."<sup>2</sup></span> &#8658; S = "..S.."m<sup>2<sup>")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã”„ „”«Õ ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "S");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findp_Source ~= -1 and ListBox.GetItemData("unknowns", Findp_Source) == "p" then
	if Sp ~= nil and S ~= nil and q ~= nil then
		Binesh.CreateHTMLFile("<span>S`/S</span> = (<span>q/p</span>)<sup>2</sup>", "p = <span>sqrt(Sq<sup>2</sup>/S`)</span>")
		p_Source = Math.Sqrt(S*q_Source^2/Sp)
		
		Binesh.AddToHTML("p = <span>sqrt("..S.."*"..q_Source.."<sup>2</sup>/"..Sp..")</span> &#8658; p = "..p_Source.."m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â „‰»⁄ ‰Ê— Ã”„");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "p_Source");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findq_Source ~= -1 and ListBox.GetItemData("unknowns", Findq_Source) == "q" then
	if Sp ~= nil and S ~= nil and p_Source ~= nil then
		Binesh.CreateHTMLFile("<span>S`/S</span> = (<span>q/p</span>)<sup>2</sup>", "q = <span>sqrt(S`P<sup>2</sup>/S)</span>")
		q_Source = Math.Sqrt(Sp*p_Source^2/S)
		
		Binesh.AddToHTML("q = <span>sqrt("..Sp.."*"..p_Source.."<sup>2</sup>)/"..S.."</span> &#8658; q = "..q_Source.."m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â „‰»⁄ ‰Ê— ”«ÌÂ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q_Source");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end