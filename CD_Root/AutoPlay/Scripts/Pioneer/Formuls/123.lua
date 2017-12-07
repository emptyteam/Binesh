if I1 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'T1' then
		ListBox.AddItem("unknowns", "����� �����", "I1");
	end
end

if I2 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'T2' then
		ListBox.AddItem("unknowns", "����� �����", "I2");
	end
end

if R1 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "������")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'R1' then
		ListBox.AddItem("unknowns", "����� ������", "R1");
	end
end

if R2 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "������")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'R2' then
		ListBox.AddItem("unknowns", "����� ������", "R2");
	end
end

FindI1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� �����")
if FindI1 ~= -1 and ListBox.GetItemData("unknowns", FindI1) == "I1" then
	if I2 ~= nil and R1 ~= nil and R2 ~= nil then
		Binesh.CreateHTMLFile("<span>I<sub>2</sub>/I<sub>1</sub></span> = <span>R<sub>1</sub>/R<sub>2</sub></span>","I<sub>1</sub> = <span>I<sub>2</sub>R<sub>2</sub>/R<sub>1</sub></span>")
		I1 = (I2*R2)/R1
		
		Binesh.AddToHTML("I<sub>1</sub> = <span>"..I2.."*"..R2.."/"..R1.."</span> &#8658; I<sub>1</sub> = "..I1.." A")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� �����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "I1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindI2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� �����")
if FindI2 ~= -1 and ListBox.GetItemData("unknowns", FindI2) == "I2" then
	if I1 ~= nil and R1 ~= nil and R2 ~= nil then
		Binesh.CreateHTMLFile("<span>I<sub>2</sub>/I<sub>1</sub></span> = <span>R<sub>1</sub>/R<sub>2</sub></span>", "I<sub>2</sub> = <span>I<sub>1</sub>R<sub>1</sub>/R<sub>2</sub></span>")
		I2 = (I1*R1)/R2
		
		Binesh.AddToHTML("I<sub>2</sub> = <span>"..I1.."*"..R1.."/"..R2.."</span> &#8658; I<sub>2</sub> = "..I2.." A")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� �����");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "I2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindR1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ������")
if FinR1 ~= -1 and ListBox.GetItemData("unknowns", FindR1) == "R1" then
	if R2 ~= nil and I2 ~= nil and I1 ~= nil then
		Binesh.CreateHTMLFile("<span>I<sub>2</sub>/I<sub>1</sub></span> = <span>R<sub>1</sub>/R<sub>2</sub></span>", "R<sub>1</sub> = <span>I<sub>2</sub>R<sub>2</sub>/I<sub>1</sub></span>")
		R1 = (I2*R2)/I1
		
		Binesh.AddToHTML("R<sub>1</sub> = <span>"..I2.."*"..R2.."/"..I1.."</span> &#8658; R<sub>1</sub> = "..R1.." Ohm")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ������");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "R1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindR2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ������")
if FindR2 ~= -1 and ListBox.GetItemData("unknowns", FindR2) == "R2" then
	if I2 ~= nil and R1 ~= nil and I1 ~= nil then
		Binesh.CreateHTMLFile("<span>I<sub>2</sub>/I<sub>1</sub></span> = <span>R<sub>1</sub>/R<sub>2</sub></span>", "R<sub>2</sub> = <span>I<sub>1</sub>R<sub>1</sub>/I<sub>2</sub></span>")
		I2 = (I1*R1)/R2
		
		Binesh.AddToHTML("R<sub>2</sub> = <span>"..I1.."*"..R1.."/"..I2.."</span> &#8658; R<sub>2</sub> = "..R2.." Ohm")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "����� ������");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "R2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end