function Binesh.F126()
	-- V_Electric_126 = Binesh.Genesis("���ǎ", "V", "", "", 1, "V", "���", false);
	if V_Electric == nil then
		
		Binesh.AddUnknown("���ǎ", "V")
	end
	
	if Epsilon == nil then
		
		Binesh.AddUnknown("���� ��ј�", "Epsilon")
	end
	
	-- I_126 = Binesh.Genesis("�����", "I", "", "", 1, "A", "���", false);
	if I == nil then
		
		Binesh.AddUnknown("�����", "I")
	end
	
	if r_Resistor == nil then
	
		Binesh.AddUnknown("������", "r")
	end
	
	
	FindV_Electric = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���ǎ")
	if FindV_Electric ~= -1 and ListBox.GetItemData("unknowns", FindV_Electric) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���ǎ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then
		if Epsilon ~= nil and r_Resistor ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("V = Epsilon-Ir")
			V_Electric = Epsilon-(I*r_Resistor)
			
			Binesh.AddToHTML("V = "..Epsilon.."-"..I.."*"..r_Resistor.." &#8658; V = "..V_Electric.." V")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("r: "..r_Resistor.." Ohm", "V")
			Binesh.AddToHTML("Epsilon: "..Epsilon.." V", "V")
			Binesh.AddToHTML("V: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���ǎ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindEpsilon = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ��ј�");
	if FindEpsilon ~= -1 and ListBox.GetItemData("unknowns", FindEpsilon) == "Epsilon" and ListBox.FindItem("Words", -1, LB_BYTEXT, "���� ��ј�") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Epsilon") ~= -1 then
		if V_Electric ~= nil and r_Resistor ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("V = Epsilon-Ir", "Epsilon = V+Ir")
			Epsilon = V_Electric + I*r_Resistor
			
			Binesh.AddToHTML("Epsilon = "..V_Electric.."+"..I.."*"..r_Resistor.." &#8658; Epsilon = "..Epsilon.." V")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("r: "..r_Resistor.." Ohm", "V")
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("Epsilon: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "���� ��ј�");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Epsilon");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findr_Resistor = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "������")
	if FindI ~= -1 and ListBox.GetItemData("unknowns", FindI) == "I" and ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
		if V_Electric ~= nil and r_Resistor ~= nil and Epsilon ~= nil  then
			Binesh.CreateHTMLFile("V = Epsilon-Ir", "I = <span>Epsilon-V/r</span>")
			I = (Epsilon-V_Electric)/r_Resistor
			
			Binesh.AddToHTML("I =<span>"..Epsilon.."-"..V_Electric.."/"..r_Resistor.."</span> &#8658; I = "..I.." A")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("Epsilon: "..Epsilon.." Ohm", "V")
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("r: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "I");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindI = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����")
	if Findr_Resistor ~= -1 and ListBox.GetItemData("unknowns", Findr_Resistor) == "R" and ListBox.FindItem("Words", -1, LB_BYTEXT, "������") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1 then
		if V_Electric ~= nil and Epsilon ~= nil and I ~= nil then
			Binesh.CreateHTMLFile("V = Epsilon-Ir", "r = <span>Epsilon-V/I<span>")
			r_Resistor = Epsilon-V_Electric/I
			
			Binesh.AddToHTML("r = <span>"..Epsilon.."/"..V_Electric.."/"..I.."</span>&#8658; r = "..r_Resistor.." Ohm")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("r: "..r_Resistor.." m", "V")
			Binesh.AddToHTML("Epsilon: "..Epsilon.." Ohm", "V")
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("I: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "������");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "r");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end