function Binesh.F4_2()
	if _Teta1 == nil and _T1 == nil and _TF1 == nil then
		Binesh.AddUnknown("«Ê·Ì‰ œ„«", "Teta1")
	end
	
	if _Teta2 == nil and _T2 == nil and _TF2 == nil then
		Binesh.AddUnknown("œÊ„Ì‰ œ„«", "Teta2")
	end
	
	FindTeta1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«")
	if FindTeta1 ~= -1 and ListBox.GetItemData("unknowns", FindTeta1) == "Teta1" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„« «Ê·Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta1") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T1") ~= -1 then
		if Q ~= nil and m ~= nil and c ~= nil then
			Binesh.CreateHTMLFile("Q = mcDeltaTeta", "Q = mc(Teta<sub>2</sub>-Teta<sub>1</sub>)")
			Binesh.AddToHTML("Teta<sub>1</sub> = - <span>Q/mc</span> + Teta<sub>2</sub>")
			
			_Teta1 = (-Q/(m*c)) + _Teta2
			
			Binesh.AddToHTML("Teta<sub>1</sub> = - <span>"..Q.."/"..m.."*"..c.."</span> + ".._Teta2.." &#8658; Teta<sub>1</sub> = ".._Teta1.."<sup>o</sup>C")
			
			Web.Refresh("Web1");
				
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ œ„«");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Teta1");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindTeta2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«")
	if FindTeta2 ~= -1 and ListBox.GetItemData("unknowns", FindTeta1) == "Teta2" and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œ„« œÊ„Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta2") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "T2") ~= -1 then
		if Q ~= nil and m ~= nil and c ~= nil then
			Binesh.CreateHTMLFile("Q = mcDeltaTeta", "Q = mc(Teta<sub>2</sub>-Teta<sub>1</sub>)")
			Binesh.AddToHTML("Teta<sub>1</sub> = <span>Q/mc</span> + Teta<sub>1</sub>")
			
			_Teta2 = (-Q/(m*c)) + _Teta1
			
			Binesh.AddToHTML("Teta<sub>2</sub> = - <span>"..Q.."/"..m.."*"..c.."</span> + ".._Teta1.." &#8658; Teta<sub>2</sub> = ".._Teta2.."<sup>o</sup>C")
			
			Web.Refresh("Web1");
				
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ œ„«");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Teta2");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end