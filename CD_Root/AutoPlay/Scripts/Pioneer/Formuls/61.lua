function Binesh.F61()
	if F1 == nil then
		Binesh.AddUnknown("«Ê·Ì‰ ‰Ì—Ê", "F1")
	end
	
	if F2 == nil then
		Binesh.AddUnknown("œÊ„Ì‰ ‰Ì—Ê", "F2")
	end
	
	if A1 == nil then
		Binesh.AddUnknown("«Ê·Ì‰ ”ÿÕ", "A1")
	end
	
	if A2 == nil then
		Binesh.AddUnknown("œÊ„Ì‰ ”ÿÕ", "A2")
	end
	
	FindF1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ‰Ì—Ê");
	if FindF1 ~= -1 and ListBox.GetItemData("unknowns", FindF1) == "F1" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê «Ê·Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F1") ~= -1 then
		if F2 ~= nil and A1 ~= nil and A2 ~= nil then
			Binesh.CreateHTMLFile("<span>F<sub>1</sub>/A<sub>1</sub></span> = <span>F<sub>2</sub>/A<sub>1</sub></span>", "F<sub>1</sub> = <span>A<sub>1</sub>F<sub>2</sub>/A<sub>2</sub></span>")
			F1 = (A1*F2)/(A2)
			
			
			Binesh.AddToHTML("F<sub>1</sub> = <span>"..A1.."*"..F2.."/"..A2.."</span> &#8658; F<sub>1</sub> = "..F1.." N")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("A<sub>1</sub>: "..A1.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("F<sub>2</sub>: "..F2.." N", "V")
			Binesh.AddToHTML("A<sub>2</sub>: "..A2.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("F<sub>1</sub>: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ‰Ì—Ê");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "F1");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindF2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ‰Ì—Ê");
	if FindF2 ~= -1 and ListBox.GetItemData("unknowns", FindF2) == "F2" and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê œÊ„Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "F2") ~= -1 then
		if F1 ~= nil and A1 ~= nil and A2 ~= nil then
			Binesh.CreateHTMLFile("<span>F<sub>1</sub>/A<sub>1</sub></span> = <span>F<sub>2</sub>/A<sub>1</sub></span>", "F<sub>2</sub> = <span>A<sub>2</sub>F<sub>1</sub>/A<sub>1</sub></span>")
			F2 = (A2*F1)/(A1)
			
			Binesh.AddToHTML("F<sub>2</sub> = <span>"..A2.."*"..F1.."/"..A1.."</span> &#8658; F<sub>2</sub> = "..F2.." N")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("A<sub>1</sub>: "..A1.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("F<sub>1</sub>: "..F1.." N", "V")
			Binesh.AddToHTML("A<sub>2</sub>: "..A2.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("F<sub>2</sub>: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ‰Ì—Ê");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "F2");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindA1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ”ÿÕ");
	if FindA1 ~= -1 and ListBox.GetItemData("unknowns", FindA1) == "A1" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ «Ê·Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "A1") ~= -1 then
		if F1 ~= nil and F2 ~= nil and A2 ~= nil then
			Binesh.CreateHTMLFile("<span>F<sub>1</sub>/A<sub>1</sub></span> = <span>F<sub>2</sub>/A<sub>1</sub></span>", "A<sub>1</sub> = <span>F<sub>1</sub>A<sub>2</sub>/F<sub>2</sub></span>")
			A1 = (F1*A2)/(F2)
			
			Binesh.AddToHTML("A<sub>1</sub> = <span>"..F1.."*"..A2.."/"..F2.."</span> &#8658; A<sub>1</sub> = "..A1.." m<sup>2</sup>")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("F<sub>1</sub>: "..F1.." N", "V")
			Binesh.AddToHTML("F<sub>2</sub>: "..F2.." N", "V")
			Binesh.AddToHTML("A<sub>2</sub>: "..A2.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("A<sub>1</sub>: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ”ÿÕ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "A1");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindA2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ”ÿÕ");
	if FindA2 ~= -1 and ListBox.GetItemData("unknowns", FindA2) == "A2" and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ œÊ„Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "A2") ~= -1 then
		if F1 ~= nil and F2 ~= nil and A2 ~= nil then
			Binesh.CreateHTMLFile("<span>F<sub>1</sub>/A<sub>1</sub></span> = <span>F<sub>2</sub>/A<sub>1</sub></span>", "A<sub>2</sub> = <span>F<sub>2</sub>A<sub>1</sub>/F<sub>1</sub></span>")
			A2 = (F2*A1)/(F1)
			
			Binesh.AddToHTML("A<sub>2</sub> = <span>"..F2.."*"..A1.."/"..F1.."<span> &#8658; A<sub>2</sub> = "..A2.." m<sup>2</sup>")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("F<sub>1</sub>: "..F1.." N", "V")
			Binesh.AddToHTML("F<sub>2</sub>: "..F2.." N", "V")
			Binesh.AddToHTML("A<sub>1</sub>: "..A1.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("A<sub>2</sub>: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ”ÿÕ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "A2");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end