function Binesh.F11()
	if S == nil then
		Binesh.AddUnknown("Ã”„ „”«Õ ", "S")
	end
	
	if Sp == nil then
		Binesh.AddUnknown("”«ÌÂ „”«Õ ", "S`")
	end
	
	if p_Source == nil then
		Binesh.AddUnknown("›«’·Â „‰»⁄ ‰Ê— Ã”„", "p")
	end
	
	if q_Source == nil then
		Binesh.AddUnknown("›«’·Â „‰»⁄ ‰Ê— ”«ÌÂ", "q")
	end
	
	FindSp = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”«ÌÂ „”«Õ ");
	if FindSp ~= -1 and ListBox.GetItemData("unknowns", FindSp) == "S`" and ListBox.FindItem("Words", -1, LB_BYTEXT, "”«ÌÂ „”«Õ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "S`") ~= -1 then
		if S ~= nil and p_Source ~= nil and q_Source ~= nil then
			Binesh.CreateHTMLFile("<span>S`/S</span> = (<span>q/p</span>)<sup>2</sup>", "S` = <span>q<sup>2</sup>*S/p<sup>2</sup></span>")
			Sp = (q_Source^2)*S/(p_Source^2)
			
			Binesh.AddToHTML("S` = <span>"..q_Source.."<sup>2</sup>*"..S.."/"..p_Source.."<sup>2</sup></span> &#8658; S` = "..Sp.." m<sup>2<sup>")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("p: "..p_Source.."m", "V")
			Binesh.AddToHTML("q: "..q_Source.."m", "V")
			Binesh.AddToHTML("S`: "..Sp.."m<sup>2<sup>", "V")
			Binesh.AddToHTML("S: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”«ÌÂ „”«Õ ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "S`");
			if unknownPersianindex == unknownSymbolindex then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindS = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã”„ „”«Õ ");
	if FindS ~= -1 and ListBox.GetItemData("unknowns", FindS) == "S" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã”„ „”«Õ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "S") ~= -1 then
		if Sp ~= nil and p_Source ~= nil and q_Source ~= nil then
			Binesh.CreateHTMLFile("<span>S`/S</span> = (<span>q/p</span>)<sup>2</sup>", "S = <span>p<sup>2</sup>*S`/q<sup>2</sup></span>")
			S = (p_Source^2)*Sp/(q_Source^2)
			
			Binesh.AddToHTML("S = <span>"..p_Source.."<sup>2</sup>*"..Sp.."/"..q_Source.."<sup>2</sup></span> &#8658; S = "..S.." m<sup>2<sup>")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("p: "..p_Source.."m", "V")
			Binesh.AddToHTML("q: "..q_Source.."m", "V")
			Binesh.AddToHTML("S: "..S.."m<sup>2<sup>", "V")
			Binesh.AddToHTML("S`: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã”„ „”«Õ ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "S");
			if unknownPersianindex == unknownSymbolindex then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findp_Source = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â „‰»⁄ ‰Ê— Ã”„");
	if Findp_Source ~= -1 and ListBox.GetItemData("unknowns", Findp_Source) == "p" and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â „‰»⁄ ‰Ê— Ã”„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "p") ~= -1 then
		if Sp ~= nil and S ~= nil and q ~= nil then
			Binesh.CreateHTMLFile("<span>S`/S</span> = (<span>q/p</span>)<sup>2</sup>", "p = <span>sqrt(S*q<sup>2</sup>/S`)</span>")
			p_Source = Math.Sqrt(S*q_Source^2/Sp)
			
			Binesh.AddToHTML("p = <span>sqrt("..S.."*"..q_Source.."<sup>2</sup>/"..Sp..")</span> &#8658; p = "..p_Source.." m")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("q: "..q_Source.."m", "V")
			Binesh.AddToHTML("S: "..S.."m<sup>2<sup>", "V")
			Binesh.AddToHTML("S`: "..Sp.."m<sup>2<sup>", "V")
			Binesh.AddToHTML("p: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â „‰»⁄ ‰Ê— Ã”„");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "p");
			if unknownPersianindex == unknownSymbolindex then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findq_Source = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â „‰»⁄ ‰Ê— ”«ÌÂ");
	if Findq_Source ~= -1 and ListBox.GetItemData("unknowns", Findq_Source) == "q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â „‰»⁄ ‰Ê— ”«ÌÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
		if Sp ~= nil and S ~= nil and p_Source ~= nil then
			Binesh.CreateHTMLFile("<span>S`/S</span> = (<span>q/p</span>)<sup>2</sup>", "q = <span>sqrt(S`*P<sup>2</sup>/S)</span>")
			q_Source = Math.Sqrt(Sp*p_Source^2/S)
			
			Binesh.AddToHTML("q = <span>sqrt("..Sp.."*"..p_Source.."<sup>2</sup>)/"..S.."</span> &#8658; q = "..q_Source.." m")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("p: "..p_Source.."m", "V")
			Binesh.AddToHTML("S: "..S.."m<sup>2<sup>", "V")
			Binesh.AddToHTML("S`: "..Sp.."m<sup>2<sup>", "V")
			Binesh.AddToHTML("q: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â „‰»⁄ ‰Ê— ”«ÌÂ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
			if unknownPersianindex == unknownSymbolindex then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end