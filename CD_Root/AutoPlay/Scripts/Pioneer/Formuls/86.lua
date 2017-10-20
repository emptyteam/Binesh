-- F_86 = Binesh.Genesis("‰Ì—Ê", "N", "", "", 1, "N", "‰ÌÊ Ê‰", false);
if F == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'F' then
		ListBox.AddItem("unknowns", "‰Ì—Ê", "F");
	end
end

if q1 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ –—Â")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'q1' then
		ListBox.AddItem("unknowns", "«Ê·Ì‰ –—Â", "q1");
	end
end

if q2 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ –—Â")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'q2' then
		ListBox.AddItem("unknowns", "œÊ„Ì‰ –—Â", "q2");
	end
end

if r_3 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'r' then
		ListBox.AddItem("unknowns", "›«’·Â", "r");
	end
end

FindF = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê")
Findq1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ –—Â");
Findq2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ –—Â");
Findr_3 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â")

if FindF ~= -1 and ListBox.GetItemData("unknowns", FindF) == "F" and ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1 then
	if q1 ~= nil and q2 ~= nil and r_3 ~= nil then
		F = 9*10^9 * (Math.Abs(q1)* Math.Abs(q2) / r_3^2)
		
		Binesh.CreateHTMLFile("F = k*<span>|q<sub>1</sub>||q<sub>2</sub>|/r<sup>2</sup></span>")
		Binesh.AddToHTML("F = 9*10^9*<span>"..Math.Abs(q1).."*"..Math.Abs(q2).."/"..r_3.."<sup>2</sup></span> &#8658; F = "..F.."N")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "F");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findq1 ~= -1 and ListBox.GetItemData("unknowns", Findq1) == "q1" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ –—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q1") ~= -1 then
	if F ~= nil and q2 ~= nil and r_3 ~= nil then
		q1 = F*r_3^2/9*10^9*Math.Abs(q2)
		
		Binesh.CreateHTMLFile("F = k*<span>|q<sub>1</sub>||q<sub>2</sub>|/r<sup>2</sup></span>", "|q<sub>1</sub>| = <span>Fr<sup>2</sup>/k|q<sub>2</sub>|</span>")
		Binesh.AddToHTML("|q<sub>1</sub>| = <span>"..F.."*"..r_3.."<sup>2</sup>/9*10^9*"..Math.Abs(q2).."</span> &#8658; q<sub>1</sub> = "..Math.Abs(q1).."C")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ –—Â");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findq2 ~= -1 and ListBox.GetItemData("unknowns", Findq2) == "q2" and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ –—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q2") ~= -1 then
	if F ~= nil and r_3 ~= nil and q1 ~= nil then
		q2 = F*r_3^2/9*10^9*Math.Abs(q1)
		
		Binesh.CreateHTMLFile("F = k*<span>|q<sub>1</sub>||q<sub>2</sub>|/r<sup>2</sup></span>", "|q<sub>2</sub>| = <span>Fr<sup>2</sup>/k|q<sub>1</sub>|</span>")
		Binesh.AddToHTML("|q<sub>2</sub>| = <span>"..F.."*"..r_3.."<sup>2</sup>/9*10^9*"..Math.Abs(q1).."</span> &#8658; q2 = "..Math.Abs(q2).."C")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ –—Â");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findr_3 ~= -1 and ListBox.GetItemData("unknowns", Findr_3) == "r" and ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "r") ~= -1 then
	if q1 ~= nil and q2 ~= nil and F ~= nil then
		r_3 = Math.Sqrt(9*10^9*Math.Abs(q1)*Math.Abs(q2)/F)
		
		Binesh.CreateHTMLFile("F = k*<span>|q<sub>1</sub>||q<sub>2</sub>|/r<sup>2</sup></span>", "r = Sqrt(<span>k|q<sub>1<sub>||q<sub>2</sub>|/F</span>)")
		Binesh.AddToHTML("r = Sqrt(<span>9*10^9*"..Math.Abs(q1).."*"..Math.Abs(q2).."/"..F.."</span>) &#8658; r = "..r_3.."m<sup>2</sup>")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "›«’·Â");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "r");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end