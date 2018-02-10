function Binesh.F2()
	if U == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÇäÑŽí") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1) then
		if m ~= nil and h ~= nil then
			Binesh.CreateHTMLFile("U = mgh")
			U = m*9.8*h
			
			Binesh.AddToHTML("U = "..Binesh.Convert_e(m).."*9.8*"..Binesh.Convert_e(h).." &#8658; U = "..Binesh.Convert_e(U).." J")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("m: "..Binesh.Convert_e(m).." Kg", "V")
			Binesh.AddToHTML("h: "..Binesh.Convert_e(h).." m", "V")
			Binesh.AddToHTML("U: ?", "V")
		end
	end
	
	if m == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÌÑã") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "m") ~= -1) then
		if U ~= nil and h ~= nil then
			Binesh.CreateHTMLFile("U = mgh", "m = <span>U/gh</span>")
			m = U/(9.8*h)
			
			Binesh.AddToHTML("m = <span>"..Binesh.Convert_e(U).."/9.8*"..Binesh.Convert_e(h).."</span> &#8658; m = "..Binesh.Convert_e(math.abs(m)).." Kg")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("h: "..Binesh.Convert_e(h).." m", "V")
			Binesh.AddToHTML("U: "..Binesh.Convert_e(U).." J", "V")
			Binesh.AddToHTML("m: ?", "V")
		end
	end
	
	if h == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "ÇÑÊÝÇÚ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "h") ~= -1) then
		if U ~= nil and m ~= nil then
			Binesh.CreateHTMLFile("U = mgh", "h = <span>U/mg</span>")
			h = U/(m*9.8)
			
			Binesh.AddToHTML("h = <span>"..Binesh.Convert_e(U).."/"..Binesh.Convert_e(m).."*9.8</span> &#8658; h = "..Binesh.Convert_e(h).." m")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("m: "..Binesh.Convert_e(m).." Kg", "V")
			Binesh.AddToHTML("U: "..Binesh.Convert_e(U).." J", "V")
			Binesh.AddToHTML("h: ?", "V")
		end
	end
end