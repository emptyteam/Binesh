function Binesh.F8_3()
	if W == nil then
		Binesh.AddUnknown("«‰—éÌ «·ò —ÌòÌ", "W")
	end
	
	if V_Electric == nil then
		Binesh.AddUnknown("Ê· «é", "V")
	end
	
	if R == nil then
		Binesh.AddUnknown("„ﬁ«Ê„ ", "R")
	end
	
	if t == nil then
		Binesh.AddUnknown("“„«‰", "t")
	end
	
	FindW = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ «·ò —ÌòÌ");
	if FindW ~= -1 and ListBox.GetItemData("unknowns", FindW) == "W" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ «·ò —ÌòÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1 then
		if V_Electric ~= nil and R ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("W = <span>V<sup>2</sup>/R</span>t")
			W = (V_Electric^2/R)*t
			
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("R: "..R.." Ohm", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("W: ?", "V")
			
			Binesh.AddToHTML("W = <span>"..V_Electric.."<sup>2</sup>/"..R.."</span>*"..t.." &#8658; W = "..W.." J")
			Web.Refresh("Web1");
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ «·ò —ÌòÌ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "W");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindV_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é");
	if FindV_Electric ~= -1 and ListBox.GetItemData("unknowns", FindV_Electric) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
		if W ~= nil and R ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("W = <span>V<sup>2</sup>/R</span>t", "V = sqrt(<span>WR/t</span>)")
			V_Electric = Math.Sqrt(W*R/t)
			
			Binesh.AddToHTML("W: "..W.." J", "V")
			Binesh.AddToHTML("R: "..R.." Ohm", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("V: ?", "V")
			
			Binesh.AddToHTML("V = sqrt(<span>"..W.."*"..R.."/"..t.."</span>) &#8658; V = "..V_Electric.." V")
			Web.Refresh("Web1");
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
			if unknownPersianindex == unknownSymbolindex then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindR = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ");
	if FindR ~= -1 and ListBox.GetItemData("unknowns", FindR) == "R" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1 then
		if W ~= nil and V_Electric ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("W = <span>V<sup>2</sup>/R</span>t", "R = <span>V<sup>2</sup>t/W</span>")
			R = (V_Electric^2)*t/W
			
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("W: "..W.." J", "V")
			Binesh.AddToHTML("R: ?", "V")
			
			Binesh.AddToHTML("R = <span>"..V_Electric.."<sup>2</sup>*"..t.."/"..W.."</span> &#8658; R = "..R.." Ohm")
			Web.Refresh("Web1");
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "R");
			if unknownPersianindex == unknownSymbolindex then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findt = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
	if Findt ~= -1 and ListBox.GetItemData("unknowns", Findt) == "t" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1 then
		if W ~= nil and V_Electric ~= nil and R ~= nil then
			Binesh.CreateHTMLFile("W = <span>V<sup>2</sup>/R</span>t", "t = <span>WR/V<sup>2</sup></span>")
			t = W*R/(V_Electric^2)
			
			Binesh.AddToHTML("W: "..W.." J", "V")
			Binesh.AddToHTML("R: "..R.." Ohm", "V")
			Binesh.AddToHTML("V: "..V_Electric.." s", "V")
			Binesh.AddToHTML("t: ?", "V")
			
			Binesh.AddToHTML("t = <span>"..W.."*"..R.."/"..V_Electric.."<sup>2</sup></span> &#8658; t = "..t.." s")
			Web.Refresh("Web1");
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "t");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end