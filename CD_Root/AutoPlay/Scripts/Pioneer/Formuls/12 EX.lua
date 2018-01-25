function Binesh.F12_EX()
	local Engage = false
	if ListBox.FindItem("Words", -1, LB_BYTEXT, "⁄œ”Ì") ~= -1 then
		local Engage = true
	end
	
	if ListBox.FindItem("Words", -1, LB_BYTEXT, "¬Ì‰Â") ~= -1 then
		local Engage = true
	end
	
	if f == nil and Engage == true then
		if R_Radius ~= nil then
			Binesh.CreateHTMLFile("f = <span>r/2</span>")
			f = R_Radius/2
			
			Binesh.AddToHTML("f = <span>"..R_Radius.."/2</span> &#8658; f = "..f.." m")
			
			Binesh.AddToHTML("r: "..R_Radius.." m", "V")
			Binesh.AddToHTML("f: ?", "V")
		end
	end
	
	if R_Radius == nil then
		if f ~= nil then
			Binesh.CreateHTMLFile("f = <span>r/2</span>", "r = 2f")
			R_Radius = 2*f
			
			Binesh.AddToHTML("r = 2*"..f.." &#8658; r = "..R_Radius.." m")
			
			Binesh.AddToHTML("f: "..f.." m", "V")
			Binesh.AddToHTML("r: ?", "V")
		end
	end
end