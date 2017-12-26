function Binesh.F10_1()
	if P_Power == nil then
		Binesh.AddUnknown(" Ê«‰", "P")
	end
	
	if R == nil then
		Binesh.AddUnknown("„ﬁ«Ê„ ", "R")
	end
	
	if I == nil then
		Binesh.AddUnknown("Ã—Ì«‰", "I")
	end
	
	FindP_Power = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " Ê«‰");
	if FindP_Power ~= -1 and ListBox.GetItemData("unknowns", FindP_Power) == "P" and ListBox.FindItem("Words", -1, LB_BYTEXT, " Ê«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "P") ~= -1 then
		if R ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("P = R*I<sup>2</sup>")
			P_Power = (R*(I^2))
			
			Binesh.AddToHTML("P = "..R.."*"..I.."<sup>2</sup> &#8658; P = "..P_Power.." W")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("R: "..R.." Ohm", "V")
			Binesh.AddToHTML("P: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " Ê«‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "P");
			if unknownPersianindex == unknownSymbolindex then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindR = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ");
	if FindR ~= -1 and ListBox.GetItemData("unknowns", FindR) == "R" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1 then
		if P_Power ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("P = R*I<sup>2</sup>", "R = <span>P/I<sup>2</sup></span>")
			R = P_Power/(I^2)
			
			Binesh.AddToHTML("R = <span>"..P_Power.."/"..I.."<sup>2</sup></span> &#8658; ".."R = "..R.." Ohm")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("P: "..P_Power.." W", "V")
			Binesh.AddToHTML("R: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "R");
			if unknownPersianindex == unknownSymbolindex then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindI = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
	if FindI ~= -1 and ListBox.GetItemData("unknowns", FindI) == "I" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
		if P_Power ~= nil and R ~= nil then
			Binesh.CreateHTMLFile("P = R*I<sup>2</sup>", "I = Sqrt(<span>P/R</span>)")
			I = Math.Sqrt(P_Power/R)
			
			Binesh.AddToHTML("I = Sqrt(<span>"..P_Power.."/"..R.."</span>) &#8658; ".."I = "..I.." A")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("R: "..R.." Ohm", "V")
			Binesh.AddToHTML("P: "..P_Power.." W", "V")
			Binesh.AddToHTML("I: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "I");
			if unknownPersianindex == unknownSymbolindex then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end