function Binesh.PreprationDelta(NameFA, NameEN, UnitFA, UnitEN)
	if ListBox.FindItem("Words", -1, LB_BYTEXT, UnitFA) ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, UnitEN) ~= -1 then
		FindFA = ListBox.FindItem("Words", -1, LB_BYTEXT, NameFA);
		FindEN = ListBox.FindItem("Words", -1, LB_BYTEXT, NameEN);
		if FindFA ~= -1 or FindEN ~= -1 then
			if FindFA ~= -1 then
				Find1 = FindFA
			else
				Find1 = FindEN
			end
			
			Find2FA = ListBox.FindItem("Words", Find1, LB_BYTEXT, NameFA);
			Find2EN = ListBox.FindItem("Words", Find1, LB_BYTEXT, NameEN);
			if Find2FA ~= -1 or Find2EA ~= -1 then
				if Find2FA ~= -1 then
					Find2 = Find2FA
				else
					Find2 = Find2EN
				end
				
				ListBox.SetItemText("Words", Find1, "«Ê·Ì‰ "..NameFA);
				ListBox.SetItemText("Words", Find2, "œÊ„Ì‰ "..NameFA);
			end
			
			if ListBox.FindItem("Words", Find1, LB_BYTEXT, "»Â") ~= -1 then
				ListBox.SetItemText("Words", Find1, "«Ê·Ì‰ "..NameFA);
				ListBox.SetItemText("Words", ListBox.FindItem("Words", Find1, LB_BYTEXT, "»Â"), "œÊ„Ì‰ "..NameFA);
			end
		end
	end
end