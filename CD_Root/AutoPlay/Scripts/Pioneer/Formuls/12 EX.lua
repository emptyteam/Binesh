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
			
			Binesh.AddToHTML("f = <span>"..Binesh.Convert_e(R_Radius).."/2</span> &#8658; f = "..Binesh.Convert_e(f).." m")
			
			Binesh.AddToHTML("r: "..Binesh.Convert_e(R_Radius).." m", "V")
			Binesh.AddToHTML("f: ?", "V")
		end
	end
	
	if R_Radius == nil then
		if f ~= nil then
			Binesh.CreateHTMLFile("f = <span>r/2</span>", "r = 2f")
			R_Radius = 2*f
			
			Binesh.AddToHTML("r = 2*"..Binesh.Convert_e(f).." &#8658; r = "..Binesh.Convert_e(R_Radius).." m")
			
			Binesh.AddToHTML("f: "..Binesh.Convert_e(f).." m", "V")
			Binesh.AddToHTML("r: ?", "V")
		end
	end
end