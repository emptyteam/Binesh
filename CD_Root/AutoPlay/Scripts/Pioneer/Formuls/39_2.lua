function Binesh.F39_2()
	if x == nil then
		Binesh.AddUnknown("œÊ„Ì‰ Ã«»Ã«ÌÌ", "x")
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
	
	Findx0 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Ã«»Ã«ÌÌ");
	if Findx0 ~= -1 and ListBox.GetItemData("unknowns", Findx0) == "x0" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ Ã«»Ã«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "x0") ~= -1 then
		if a ~= nil and t ~= nil and V0_Speed ~= nil and x ~= nil then
			Binesh.CreateHTMLFile("x = <span>1/2</span>at<sup>2</sup>+V<sub>0</sub>t+x<sub>0</sub>", "x<sup>0</sub> = x-<span>1/2</span>at<sup>2</sup>-V<sub>0</sub>t")
			x0 = x-(0.5*a*t^2)-(V0_Speed*t)
			
			Binesh.AddToHTML("x<sub>0</sub> = "..x.."-<span>1/2</span>"..a.."*"..t.."<sup>2</sup>-"..V0_Speed.."*"..t.." &#8658; x<sub>0</sub> = "..x0.." m")
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
end