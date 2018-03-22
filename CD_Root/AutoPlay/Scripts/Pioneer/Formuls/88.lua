function Binesh.F88()
	if ListBox.FindItem("Words", -1, LB_BYTEXT, "��������") == -1 then
		if E_Electric == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "E") ~= -1) then
			if q ~= nil and r ~= nil then
				Binesh.CreateHTMLFile("E = K<span>q/r<sup>2</sup></span>")
				E_Electric = ((9*10^9)*q)/(r^2)
				
				Binesh.AddToHTML("E = "..Binesh.ProgressNumber((9*10^9)).."*<span>"..Binesh.ProgressNumber(q).."/"..Binesh.ProgressNumber(r).."<sup>2</sup></span> &#8658; E = "..Binesh.ProgressNumber(E_Electric).." N/C")
				Web.Refresh("Web1");
				
				Binesh.AddToHTML("q = "..Binesh.ProgressNumber(q).." C", "V")
				Binesh.AddToHTML("r = "..Binesh.ProgressNumber(r).." m", "V")
				Binesh.AddToHTML("E = ?", "V")
				
				unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "�����");
				unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "E");
				if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
					ListBox.DeleteItem("unknowns", unknownPersianindex);
				end
			end
		end
		
		if q == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "���") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1) then
			if E_Electric ~= nil and r ~= nil then
				Binesh.CreateHTMLFile("E = K<span>q/r<sup>2</sup></span>", "q = <span>Er<sup>2</sup>/K</span>")
				q = (E_Electric*(r^2))/(9*10^9)
				
				Binesh.AddToHTML("q = <span>"..Binesh.ProgressNumber(E_Electric).."*"..Binesh.ProgressNumber(r).."<sup>2</sup>/"..Binesh.ProgressNumber((9*10^9)).."</span> &#8658; q = "..Binesh.ProgressNumber(q).." C")
				
				Binesh.AddToHTML("E = "..Binesh.ProgressNumber(E_Electric).." N/C", "V")
				Binesh.AddToHTML("r = "..Binesh.ProgressNumber(r).." m", "V")
				Binesh.AddToHTML("q = ?", "V")
			end
		end
		
		if r == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "�����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "r") ~= -1) then
			if E_Electric ~= nil and q ~= nil then
				Binesh.CreateHTMLFile("E = K<span>q/r<sup>2</sup></span>", "r = Sqrt(<span>Kq/E</span>)")
				r = Math.Sqrt(((9*10^9)*q)/E_Electric)
				
				Binesh.AddToHTML("r = sqrt(<span>"..Binesh.ProgressNumber((9*10^9)).."*"..Binesh.ProgressNumber(q).."/"..Binesh.ProgressNumber(E_Electric).."</span>) &#8658; r = "..Binesh.ProgressNumber(r).." m")
				
				Binesh.AddToHTML("E = "..Binesh.ProgressNumber(E_Electric).." N/C", "V")
				Binesh.AddToHTML("q = "..Binesh.ProgressNumber(q).." C", "V")
				Binesh.AddToHTML("r = ?", "V")
			end
		end
	end
end