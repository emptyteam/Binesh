function Binesh.F12_EX()
	if isLens == false then
		if f == nil then
			if R_Radius ~= nil then
				Binesh.CreateHTMLFile("f = <span>r/2</span>")
				f = R_Radius/2
				
				Binesh.AddToHTML("f = <span>"..Binesh.ProgressNumber(R_Radius).."/2</span> &#8658; f = "..Binesh.ProgressNumber(f).." m")
				
				Binesh.AddToHTML("r = "..Binesh.ProgressNumber(R_Radius).." m", "V")
				Binesh.AddToHTML("f = ?", "V")
			end
		end
		
		if R_Radius == nil then
			if f ~= nil then
				Binesh.CreateHTMLFile("f = <span>r/2</span>", "r = 2f")
				R_Radius = 2*f
				
				Binesh.AddToHTML("r = 2*"..Binesh.ProgressNumber(f).." &#8658; r = "..Binesh.ProgressNumber(R_Radius).." m")
				
				Binesh.AddToHTML("f = "..Binesh.ProgressNumber(f).." m", "V")
				Binesh.AddToHTML("r = ?", "V")
			end
		end
	end
end