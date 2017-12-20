if SSigma == nil then
	
	Binesh.AddUnknown("çê«·Ì ”ÿÕ", "SSigma")
end

if q == nil then
	
	Binesh.AddUnknown("–—Â", "q")
end

if A == nil then
	
	Binesh.AddUnknown("”ÿÕ", "A")
end

FindSSigma = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "çê«·Ì ”ÿÕ");
if FindSSigma ~= -1 and ListBox.GetItemData("unknowns", FindSSigma) == "SSigma" and ListBox.FindItem("Words", -1, LB_BYTEXT, "çê«·Ì ”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "SSigma") ~= -1 then
	if q ~= nil and A ~= nil then
		Binesh.CreateHTMLFile("SSigma = <span>q/A</span>")
		SSigma = q/A
	
		Binesh.AddToHTML("SSigma = <span>"..q.."/"..A.."</span> &#8658; SSigma = "..SSigma.." C/m<sup>2</sup>")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
		Binesh.AddToHTML("q: "..q.." C", "V")
		Binesh.AddToHTML("SSigma: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "çê«·Ì ”ÿÕ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "SSigma");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findq = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â");
if Findq ~= -1 and ListBox.GetItemData("unknowns", Findq) == "q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
	if SSigma ~= nil and A ~= nil then
		Binesh.CreateHTMLFile("SSigma = <span>q/A</span>", "q = SSigmaA")
		q = SSigma*A

		
		Binesh.AddToHTML("q = "..SSigma.."*"..A.." &#8658; q = "..q.." C")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("SSigma: "..SSigma.." C/m<sup>2</sup>", "V")
		Binesh.AddToHTML("q: "..q.." C", "V")
		Binesh.AddToHTML("A: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindA = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”ÿÕ");
if FindA ~= -1 and ListBox.GetItemData("unknowns", FindA) == "A" and ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "A") ~= -1 then
	if SSigma ~= nil and q ~= nil then
		Binesh.CreateHTMLFile("SSigma = <span>q/A</span>", "A = <span>q/SSigma</span>")
		
		A = q/SSigma
		
		Binesh.AddToHTML("A = <span>"..q.."/"..SSigma.."</span> &#8658; A = "..A.." m<sup>2</sup>")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("SSigma: "..SSigma.." C/m<sup>2</sup>", "V")
		Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
		Binesh.AddToHTML("q: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”ÿÕ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "A");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end