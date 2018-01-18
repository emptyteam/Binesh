function Binesh.F134()
	if Fi == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Fi") ~= -1 then
		if A ~= nil and B ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("Fi = ABcosTeta")
			Fi = A*B*Math.Cos(Math.Rad(Teta))
			
			Binesh.AddToHTML("Fi = "..A.."*"..B.."*cos"..Teta.." &#8658; Fi = "..Fi.." Wb")
			
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("Fi: ?", "V")
		end
	end
	
	if A == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã”„ ”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "A") ~= -1 then
		if Fi ~= nil and B ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("Fi = ABcosTeta", "A = <span>Fi/BcosTeta</span>")
			A = Fi/(B*Math.Cos(Math.Rad(Teta)))
			
			Binesh.AddToHTML("A = <span>"..Fi.."/"..B.."*cos"..Teta.."</span> &#8658; A = "..A.." m<sup>2</sup>")
			
			Binesh.AddToHTML("Fi: "..Fi.." Wb", "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("A: ?", "V")
		end
	end
	
	if B == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1 then
		if A ~= nil and Fi ~= nil and Teta ~= nil then
			Binesh.CreateHTMLFile("Fi = ABcosTeta", "B = <span>Fi/AcosTeta</span>")
			B = Fi/(A*Math.Cos(Math.Rad(Teta)))
			
			Binesh.AddToHTML("B = <span>"..Fi.."/"..A.."*cos"..Teta.."</span> &#8658; B = "..B.." T")
			
			Binesh.AddToHTML("Fi: "..Fi.." Wb", "V")
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("Teta: "..Teta, "V")
			Binesh.AddToHTML("B: ?", "V")
		end
	end
	
	if Teta == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "“«ÊÌÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Teta") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Alpha") ~= -1 then
		if A ~= nil and Fi ~= nil and B ~= nil then
			Binesh.CreateHTMLFile("Fi = ABcosTeta", "cosTeta = <span>Fi/AB</span>")
			
			CosTeta = Fi/(A*B)
			Teta_Radian = Math.Acos(Math.Acos(Math.Cos(CosTeta)))
			Teta = Math.RadToDeg(Teta_Radian)
			
			Binesh.AddToHTML("cosTeta = <span>"..Fi.."/"..A.."*"..B.."</span> &#8658; cosTeta = "..CosTeta.." &#8658; Teta<sub>Radian</sub> = "..Teta_Radian.." &#8658; Teta = "..Teta.."<sup>o</sup>")
			
			Binesh.AddToHTML("Fi: "..Fi.." Wb", "V")
			Binesh.AddToHTML("A: "..A.." m<sup>2</sup>", "V")
			Binesh.AddToHTML("B: "..B.." T", "V")
			Binesh.AddToHTML("Teta: ?", "V")
		end
	end
end