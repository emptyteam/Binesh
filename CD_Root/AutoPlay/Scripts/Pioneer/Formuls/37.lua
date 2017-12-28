function Binesh.F37()
	if 	VBar_Speed == nil then
		Binesh.AddUnknown("”—⁄  „ Ê”ÿ", "VBar")
	end
	
	if V1_Speed == nil then
		Binesh.AddUnknown("«Ê·Ì‰ ”—⁄ ", "V1")
	end
	
	if V2_Speed == nil then
		Binesh.AddUnknown("œÊ„Ì‰ ”—⁄ ", "V2")
	end
	
	FindVBar_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”—⁄  „ Ê”ÿ")
	if FindVBar_Speed ~= -1 and ListBox.GetItemData("unknowns", FindVBar_Speed) == "VBar" and ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  „ Ê”ÿ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "VBar") ~= -1 then
		if V1_Speed ~= nil and V2_Speed ~= nil then
			Binesh.CreateHTMLFile("VBar = <span>V<sub>1</sub>+V<sub>2</sub>/2</span>")
			VBar_Speed = (V1_Speed+V2_Speed)/2
		
			Binesh.AddToHTML("VBar = <span>"..V1_Speed.."+"..V2_Speed.."/2</span> &#8658; VBar = "..VBar_Speed.." m/s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("V<sun>2</sub>: "..V2_Speed.." m/s", "V")
			Binesh.AddToHTML("V<sub>1</sub>: "..V1_Speed.." m/s", "V")
			Binesh.AddToHTML("VBar: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "”—⁄  „ Ê”ÿ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "VBar");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindV1_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ")
	if FindV1_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV1_Speed) == "V1" or ListBox.GetItemData("unknowns", FindV1_Speed) == "V0" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  «Ê·Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1 then
		if VBar_Speed ~= nil and V2_Speed ~= nil then
			Binesh.CreateHTMLFile("VBar = <span>V<sub>1</sub>+V<sub>2</sub>/2</span>", "V<sub>1</sub> = 2VBar-V<sub>2</sub>")
			V1_Speed = 2*VBar_Speed - V2_Speed
	
			
			Binesh.AddToHTML("V<sub>1</sub> = 2*"..VBar_Speed.."-"..V2_Speed.." &#8658; V<sub>1</sub> = "..V1_Speed.." m/s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("V<sun>2</sub>: "..V2_Speed.." m/s", "V")
			Binesh.AddToHTML("VBar: "..VBar_Speed.." m/s", "V")
			Binesh.AddToHTML("V<sub>1</sub>: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V1");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindV2_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ”—⁄ ");
	if FindV2_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV2_Speed) == "V2" and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄  œÊ„Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V2") ~= -1 then
		if VBar_Speed ~= nil and V1_Speed ~= nil then
			Binesh.CreateHTMLFile("VBar = <span>V<sub>1</sub>+V<sub>2</sub>/2</span>", "V<sub>2</sub> = 2*VBar-V<sub>1</sub>")
			
			V2_Speed = 2*VBar_Speed - V1_Speed
			
			Binesh.AddToHTML("V<sub>2</sub> = 2*"..VBar_Speed.."-"..V1_Speed.." &#8658; V<sub>2</sub> = "..V2_Speed.." m/s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("V<sub>1</sub>: "..V1_Speed.." m/s", "V")
			Binesh.AddToHTML("VBar: "..VBar_Speed.." m/s", "V")
			Binesh.AddToHTML("V<sun>2</sub>: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ”—⁄ ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V2");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end