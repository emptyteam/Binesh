function Binesh.F97_1()
	if U == nil then
		
		Binesh.AddUnknown("��ю�", "U")
	end
	
	if C_Condenser == nil then
		
		Binesh.AddUnknown("����", "C")
	end
	
	if V_Electric == nil then
		
		Binesh.AddUnknown("���ǎ", "V")
	end
	
	FindU = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��ю�");
	if FindU ~= -1 and ListBox.GetItemData("unknowns", FindU) == "K" and ListBox.FindItem("Words", -1, LB_BYTEXT, "��ю�") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1 then
		if V_Electric ~= nil and C_Condenser ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span>CV<sup>2</sup>")
			U = 0.5*C_Condenser*V_Electric^2
			
			Binesh.AddToHTML("U = <span>1/2</span>*"..C_Condenser.."*"..V_Electric.."<sup>2</sup> &#8658; U = "..U.." J")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("C: "..C_Condenser.." F", "V")
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("U: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "��ю�");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "U");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindC_Condenser = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
	if FindC_Condenser ~= -1 and ListBox.GetItemData("unknowns", FindC_Condenser) == "C" and ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "C") ~= -1 then
		if V_Electric ~= nil and U ~= nil then
			Binesh.CreateHTMLFile("U = <span>1/2</span>CV<sup>2</sup>", "C = <span>2U/V<sup>2</sup></span>")
			C_Condenser = (2*U)/(V_Electric^2)
			
			Binesh.AddToHTML("C = <span>2*"..U.."/"..V_Electric.."<sup>2</sup></span> &#8658; C = "..C_Condenser.." F")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("U: "..U.." J", "V")
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("C: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "C");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindV_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���ǎ");
	if FindV_Electric ~= -1 and ListBox.GetItemData("unknowns", FindV_Electric) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���ǎ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
		if U ~= nil and C_Condenser ~= nil then
			Binesh.CreateHTMLFile("U = 1/2CV<sup>2</sup>", "V = <span>Sqrt(2U/C)</span>")
			V_Electric = Math.Sqrt(2*U/C_Condenser)
			
			Binesh.AddToHTML("V = Sqrt(2*"..U.."/"..C_Condenser..") &#8658; V = "..V_Electric.." m/s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("U: "..U.." J", "V")
			Binesh.AddToHTML("C: "..C_Condenser.." F", "V")
			Binesh.AddToHTML("V: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���ǎ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end