if U_Output == nil then
	Binesh.AddUnknown("«‰—éÌ", "U")
end
if R == nil then
	Binesh.AddUnknown("„ﬁ«Ê„ ", "R")
end

if V_Electric == nil then
	Binesh.AddUnknown("Ê· «é", "V")
end

if t == nil then
	Binesh.AddUnknown("“„«‰", "t")
end

FindU_Output = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ");
if FindU_Output ~= -1 and ListBox.GetItemData("unknowns", FindU_Output) == "U" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1 then
	if R ~= nil and t ~= nil and V_Electric ~= nil then
		U_Output =  V_Electric^2 * t / R
		
		Binesh.CreateHTMLFile("U = <span>V<sup>2</sup>t/R</span>")
		Binesh.AddToHTML("U = <span>"..V_Electric.."<sup>2</sup>*"..t.."/"..R.."</span> &#8658; U = "..U_Output.." J")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("V: "..V_Electric.." V", "V")
		Binesh.AddToHTML("t: "..t.." s", "V")
		Binesh.AddToHTML("R: "..R.." Ohm", "V")
		Binesh.AddToHTML("U: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "U");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindR = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ");
if FindR ~= -1 and ListBox.GetItemData("unknowns", FindR) == "R" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1 then
	if U_Output ~= nil and V_Electric ~= nil and t ~= nil then
		R = V_Electric^2*t/U_Output
		
		Binesh.CreateHTMLFile("U = <span>V<sup>2</sup>t/R</span>", "R = <span>V<sup>2</sup>t/U</span>")
		Binesh.AddToHTML("R = <span>"..V_Electric.."<sup>2</sup>*"..t.."/"..U_Output.."</span> &#8658; R = "..R.." Ohm")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("U: "..U_Output.." J", "V")
		Binesh.AddToHTML("V: "..V_Electric.." V", "V")
		Binesh.AddToHTML("t: "..t.." s", "V")
		Binesh.AddToHTML("R: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "R");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindV_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é");
if FindV_Electric ~= -1 and ListBox.GetItemData("unknowns", FindV_Electric) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
	if R ~= nil and t ~= nil and U_Output ~= nil then
		V_Electric = Math.Sqrt(R*U_Output/t)
		
		Binesh.CreateHTMLFile("U = <span>V<sup>2</sup>t/R</span>", "V = Sqrt(<span>RU/t</span>)")
		Binesh.AddToHTML("V = Sqrt(<span>"..R.."*"..U_Output.."/"..t.."</span>) &#8658; V = "..V_Electric.." V")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("U: "..U_Output.." J", "V")
		Binesh.AddToHTML("t: "..t.." s", "V")
		Binesh.AddToHTML("R: "..R.." Ohm", "V")
		Binesh.AddToHTML("V: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ê· «é");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

Findt = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
if Findt ~= -1 and ListBox.GetItemData("unknowns", Findt) == "t" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1 then
	if R ~= nil and V_Electric ~= nil and U_Output ~= nil then
		t = U_Output*R/V_Electric^2
		
		Binesh.CreateHTMLFile("U = <span>V<sup>2</sup>t/R</span>", "t = <span>UR/V<sup>2</sup></span>")
		Binesh.AddToHTML("t = <span>"..U_Output.."*"..R.."/"..V_Electric.."<sup>2</sup></span> &#8658; t = "..t.." s")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("U: "..U_Output.." J", "V")
		Binesh.AddToHTML("V: "..V_Electric.." V", "V")
		Binesh.AddToHTML("R: "..R.." Ohm", "V")
		Binesh.AddToHTML("t: ?", "V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "t");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end