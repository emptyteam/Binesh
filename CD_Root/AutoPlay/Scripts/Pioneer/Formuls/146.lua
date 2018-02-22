function Binesh.F146()
	if M_Injection == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» «·ﬁ«Ì „ ﬁ«»·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "M") ~= -1) then
		if L1 ~= nil and L2 ~= nil then
			Binesh.CreateHTMLFile("M = sqrt(L<sub>1</sub>L<sub>2</sub>)")
			M_Injection = math.sqrt(L1*L2)
			
			Binesh.AddToHTML("M = Sqrt("..Binesh.ProgressNumber(L1).."*"..Binesh.ProgressNumber(L2)..") &#8658; M = "..Binesh.ProgressNumber(M_Injection).." s")
			
			Binesh.AddToHTML("L<sup>1</sup> "..Binesh.ProgressNumber(L1).." m", "V")
			Binesh.AddToHTML("L<sup>2</sup> "..Binesh.ProgressNumber(L2).." m", "V")
			Binesh.AddToHTML("M = ?", "V")
		end
	end
	
	if L1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "ÿÊ· «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "L1") ~= -1)) then
		if L2 ~= nil and M_Injection ~= nil then
			Binesh.CreateHTMLFile("M = sqrt(L<sub>1</sub>*L<sub>2</sub>)", "L<sub>1</sub> = <span>M<sup>2</sup>/L<sub>2</sub></span>")
			L1 = (M^2)/L2
			
			Binesh.AddToHTML("L1 = <span>"..Binesh.ProgressNumber(M).."<sup>2</sup>/"..Binesh.ProgressNumber(L2).."</span> &#8658; L<sub>1</sub> = "..Binesh.ProgressNumber(L1).." m")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("M = "..Binesh.ProgressNumber(M_Injection).." s", "V")
			Binesh.AddToHTML("L<sup>2</sup> "..Binesh.ProgressNumber(L2).." m", "V")
			Binesh.AddToHTML("L<sup>1</sup> ?", "V")
		end
	end
	
	if L2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ÿÊ·") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "ÿÊ· œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "L2") ~= -1)) then
		if M_Injection ~= nil and L2 ~= nil then
			Binesh.CreateHTMLFile("M = sqrt(L<sub>1</sub>*L<sub>2</sub>)", "L<sub>2</sub> = <span>M<sup>2</sup>/L<sub>1</sub></span>")
			L2 = (M^2)/L1
			
			Binesh.AddToHTML("L2 = <span>"..Binesh.ProgressNumber(M).."<sup>2</sup>/"..Binesh.ProgressNumber(L1).."</span> &#8658; L<sub>2</sub> = "..Binesh.ProgressNumber(L2).." m")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("M = "..Binesh.ProgressNumber(M_Injection).." s", "V")
			Binesh.AddToHTML("L<sup>1</sup> "..Binesh.ProgressNumber(L1).." m", "V")
			Binesh.AddToHTML("L<sup>2</sup> ?", "V")
		end
	end
end