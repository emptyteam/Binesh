function Binesh.F47_1()
	if fs_max == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "��ؘǘ �� ������ �ј�") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "fs,max") ~= -1) then
		if N ~= nil and Mus ~= nil then
			Binesh.CreateHTMLFile("f<sub>s,max</sub> = Mu<sub>s</sub>N")
			fs_max = Mus*N
			
			Binesh.AddToHTML("f<sub>s,max</sub> = "..Binesh.ProgressNumber(Mus).."*"..Binesh.ProgressNumber(N).." &#8658; f<sub>s,max</sub> = "..Binesh.ProgressNumber(fs_max).." N")
			
			Binesh.AddToHTML("N = "..Binesh.ProgressNumber(N).." N", "V")
			Binesh.AddToHTML("Mu<sub>s</sub> = "..Binesh.ProgressNumber(Mus), "V")
			Binesh.AddToHTML("f<sub>s,max</sub> = ?", "V")
		end
	end
	
	if N == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1) then
		if fs_max ~= nil and Mus ~= nil then
			Binesh.CreateHTMLFile("f<sub>s,max</sub> = Mu<sub>s</sub>N", "N = <span>f<sub>s,max</sub>/Mu<sub>s</sub></span>")
			N = fs_max/Mus
			
			Binesh.AddToHTML("N = <span>"..Binesh.ProgressNumber(fs_max).."/"..Binesh.ProgressNumber(Mus).."</span> &#8658; N = "..Binesh.ProgressNumber(N).." N")
			
			Binesh.AddToHTML("f<sub>s,max</sub> = "..Binesh.ProgressNumber(fs_max).." N", "V")
			Binesh.AddToHTML("Mu<sub>s</sub> = "..Binesh.ProgressNumber(Mus), "V")
			Binesh.AddToHTML("N = ?", "V")
		end
	end
	
	if Mus == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "���� ��ؘǘ �������") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Mus") ~= -1) then
		if fs_max ~= nil and N ~= nil then
			Binesh.CreateHTMLFile("f<sub>s,max</sub> = Mu<sub>s</sub>N", "Mu<sub>s</sub> = <span>f<sub>s,max</sub>/N</span>")
			Mus = fs_max/N
			
			Binesh.AddToHTML("Mu<sub>s</sub> = <span>"..Binesh.ProgressNumber(fs_max).."/"..Binesh.ProgressNumber(N).."</span> &#8658; Mu<sub>s</sub> = "..Binesh.ProgressNumber(Mus))
			
			Binesh.AddToHTML("f<sub>s,max</sub> = "..Binesh.ProgressNumber(fs_max).." N", "V")
			Binesh.AddToHTML("N = "..Binesh.ProgressNumber(N).." N", "V")
			Binesh.AddToHTML("Mu<sub>s</sub> = ?", "V")
		end
	end
end