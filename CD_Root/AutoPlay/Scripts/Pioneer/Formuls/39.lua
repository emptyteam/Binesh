if x == nil then
	Binesh.AddUnknown("œÊ„Ì‰ „ò«‰", "x")
end

if a == nil then
	Binesh.AddUnknown("‘ «»", "a")
end
	
if t == nil then
	Binesh.AddUnknown("“„«‰", "t")
end

if V0_Speed == nil then
	Binesh.AddUnknown("«Ê·Ì‰ ”—⁄ ", "V0")
end

if x0 == nil then
	Binesh.AddUnknown("«Ê·Ì‰ Ã«»Ã«ÌÌ", "x")
end

Findx = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ Ã«»Ã«ÌÌ");
if Findx ~= -1 and ListBox.GetItemData("unknowns", Findx) == "x" and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ Ã«»Ã«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "x") ~= -1 then
	if a ~= nil and t ~= nil and V0_Speed ~= nil and x0 ~= nil then
		Binesh.CreateHTMLFile("x = <span>1/2</span>at<sup>2</sup>+V<sub>0</sub>t+x<sub>0</sub>")
		x = 0.5*a*t^2+V0_Speed*t+x0
		
		Binesh.AddToHTML("x = <span>1/2</span>"..a.."*"..t.."<sup>2</sup>+"..V0_Speed.."*"..t.."+"..x0.." &#8658; x = "..x.." m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>", "V")
		Binesh.AddToHTML("t: "..t.." s", "V")
		Binesh.AddToHTML("V<sub>0</sub>: "..V0_Speed.." m/s", "V")
		Binesh.AddToHTML("x<sub>0</sub>: "..x0.." m", "V")
		Binesh.AddToHTML("x: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ Ã«»Ã«ÌÌ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "x");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Finda = ListBox.FindItem("unknowns", -1, LBBYTEXT, "‘ «»");
if Finda ~= -1 and ListBox.GetItemData("unknowns", Finda) == "a" and ListBox.FindItem("Words", -1, LB_BYTEXT, "‘ «»") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "a") ~= -1 then
	if x ~= nil and t ~= nil and V0_Speed ~= nil and x0 ~= nil then
		Binesh.CreateHTMLFile("x = <span>1/2</span>at<sup>2</sup>+V<sub>0</sub>t+x<sub>0</sub>", "a = <span>t<sup>2</sup>+V<sub>0</sub>t+x<sub>0</sub>/2x</span>")
		a = t^2+V0_Speed*t+x0/(2*x)
		
		Binesh.AddToHTML("a = <span>"..t.."<sup>2</sup>+"..V0_Speed.."*"..t.."+"..x0.."/2*"..x.."</span> &#8658; a = "..a.." m/s<sup>2</sup>")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("x: "..x.." m", "V")
		Binesh.AddToHTML("t: "..t.." s", "V")
		Binesh.AddToHTML("V<sub>0</sub>: "..V0_Speed.." m/s", "V")
		Binesh.AddToHTML("x<sub>0</sub>: "..x0.." m", "V")
		Binesh.AddToHTML("a: ?", "V")

		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‘ «»");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "a");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findt = ListBox.FindItem("unknowns", -1, LBBYTEXT, "“„«‰");
if Findt ~= -1 and ListBox.GetItemData("unknowns", Findt) == "t" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1 then
	if x ~= nil and a ~= nil and V0_Speed ~= nil and x0 ~= nil then
		Binesh.CreateHTMLFile("x = <span>1/2</span>at<sup>2</sup>+V<sub>0</sub>t+x<sub>0</sub>", "<span>1/2</span>at<sup>2</sup>+V<sub>0</sub>t+x<sub>0</sub>-x = 0")
		Binesh.CreateHTMLFile("Delta = V<sub>0</sub><sup>2</sup>-4(<span>1/2</span>a)(x<sub>0</sub>-x)", "t = <span>-V<sub>0</sub>+sqrt(Delta)/2(<span>1/2</span>a)</span>")
		t = -V0_Speed + Math.Sqrt(V0_Speed^2-2*a*(x0-x))/a
		
		Binesh.AddToHTML("Delta = "..V0_Speed.."<sup>2</sup>-2*"..a.."*("..x0.."-"..x..") &#8658; Delta = "..Math.Sqrt(V0_Speed^2-2*a*(x0-x)).."<br>" )
		Binesh.AddToHTML("t = <span>-"..V0_Speed.."+sqrt("..Math.Sqrt(V0_Speed^2-2*a*(x0-x))..")/"..a.."</span> &#8658; t = "..Math.Abs(t).." s")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("x: "..x.." m", "V")
		Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>", "V")
		Binesh.AddToHTML("V<sub>0</sub>: "..V0_Speed.." m/s", "V")
		Binesh.AddToHTML("x<sub>0</sub>: "..x0.." m", "V")
		Binesh.AddToHTML("t: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "t");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindV0_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ");
if FindV0_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV0_Speed) == "V0" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V0") ~= -1 then
	if x ~= nil and t ~= nil and a ~= nil and x0 ~= nil then
		Binesh.CreateHTMLFile("x = <span>1/2</span>at<sup>2</sup>+V<sub>0</sub>t+x<sub>0</sub>", "V<sub>0</sub> = <span>2x-2x<sub>0</sub>-at<sup>2</sup>/2t</span>")
		V0_Speed = 2*x-2*x0-a*t^2/(2*t)
		
		Binesh.AddToHTML("V<sub>0</sub> = <span>2*"..x.."-2*"..x0.."-"..a.."*"..t.."<sup>2</sup>/2*"..t.."</span> &#8658; V<sub>0</sub> = "..V0_Speed.." m/s")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("x: "..x.." m", "V")
		Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>", "V")
		Binesh.AddToHTML("t: "..t.." s", "V")
		Binesh.AddToHTML("x<sub>0</sub>: "..x0.." m", "V")
		Binesh.AddToHTML("V<sub>0</sub>: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V0");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findx0 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Ã«»Ã«ÌÌ");
if Findx0 ~= -1 and ListBox.GetItemData("unknowns", Findx0) == "x0" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ Ã«»Ã«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "x0") ~= -1 then
	if a ~= nil and t ~= nil and V0_Speed ~= nil and x ~= nil then
		Binesh.CreateHTMLFile("x = <span>1/2</span>at<sup>2</sup>+V<sub>0</sub>t+x<sub>0</sub>", "x<sub>0</sub> = -<span>1/2</span>at<sup>2</sup>-V<sub>0</sub>t+x")
		x0 = -0.5*a*t^2-V0_Speed*t+x
		
		Binesh.AddToHTML("x<sub>0</sub> = -<span>1/2</span>"..a.."*"..t.."<sup>2</sup>-"..V0_Speed.."*"..t.."+"..x.." &#8658; x<sub>0</sub> = "..x0.." m")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("x: "..x.." m", "V")
		Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>", "V")
		Binesh.AddToHTML("t: "..t.." s", "V")
		Binesh.AddToHTML("V<sub>0</sub>: "..V0_Speed.." m/s", "V")
		Binesh.AddToHTML("x<sub>0</sub>: ?", "V")
		
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Ã«»Ã«ÌÌ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "x0");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end