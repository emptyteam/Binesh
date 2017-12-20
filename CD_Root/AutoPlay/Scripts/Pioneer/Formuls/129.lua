if F == nil then
	Binesh.AddUnknown("‰Ì—Ê", "F")
end

if q == nil then
	Binesh.AddUnknown("–—Â", "q")
end

if V_Speed == nil then
	Binesh.AddUnknown("”—⁄ ", "V")
end

if B == nil then
	Binesh.AddUnknown("„Ìœ«‰ „€‰«ÿÌ”Ì", "B")
end

if Teta == nil and Teta_Radian ~= nil then
	Binesh.AddUnknown("“«ÊÌÂ", "Teta")
end

FindPoroton = ListBox.FindItem("Words", -1, LB_BYTEXT, "Å—Ê Ê‰");
FindElectron = ListBox.FindItem("Words", -1, LB_BYTEXT, "«·ò —Ê‰");
if FindElectron ~= -1 and q ~= nil then
	q = -q
end

FindF = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê");
if FindF ~= -1 and ListBox.GetItemData("unknowns", FindF) == "F" and ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F") ~= -1 then
	if q ~= nil and V_Speed ~= nil and B ~= nil and Teta ~= nil then
		Binesh.CreateHTMLFile("F = qVBsinTeta")
		F = q*V_Speed*B*Math.Sin(Math.Rad(Teta))
		
		Binesh.AddToHTML("q: "..q.." C", "V")
		Binesh.AddToHTML("V: "..V_Speed.." m/s", "V")
		Binesh.AddToHTML("B: "..B.." T", "V")
		Binesh.AddToHTML("Teta: "..Teta, "V")
		Binesh.AddToHTML("F: ?", "V")
		
		Binesh.AddToHTML("F = "..q.."*"..V_Speed.."*"..B.."*sin"..Teta.." &#8658; F = "..F.." N")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "F");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findq = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â");
if Findq ~= -1 and ListBox.GetItemData("unknowns", Findq) == "q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
	if F ~= nil and V_Speed ~= nil and B ~= nil and Teta ~= nil then
		Binesh.CreateHTMLFile("F = qVBsinTeta", "q = <span>F/VBsinTeta</span>")
		q = F/(V_Speed*B*Math.Sin(Math.Rad(Teta)))
		
		Binesh.AddToHTML("F: "..F.." N", "V")
		Binesh.AddToHTML("V: "..V_Speed.." m/s", "V")
		Binesh.AddToHTML("B: "..B.." T", "V")
		Binesh.AddToHTML("Teta: "..Teta, "V")
		Binesh.AddToHTML("q: ?", "V")
		
		Binesh.AddToHTML("q = <span>"..F.."/"..V_Speed.."*"..B.."*sin"..Teta.."</span> &#8658; q = "..q.." C")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindV_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”—⁄ ");
if FindV_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV_Speed) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
	if F ~= nil and q ~= nil and B ~= nil and Teta ~= nil then
		Binesh.CreateHTMLFile("F = qVBsinTeta", "V = <span>F/qBsinTeta</span>")
		V_Speed = F/(q*B*Math.Sin(Math.Rad(Teta)))
		
		Binesh.AddToHTML("F: "..F.." N", "V")
		Binesh.AddToHTML("q: "..q.." C", "V")
		Binesh.AddToHTML("B: "..B.." T", "V")
		Binesh.AddToHTML("Teta: "..Teta, "V")
		Binesh.AddToHTML("V: ?", "V")
		
		Binesh.AddToHTML("V = <span>"..F.."/"..q.."*"..B.."*sin"..Teta.."</span> &#8658; V = "..V_Speed.." m/s")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”—⁄ ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindB = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰ „€‰«ÿÌ”Ì");
if FindB ~= -1 and ListBox.GetItemData("unknowns", FindB) == "B" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1 then
	if F ~= nil and q ~= nil and V_Speed ~= nil and Teta ~= nil then
		Binesh.CreateHTMLFile("F = qVBsinTeta", "B = <span>F/qVsinTeta</span>")
		
		B = F/(q*V_Speed*Math.Sin(Math.Rad(Teta)))
		
		Binesh.AddToHTML("F: "..F.." N", "V")
		Binesh.AddToHTML("q: "..q.." C", "V")
		Binesh.AddToHTML("V: "..V_Speed.." m/s", "V")
		Binesh.AddToHTML("Teta: "..Teta, "V")
		Binesh.AddToHTML("B: ?", "V")
		
		Binesh.AddToHTML("B = <span>"..F.."/"..q.."*"..V_Speed.."*sin"..Teta.."</span> &#8658; B = "..B.." T")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰ „€‰«ÿÌ”Ì");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "B");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindTeta = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ");
if FindTeta ~= -1 and ListBox.GetItemData("unknowns", FindTeta) == "Teta" or ListBox.GetItemData("unknowns", FindTeta) == "Alpha" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta") ~= -1 then
	if F ~= nil and q ~= nil and V_Speed ~= nil and B ~= nil then
		Binesh.CreateHTMLFile("F = qVBsinTeta", "sinTeta = <span>F/qVB</span>")
		
		Teta = F/(q*V_Speed*B)
		
		Binesh.AddToHTML("F: "..F.." N", "V")
		Binesh.AddToHTML("q: "..q.." C", "V")
		Binesh.AddToHTML("V: "..V_Speed.." m/s", "V")
		Binesh.AddToHTML("B: "..B.." T", "V")
		Binesh.AddToHTML("Teta: ?", "V")
		
		Binesh.AddToHTML("sinTeta = <span>"..F.."/"..q.."*"..V_Speed.."*"..B.."</span> &#8658; sinTeta = "..Teta)
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“«ÊÌÂ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Ieta");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end