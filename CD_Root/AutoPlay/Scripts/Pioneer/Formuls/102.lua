function Binesh.F102()
	if V1_Electric == nil then
	
		Binesh.AddUnknown("«Ê·Ì‰ Ê· «é", "V1")
	end
	
	if V2_Electric == nil then
	
		Binesh.AddUnknown("œÊ„Ì‰ Ê· «é", "V2")
	end
	
	if C1 == nil then
	
		Binesh.AddUnknown("«Ê·Ì‰ Œ«“‰", "C1")
	end
	
	
	if C2 == nil then
		
		Binesh.AddUnknown("œÊ„Ì‰ Œ«“‰", "C2")
	end
	
	FindV1_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Ê· «é");
	if FindV1_Electric ~= -1 and ListBox.GetItemData("unknowns", FindV1_Electric) == "V1" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é «Ê·Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1 then
		if V2_Electric ~= nil and C1 ~= nil and C2 ~= nil then
			Binesh.CreateHTMLFile("V<sub>1</sub> = <span>V<sub>2</sub>C<sub>2</sub>/C<sub>1</sub></span>")
			V1_Electric = (V2_Electric*C2)/C1
		
			Binesh.AddToHTML("V<sub>1</sub> = <span>"..V2_Electric.."*"..C2.."/"..C1.."</span> &#8658; V<sub>1</sub> = "..V1_Electric.." V")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("C<sub>1</sub>: "..C1.." F", "V")
			Binesh.AddToHTML("C<sub>2</sub>: "..C2.." F", "V")
			Binesh.AddToHTML("V<sub>2</sub>: "..V2_Electric.." V", "V")
			Binesh.AddToHTML("V<sub>1</sub>: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Ê· «é");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V1");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindV2_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ Ê· «é");
	if FindV2_Electric ~= -1 and ListBox.GetItemData("unknowns", FindV2_Electric) == "V2" and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é œÊ„Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V2") ~= -1 then
		if V1_Electric ~= nil and C1 ~= nil and C2 ~= nil then
			Binesh.CreateHTMLFile("V<sub>1</sub> = <span>V<sub>2</sub>C<sub>2</sub>/C<sub>1</sub></span>", "V<sub>2</sub> = <span>V<sub>1</sub>C<sub>1</sub>/C<sub>2</sub></span>")
			
			V2_Electric = (V1_Electric*C1)/C2
			
			Binesh.AddToHTML("V<sub>2</sub> = <span>"..V1_Electric.."*"..C1.."/"..C2.."</span> &#8658; V<sub>2</sub> = "..V2_Electric.." V")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("C<sub>1</sub>: "..C1.." F", "V")
			Binesh.AddToHTML("C<sub>2</sub>: "..C2.." F", "V")
			Binesh.AddToHTML("V<sub>1</sub>: "..V1_Electric.." V", "V")
			Binesh.AddToHTML("V<sub>2</sub>: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ Ê· «é");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V2");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindC1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Œ«“‰");
	if FindC1 ~= -1 and ListBox.GetItemData("unknowns", FindC1) == "C1" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ Œ«“‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Œ«“‰ «Ê·Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "C1") ~= -1 then
		if V2_Electric ~= nil and V1_Electric ~= nil and C2 ~= nil then
			Binesh.CreateHTMLFile("V<sub>1</sub> = <span>V<sub>2</sub>C<sub>2</sub>/C<sub>1</sub></span>","C<sub>1</sub> = <span>V<sub>2</sub>C<sub>2</sub>/V<sub>1</sub></span>")
			C1 = (V2_Electric*C2)/V1_Electric
		
			Binesh.AddToHTML("C<sub>1</sub> = <span>"..V2_Electric.."*"..C2.."/"..V1_Electric.."</span> &#8658; C<sub>1</sub> = "..C1.." F")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("C<sub>2</sub>: "..C1.." F", "V")
			Binesh.AddToHTML("V<sub>2</sub>: "..V2_Electric.." V", "V")
			Binesh.AddToHTML("V<sub>1</sub>: "..V1_Electric.." V", "V")
			Binesh.AddToHTML("C<sub>1</sub>: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ Œ«“‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "C1");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindC2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ Œ«“‰");
	if FindC2 ~= -1 and ListBox.GetItemData("unknowns", FindC2) == "C2" and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ Œ«“‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Œ«“‰ œÊ„Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "C2") ~= -1 then
		if V1_Electric ~= nil and C1 ~= nil and V2_Electric ~= nil then
			Binesh.CreateHTMLFile("V<sub>1</sub> = <span>V<sub>2</sub>C<sub>2</sub>/C<sub>1</sub></span>", "C<sub>2</sub> = <span>V<sub>1</sub>C<sub>1</sub>/V<sub>2</sub></span>")
			
			C2 = (V1_Electric*C1)/V2_Electric
			
			Binesh.AddToHTML("C<sub>2</sub> = <span>"..V1_Electric.."*"..C1.."/"..V2_Electric.."</span> &#8658; C<sub>2</sub> = "..C2.." F")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("C<sub>1</sub>: "..C1.." F", "V")
			Binesh.AddToHTML("V<sub>2</sub>: "..V2_Electric.." V", "V")
			Binesh.AddToHTML("V<sub>1</sub>: "..V1_Electric.." V", "V")
			Binesh.AddToHTML("C<sub>2</sub>: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ Œ«“‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "C2");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end