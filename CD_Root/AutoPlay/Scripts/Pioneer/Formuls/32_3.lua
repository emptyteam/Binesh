function Binesh.F32_3()
	if _t1 == nil then
		Binesh.AddUnknown("«Ê·Ì‰ “„«‰", "t1")
	end
	if _t2 == nil then
		Binesh.AddUnknown("œÊ„Ì‰ “„«‰", "t2")
	end
	
	Findt1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ “„«‰");
	if Findt1 ~= -1 and ListBox.GetItemData("unknowns", Findt1) == "t1" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ “„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t1") ~= -1 then
		if VBar_Speed ~= nil and _Deltax ~= nil and _t2 ~= nil then
			Binesh.CreateHTMLFile("VBar = <span>Deltax/(t<sub>1</sub>-t<sub>2</sub>)</span>", "t<sub>1</sub> = - <span>Deltax/VBar</span> +t<sub>2</sub>")
			_t1 = -(_Deltax/VBar_Speed) + _t2
			
			Binesh.AddToHTML("t<sub>1</sub> = <span>"..-_Deltax.."/"..VBar_Speed.."</span> +".._t2.." &#8658; t<sub>1</sub> = ".._t1.." s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("Deltax: ".._Deltax.." m", "V")
			Binesh.AddToHTML("VBar: "..VBar_Speed.." m/s", "V")
			Binesh.AddToHTML("t<sub>2</sub>: ".._t2.." s", "V")
			Binesh.AddToHTML("t<sub>1</sub>: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ “„«‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "t1");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findt2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ “„«‰");
	if Findt2 ~= -1 and ListBox.GetItemData("unknowns", Findt2) == "t2" and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ “„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t2") ~= -1 then
		if VBar_Speed ~= nil and _Deltax ~= nil and _t1 ~= nil then
			Binesh.CreateHTMLFile("VBar = <span>Deltax/(t<sub>1</sub>-t<sub>2</sub>)</span>", "t<sub>2</sub> = <span>Deltax/VBar</span> +t<sub>1</sub>")
			_t2 = (_Deltax/VBar_Speed) + _t1
			
			Binesh.AddToHTML("t<sub>2</sub> = <span>".._Deltax.."/"..VBar_Speed.."</span> +".._t1.." &#8658; t<sub>2</sub> = ".._t2.." s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("Deltax: ".._Deltax.." m", "V")
			Binesh.AddToHTML("VBar: "..VBar_Speed.." m/s", "V")
			Binesh.AddToHTML("t<sub>1</sub>: ".._t1.." s", "V")
			Binesh.AddToHTML("t<sub>2</sub>: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ “„«‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "t1");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end