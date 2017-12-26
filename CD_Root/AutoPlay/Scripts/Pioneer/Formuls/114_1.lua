function Binesh.F114_1()
	if U_Output == nil then
		Binesh.AddUnknown("«‰—éÌ", "U")
	end
	
	if I == nil then
		Binesh.AddUnknown("Ã—Ì«‰", "I")
	end
	
	if R == nil then
		Binesh.AddUnknown("„ﬁ«Ê„ ", "R")
	end
	
	if t == nil then
		Binesh.AddUnknown("“„«‰", "t")
	end
	
	FindU_Output = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ");
	if FindU_Output ~= -1 and ListBox.GetItemData("unknowns", FindU_Output) == "U" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1 then
		if I ~= nil and t ~= nil and R ~= nil then
			Binesh.CreateHTMLFile("U = RI<sup>2</sup>t")
			U_Output = R * I^2 * t
			
			Binesh.AddToHTML("R: "..R.." Ohm", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("U: ?", "V")
			
			Binesh.AddToHTML("U = "..R.."*"..I.."<sup>2</sup>*"..t.." &#8658; U = "..U_Output.." J")
			Web.Refresh("Web1");
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«‰—éÌ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "U");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindI = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
	if FindI ~= -1 and ListBox.GetItemData("unknowns", FindI) == "I" and ListBox.FindItem("Words", -1, LB_BYTEXT, "¬„Å—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
		if U_Output ~= nil and R ~= nil and t ~= nil then
			I = Math.Sqrt(U_Output/(R*t))
			
			Binesh.AddToHTML("U: "..U_Output.." J", "V")
			Binesh.AddToHTML("R: "..R.." Ohm", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("I: ?", "V")
			
			Binesh.CreateHTMLFile("U = RI<sup>2</sup>t", "I = Sqrt(<span>U/Rt</span>)")
			Binesh.AddToHTML("I = Sqrt(<span>"..U_Output.."/"..R.."*"..t.."</span>) &#8658; I = "..I.." A")
			Web.Refresh("Web1");
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "I");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindR = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ");
	if FindR ~= -1 and ListBox.GetItemData("unknowns", FindR) == "R" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1 then
		if I ~= nil and t ~= nil and U_Output ~= nil then
			R = U/(I^2*t)
			
			Binesh.AddToHTML("U: "..U_Output.." J", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("R: ?", "V")
			
			Binesh.CreateHTMLFile("U = RI<sup>2</sup>t", "R = <span>U/I<sup>2</sup>t</span>")
			Binesh.AddToHTML("R = <span>"..U.."/"..I.."<sup>2</sup>*"..t.."</span> &#8658; R = "..R.." Ohm")
			Web.Refresh("Web1");
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„ﬁ«Ê„ ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "R");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findt = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
	if Findt ~= -1 and ListBox.GetItemData("unknowns", Findt) == "t" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1 then
		if R ~= nil and I ~= nil and U_Output ~= nil then
			t = U_Output/(I^2*R)
			
			Binesh.AddToHTML("U: "..U_Output.." J", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("R: "..R.." Ohm", "V")
			Binesh.AddToHTML("t: ?", "V")
			
			Binesh.CreateHTMLFile("U = RI<sup>2</sup>t", "t = <span>U/I<sup>2</sup>R</span>")
			Binesh.AddToHTML("t = <span>"..U_Output.."/"..I.."<sup>2</sup>*"..R.."</span> &#8658; t = "..t.." s")
			Web.Refresh("Web1");
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "t");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end