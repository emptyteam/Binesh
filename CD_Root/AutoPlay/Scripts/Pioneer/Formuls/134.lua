function Binesh.F134()
	if Fi == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Fi") ~= -1) then
		if A ~= nil and B ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("Fi = ABCosTeta")
			Fi = A*B*Math.Cos(Math.Rad(Teta))
			
			Binesh.AddToHTML("Fi = "..Binesh.ProgressNumber(A).."*"..Binesh.ProgressNumber(B).."*Cos"..Binesh.ProgressNumber(Teta).." &#8658; Fi = "..Binesh.ProgressNumber(Fi).." Wb")
			
			Binesh.AddToHTML("A = "..Binesh.ProgressNumber(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("B = "..Binesh.ProgressNumber(B).." T", "V")
			Binesh.AddToHTML("Teta = "..Binesh.ProgressNumber(Teta), "V")
			Binesh.AddToHTML("Fi = ?", "V")
		end
	end
	
	if A == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã”„ ”ÿÕ") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "A") ~= -1)) then
		if Fi ~= nil and B ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("Fi = ABCosTeta", "A = <span>Fi/BCosTeta</span>")
			A = Fi/(B*Math.Cos(Math.Rad(Teta)))
			
			Binesh.AddToHTML("A = <span>"..Binesh.ProgressNumber(Fi).."/"..Binesh.ProgressNumber(B).."*Cos"..Binesh.ProgressNumber(Teta).."</span> &#8658; A = "..Binesh.ProgressNumber(A).." m<sup>2</sup>")
			
			Binesh.AddToHTML("Fi = "..Binesh.ProgressNumber(Fi).." Wb", "V")
			Binesh.AddToHTML("B = "..Binesh.ProgressNumber(B).." T", "V")
			Binesh.AddToHTML("Teta = "..Binesh.ProgressNumber(Teta), "V")
			Binesh.AddToHTML("A = ?", "V")
		end
	end
	
	if B == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1) then
		if A ~= nil and Fi ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("Fi = ABCosTeta", "B = <span>Fi/AcosTeta</span>")
			B = Fi/(A*Math.Cos(Math.Rad(Teta)))
			
			Binesh.AddToHTML("B = <span>"..Binesh.ProgressNumber(Fi).."/"..Binesh.ProgressNumber(A).."*Cos"..Binesh.ProgressNumber(Teta).."</span> &#8658; B = "..Binesh.ProgressNumber(B).." T")
			
			Binesh.AddToHTML("Fi = "..Binesh.ProgressNumber(Fi).." Wb", "V")
			Binesh.AddToHTML("A = "..Binesh.ProgressNumber(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("Teta = "..Binesh.ProgressNumber(Teta), "V")
			Binesh.AddToHTML("B = ?", "V")
		end
	end
	
	if Teta == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Alpha") ~= -1)) then
		if A ~= nil and Fi ~= nil and B ~= nil then
			Binesh.CreateHTMLFile("Fi = ABCosTeta", "CosTeta = <span>Fi/AB</span>")
			
			CosTeta = Fi/(A*B)
			Teta_Radian = Math.Acos(Math.Acos(Math.Cos(CosTeta)))
			Teta = Math.RadToDeg(Teta_Radian)
			
			Binesh.AddToHTML("CosTeta = <span>"..Binesh.ProgressNumber(Fi).."/"..Binesh.ProgressNumber(A).."*"..Binesh.ProgressNumber(B).."</span> &#8658; CosTeta = "..Binesh.ProgressNumber(CosTeta).." &#8658; Teta<sub>Radian</sub> = "..Binesh.ProgressNumber(Teta_Radian).." &#8658; Teta = "..Binesh.ProgressNumber(Teta).."<sup>o</sup>")
			
			Binesh.AddToHTML("Fi = "..Binesh.ProgressNumber(Fi).." Wb", "V")
			Binesh.AddToHTML("A = "..Binesh.ProgressNumber(A).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("B = "..Binesh.ProgressNumber(B).." T", "V")
			Binesh.AddToHTML("Teta = ?", "V")
		end
	end
end