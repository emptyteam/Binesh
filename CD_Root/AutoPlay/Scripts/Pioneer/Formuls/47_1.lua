function Binesh.F47_1()
	if fs_max == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "«’ÿò«ò œ— ¬” «‰Â Õ—ò ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "fs,max") ~= -1) then
		if N ~= nil and Mus ~= nil then
			Binesh.CreateHTMLFile("f<sub>s,max</sub> = Mu<sub>s</sub>N")
			fs_max = Mus*N
			
			Binesh.AddToHTML("f<sub>s,max</sub> = "..Binesh.Convert_e(Mus).."*"..Binesh.Convert_e(N).." &#8658; f<sub>s,max</sub> = "..Binesh.Convert_e(fs_max).." N")
			
			Binesh.AddToHTML("N: "..Binesh.Convert_e(N).." N", "V")
			Binesh.AddToHTML("Mu<sub>s</sub>: "..Binesh.Convert_e(Mus), "V")
			Binesh.AddToHTML("f<sub>s,max</sub>: ?", "V")
		end
	end
	
	if N == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1) then
		if fs_max ~= nil and Mus ~= nil then
			Binesh.CreateHTMLFile("f<sub>s,max</sub> = Mu<sub>s</sub>N", "N = <span>f<sub>s,max</sub>/Mu<sub>s</sub></span>")
			N = fs_max/Mus
			
			Binesh.AddToHTML("N = <span>"..Binesh.Convert_e(fs_max).."/"..Binesh.Convert_e(Mus).."</span> &#8658; N = "..Binesh.Convert_e(N).." N")
			
			Binesh.AddToHTML("f<sub>s,max</sub>: "..Binesh.Convert_e(fs_max).." N", "V")
			Binesh.AddToHTML("Mu<sub>s</sub>: "..Binesh.Convert_e(Mus), "V")
			Binesh.AddToHTML("N: ?", "V")
		end
	end
	
	if Mus == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» «’ÿò«ò «Ì” «ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Mus") ~= -1) then
		if fs_max ~= nil and N ~= nil then
			Binesh.CreateHTMLFile("f<sub>s,max</sub> = Mu<sub>s</sub>N", "Mu<sub>s</sub> = <span>f<sub>s,max</sub>/N</span>")
			Mus = fs_max/N
			
			Binesh.AddToHTML("Mu<sub>s</sub> = <span>"..Binesh.Convert_e(fs_max).."/"..Binesh.Convert_e(N).."</span> &#8658; Mu<sub>s</sub> = "..Binesh.Convert_e(Mus))
			
			Binesh.AddToHTML("f<sub>s,max</sub>: "..Binesh.Convert_e(fs_max).." N", "V")
			Binesh.AddToHTML("N: "..Binesh.Convert_e(N).." N", "V")
			Binesh.AddToHTML("Mu<sub>s</sub>: ?", "V")
		end
	end
end