function Binesh.F56()
	if R_Output == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1) then
		if WP ~= nil and W_Use ~= nil then
			Binesh.CreateHTMLFile("R = <span>W`/W</span>*100")
			R_Output = (WP/W_Use)*100
			
			Binesh.AddToHTML("R = <span>"..Binesh.Convert_e(WP).."/"..Binesh.Convert_e(W_Use).."</span>*100 &#8658; R = "..Binesh.Convert_e(R_Output).."%")
			if R_Output >= 100 then
				Binesh.AddCommentToHTML("��� ����� ��� ����� �� ��� ��� �� ����� �퍐�� ����� �� 100% �� ��� ����� 100% �� ��� ���.")
			end
			
			Binesh.AddToHTML("W`: "..Binesh.Convert_e(WP).." J", "V")
			Binesh.AddToHTML("W<sub>Use</sub>: "..Binesh.Convert_e(W_Use).." J", "V")
			Binesh.AddToHTML("R: ?", "V")
		end
	end
	
	if WP == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "��ю� ������") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W`") ~= -1) then
		if R_Output ~= nil and W_Use ~= nil then
			Binesh.CreateHTMLFile("R = <span>W`/W</span>*100", "W` = <span>RW/100</span>")
			WP = R_Output*W_Use/100
			
			Binesh.AddToHTML("W` = <span>"..Binesh.Convert_e(R_Output).."*"..Binesh.Convert_e(W_Use).."/100</span> &#8658; W` = "..Binesh.Convert_e(WP).." J")
			if R_Output >= 100 then
				Binesh.AddCommentToHTML("��� ����� ��� ����� �� ��� ��� �� ����� �퍐�� ����� �� 100% �� ��� ����� 100% �� ��� ���.")
			end
			
			Binesh.AddToHTML("R: "..Binesh.Convert_e(R_Output).." %", "V")
			Binesh.AddToHTML("W<sub>Use</sub>: "..Binesh.Convert_e(W_Use).." J", "V")
			Binesh.AddToHTML("W`: ?", "V")
		end
	end
	
	if W_Use == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "��ю� �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "W") ~= -1) then
		if R_Output ~= nil and WP ~= nil then
			Binesh.CreateHTMLFile("R = <span>W`/W</span>*100", "W = 100*<span>W`/R</span>")
			W_Use = 100*WP/R_Output
			
			Binesh.AddToHTML("W = 100*<span>"..Binesh.Convert_e(WP).."/"..Binesh.Convert_e(R_Output).."</span> &#8658; W = "..Binesh.Convert_e(W_Use).." J")
			if R_Output >= 100 then
				Binesh.AddCommentToHTML("��� ����� ��� ����� �� ��� ��� �� ����� �퍐�� ����� �� 100% �� ��� ����� 100% �� ��� ���.")
			end
			
			Binesh.AddToHTML("R: "..Binesh.Convert_e(R_Output).." %", "V")
			Binesh.AddToHTML("W`: "..Binesh.Convert_e(WP).." J", "V")
			Binesh.AddToHTML("W<sub>Use</sub>: ?", "V")
		end
	end
end