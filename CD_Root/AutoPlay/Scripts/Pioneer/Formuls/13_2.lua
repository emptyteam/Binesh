function Binesh.F13_2()
	if m_Zoom == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "��ѐ �����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1) then
		if ApBp ~= nil and AB ~= nil then
			Binesh.CreateHTMLFile("m = <span>A`B`/AB</span>")
			m_Zoom = ApBp/AB
			
			Binesh.AddToHTML("m = <span>"..Binesh.Convert_e(ApBp).."/"..Binesh.Convert_e(AB).."<span> &#8658; m = "..Binesh.Convert_e(m_Zoom))
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("A`B`: "..Binesh.Convert_e(ApBp).."m", "V")
			Binesh.AddToHTML("AB: "..Binesh.Convert_e(AB).."m", "V")
			Binesh.AddToHTML("m: ?", "V")
		end
	end
	
	if ApBp == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "���� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "A`B`") ~= -1) then
		if m_Zoom ~= nil and AB ~= nil then
			Binesh.CreateHTMLFile("m = <span>A`B`/AB</span>", "A`B` = m*AB")
			ApBp = m_Zoom*AB
			
			Binesh.AddToHTML("A`B` = "..Binesh.Convert_e(m_Zoom).."*"..Binesh.Convert_e(AB).." &#8658; A`B` = "..Binesh.Convert_e(ApBp).." m")
			
			Binesh.AddToHTML("m: "..Binesh.Convert_e(m_Zoom), "V")
			Binesh.AddToHTML("AB: "..Binesh.Convert_e(AB).."m", "V")
			Binesh.AddToHTML("A`B`: ?", "V")
		end
	end
	
	if AB == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "��� ���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "AB") ~= -1) then
		if ApBp ~= nil and m_Zoom ~= nil then
			Binesh.CreateHTMLFile("m = <span>A`B`/AB</span>", "AB = <span>A`B`/m</span>")
			AB = ApBp/m_Zoom
			
			Binesh.AddToHTML("AB = <span>"..Binesh.Convert_e(ApBp).."/"..Binesh.Convert_e(m_Zoom).."<span> &#8658; AB = "..Binesh.Convert_e(AB).." m")
			
			Binesh.AddToHTML("m: "..Binesh.Convert_e(m_Zoom), "V")
			Binesh.AddToHTML("A`B`: "..Binesh.Convert_e(ApBp).."m", "V")
			Binesh.AddToHTML("AB: ?", "V")
		end
	end
end