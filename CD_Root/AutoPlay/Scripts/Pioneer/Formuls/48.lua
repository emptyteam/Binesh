function Binesh.F48()
	if N == nil then
		Binesh.AddUnknown("‰Ì—Ê", "N")
	end
	
	if m == nil then
		Binesh.AddUnknown("Ã—„", "m")
	end
	
	if a == nil then
		Binesh.AddUnknown("‘ «»", "a")
	end
	
	UP = ListBox.FindItem("Words", -1, LB_BYTEXT, "»«·«")
	DOWN = ListBox.FindItem("Words", -1, LB_BYTEXT, "Å«ÌÌ‰")
	
	FindN = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê");
	if FindN ~= -1 and ListBox.GetItemData("unknowns", FindN) == "N" and ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1 then
		if a ~= nil and m ~= nil then
			if UP ~= -1 then
				Binesh.CreateHTMLFile("N = m(g+a)")
				N = m*(Zarib.g+a)
				
				Binesh.AddToHTML("m: "..m.." m", "V")
				Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>", "V")
				Binesh.AddToHTML("N: ?", "V")
				
				Binesh.AddToHTML("N = "..m.."*("..Zarib.g.."+"..a..") &#8658; N = "..N.." N")
				Web.Refresh("Web1");
			elseif DOWN ~= -1 then
				Binesh.CreateHTMLFile("N = m(g-a)")
				N = m*(Zarib.g-a)
				
				Binesh.AddToHTML("m: "..m.." m", "V")
				Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>", "V")
				Binesh.AddToHTML("N: ?", "V")
				
				Binesh.AddToHTML("N = "..m.."*("..Zarib.g.."+"..a..") &#8658; N = "..N.." N")
				Web.Refresh("Web1");
			end
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‰Ì—Ê");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "N");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findm = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„");
	if Findm ~= -1 and ListBox.GetItemData("unknowns", Findm) == "m" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1 then
		if N ~= nil and a ~= nil then
			if UP ~= -1 then
				Binesh.CreateHTMLFile("N = m(g+a)", "m = <span>N/(g+a)</span>")
				m = N/(Zarib.g+a)
				
				Binesh.AddToHTML("N: "..N.." N", "V")
				Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>", "V")
				Binesh.AddToHTML("m: ?", "V")
				
				Binesh.AddToHTML("m = <span>N/("..Zarib.g.."+a)</span> &#8658; m = "..m.." Kg")
				Web.Refresh("Web1");
			elseif DOWN ~= -1 then
				Binesh.CreateHTMLFile("N = m(g+a)", "m = -<span>N/(-g+a)</span>")
				m = -N/(-Zarib.g+a)
				
				Binesh.AddToHTML("N: "..N.." N", "V")
				Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>", "V")
				Binesh.AddToHTML("m: ?", "V")
				
				Binesh.AddToHTML("m = -<span>"..N.."/(-"..Zarib.g.."+"..a..")</span> &#8658; m = "..m.." Kg")
				Web.Refresh("Web1");
			end
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—„");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "m");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Finda = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‘ «»");
	if Finda ~= -1 and ListBox.GetItemData("unknowns", Finda) == "a" and ListBox.FindItem("Words", -1, LB_BYTEXT, "‘ «»") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "a") ~= -1 then
		if m ~= nil and N ~= nil then
			if UP ~= -1 then
				Binesh.CreateHTMLFile("N = m(g+a)", "a = -<span>(gm-N)/m</span>")
				a = -1*(Zarib.g*m-N)/m
				
				Binesh.AddToHTML("N: "..N.." N", "V")
				Binesh.AddToHTML("m: "..m.." m", "V")
				Binesh.AddToHTML("a: ?", "V")
				
				Binesh.AddToHTML("a = -<span>("..Zarib.g.."*"..m.."-"..N..")/"..m.."</span> &#8658; a = "..a.." m/s")
				Web.Refresh("Web1");
			elseif DOWN ~= -1 then
				Binesh.CreateHTMLFile("N = m(g+a)", "a = <span>(gm-N)/m</span>")
				a = (Zarib.g*m-N)/m
				
				Binesh.AddToHTML("N: "..N.." N", "V")
				Binesh.AddToHTML("m: "..m.." m", "V")
				Binesh.AddToHTML("a: ?", "V")
				
				Binesh.AddToHTML("a = <span>("..Zarib.g.."*"..m.."-"..N.."/"..m..")</span> &#8658; a = "..a.." m/s")
				Web.Refresh("Web1");
			end
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‘ «»");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "a");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end