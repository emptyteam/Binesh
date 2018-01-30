function Binesh.F24()
	if isLens == true then
		if D == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, " Ê«‰ ⁄œ”Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "D") ~= -1) then
			if f ~= nil then
				Binesh.CreateHTMLFile("D = <span>1/f</span>")
				D = 1/f
				
				Binesh.AddToHTML("D = <span>1/"..f.."</span> &#8658; D = "..D.." diopter")
				
				Binesh.AddToHTML("D: "..D.." diopter", "V")
				Binesh.AddToHTML("f: ?", "V")
			end
		end
		
		if f == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â ò«‰Ê‰Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "f") ~= -1) then
			if D ~= nil then
				Binesh.CreateHTMLFile("D = <span>1/f</span>", "f = <span>1/D</span>")
				f = 1/D
				
				Binesh.AddToHTML("f = <span>1/"..D.."</span> &#8658; f = "..f.." m")
				
				Binesh.AddToHTML("f: "..f.." m", "V")
				Binesh.AddToHTML("D: ?", "V")
			end
		end
	end
end