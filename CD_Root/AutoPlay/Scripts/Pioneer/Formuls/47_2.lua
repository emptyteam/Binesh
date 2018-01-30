function Binesh.F47_2()
	if fk == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "«’ÿò«ò Ã‰»‘Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "fk") ~= -1) then
		if N ~= nil and Muk ~= nil then
			Binesh.CreateHTMLFile("f<sub>k</sub> = Mu<sub>k</sub>N")
			fk = Muk*N
			
			Binesh.AddToHTML("f<sub>k</sub> = "..Muk.."*"..N.." &#8658; f<sub>k</sub> = "..fk.." N")
			
			Binesh.AddToHTML("N: "..N.." N", "V")
			Binesh.AddToHTML("Mu<sub>k</sub>: "..Muk, "V")
			Binesh.AddToHTML("f<sub>k</sub>: ?", "V")
		end
	end
	
	if N == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1) then
		if fk ~= nil and Muk ~= nil then
			Binesh.CreateHTMLFile("f<sub>k</sub> = Mu<sub>k</sub>N", "N = <span>f<sub>k</sub>/Mu<sub>k</sub></span>")
			N = fk/Muk
			
			Binesh.AddToHTML("N = <span>"..fk.."/"..Muk.."</span> &#8658; N = "..N.."N")
			
			Binesh.AddToHTML("f<sub>k</sub>: "..fk.." N", "V")
			Binesh.AddToHTML("Mu<sub>k</sub>: "..Muk, "V")
			Binesh.AddToHTML("N: ?", "V")
		end
	end
	
	if Muk == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» «’ÿò«ò Ã‰»‘Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Muk") ~= -1) then
		if fk ~= nil and N ~= nil then
			Binesh.CreateHTMLFile("f<sub>k</sub> = Mu<sub>k</sub>N", "Mu<sub>k</sub> = <span>f<sub>k</sub>/N</span>")
			Muk = fk/N
			
			Binesh.AddToHTML("Mu<sub>k</sub> = <span>"..fk.."/"..N.."</span> &#8658; Mu<sub>k</sub> = "..Muk)
			
			Binesh.AddToHTML("f<sub>k</sub>: "..fk.." N", "V")
			Binesh.AddToHTML("N: "..N.." N", "V")
			Binesh.AddToHTML("Mu<sub>k</sub>: ?", "V")
		end
	end
end