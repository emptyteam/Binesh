function Binesh.F86()
	-- F_86 = Binesh.Genesis("‰Ì—Ê", "N", "", "", 1, "N", "‰ÌÊ Ê‰", false);
	if F == nil then
		Binesh.AddUnknown("‰Ì—Ê", "F")
	end
	
	if q1 == nil then
		Binesh.AddUnknown("«Ê·Ì‰ –—Â", "q1")
	end
	
	if q2 == nil then
		Binesh.AddUnknown("œÊ„Ì‰ –—Â", "q2")
	end
	
	if r_3 == nil then
		Binesh.AddUnknown("›«’·Â", "r")
	end
	
	FindF = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê");
	if FindF ~= -1 and ListBox.GetItemData("unknowns", FindF) == "F" and ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1 then
		if q1 ~= nil and q2 ~= nil and r_3 ~= nil then
			F = 9*10^9 * (Math.Abs(q1)* Math.Abs(q2) / (r_3^2))
			
			Binesh.CreateHTMLFile("F = k*<span>|q<sub>1</sub>||q<sub>2</sub>|/r<sup>2</sup></span>")
			Binesh.AddToHTML("F = 9*10^9*<span>"..Math.Abs(q1).."*"..Math.Abs(q2).."/"..r_3.."<sup>2</sup></span> &#8658; F = "..F.." N")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("q1: "..q1.." C", "V")
			Binesh.AddToHTML("q2: "..q2.." C", "V")
			Binesh.AddToHTML("r: "..r_3.." m", "V")
			Binesh.AddToHTML("F: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "F");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findq1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ –—Â");
	if Findq1 ~= -1 and ListBox.GetItemData("unknowns", Findq1) == "q1" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ –—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q1") ~= -1 then
		if F ~= nil and q2 ~= nil and r_3 ~= nil then
			q1 = F*r_3^2/(9*10^9*Math.Abs(q2))
			
			Binesh.CreateHTMLFile("F = k*<span>|q<sub>1</sub>||q<sub>2</sub>|/r<sup>2</sup></span>", "|q<sub>1</sub>| = <span>Fr<sup>2</sup>/k|q<sub>2</sub>|</span>")
			Binesh.AddToHTML("|q<sub>1</sub>| = <span>"..F.."*"..r_3.."<sup>2</sup>/9*10^9*"..Math.Abs(q2).."</span> &#8658; q<sub>1</sub> = "..Math.Abs(q1).." C")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("F: "..F.." N", "V")
			Binesh.AddToHTML("q2: "..q2.." C", "V")
			Binesh.AddToHTML("r: "..r_3.." m", "V")
			Binesh.AddToHTML("q1: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ –—Â");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q1");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findq2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ –—Â");
	if Findq2 ~= -1 and ListBox.GetItemData("unknowns", Findq2) == "q2" and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ –—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q2") ~= -1 then
		if F ~= nil and r_3 ~= nil and q1 ~= nil then
			q2 = F*r_3^2/(9*10^9*Math.Abs(q1))
			
			Binesh.CreateHTMLFile("F = k*<span>|q<sub>1</sub>||q<sub>2</sub>|/r<sup>2</sup></span>", "|q<sub>2</sub>| = <span>Fr<sup>2</sup>/k|q<sub>1</sub>|</span>")
			Binesh.AddToHTML("|q<sub>2</sub>| = <span>"..F.."*"..r_3.."<sup>2</sup>/9*10^9*"..Math.Abs(q1).."</span> &#8658; q2 = "..Math.Abs(q2).." C")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("F: "..F.." N", "V")
			Binesh.AddToHTML("q1: "..q1.." C", "V")
			Binesh.AddToHTML("r: "..r_3.." m", "V")
			Binesh.AddToHTML("q2: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ –—Â");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q2");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findr_3 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â");
	if Findr_3 ~= -1 and ListBox.GetItemData("unknowns", Findr_3) == "r" and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "r") ~= -1 then
		if q1 ~= nil and q2 ~= nil and F ~= nil then
			r_3 = Math.Sqrt(9*10^9*Math.Abs(q1)*Math.Abs(q2)/F)
			
			Binesh.CreateHTMLFile("F = k*<span>|q<sub>1</sub>||q<sub>2</sub>|/r<sup>2</sup></span>", "r = Sqrt(<span>k|q<sub>1<sub>||q<sub>2</sub>|/F</span>)")
			Binesh.AddToHTML("r = Sqrt(<span>9*10^9*"..Math.Abs(q1).."*"..Math.Abs(q2).."/"..F.."</span>) &#8658; r = "..r_3.." m")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("F: "..F.." N", "V")
			Binesh.AddToHTML("q1: "..q1.." C", "V")
			Binesh.AddToHTML("q2: "..q2.." C", "V")
			Binesh.AddToHTML("r: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "r");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end