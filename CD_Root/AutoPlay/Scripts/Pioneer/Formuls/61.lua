function Binesh.F61()
	if Fi == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "F1") ~= -1)) then
		if F2 ~= nil and A1 ~= nil and A2 ~= nil then
			Binesh.CreateHTMLFile("<span>F<sub>1</sub>/A<sub>1</sub></span> = <span>F<sub>2</sub>/A<sub>1</sub></span>", "F<sub>1</sub> = <span>A<sub>1</sub>F<sub>2</sub>/A<sub>2</sub></span>")
			F1 = (A1*F2)/(A2)
			
			Binesh.AddToHTML("F<sub>1</sub> = <span>"..Binesh.Convert_e(A1).."*"..Binesh.Convert_e(F2).."/"..Binesh.Convert_e(A2).."</span> &#8658; F<sub>1</sub> = "..Binesh.Convert_e(F1).." N")
			
			Binesh.AddToHTML("A<sub>1</sub>: "..Binesh.Convert_e(A1).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("F<sub>2</sub>: "..Binesh.Convert_e(F2).." N", "V")
			Binesh.AddToHTML("A<sub>2</sub>: "..Binesh.Convert_e(A2).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("F<sub>1</sub>: ?", "V")
		end
	end
	
	if F2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ‰Ì—Ê") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "‰Ì—Ê œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "F2") ~= -1)) then
		if F1 ~= nil and A1 ~= nil and A2 ~= nil then
			Binesh.CreateHTMLFile("<span>F<sub>1</sub>/A<sub>1</sub></span> = <span>F<sub>2</sub>/A<sub>1</sub></span>", "F<sub>2</sub> = <span>A<sub>2</sub>F<sub>1</sub>/A<sub>1</sub></span>")
			F2 = (A2*F1)/(A1)
			
			Binesh.AddToHTML("F<sub>2</sub> = <span>"..Binesh.Convert_e(A2).."*"..Binesh.Convert_e(F1).."/"..Binesh.Convert_e(A1).."</span> &#8658; F<sub>2</sub> = "..Binesh.Convert_e(F2).." N")
			
			Binesh.AddToHTML("A<sub>1</sub>: "..Binesh.Convert_e(A1).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("F<sub>1</sub>: "..Binesh.Convert_e(F1).." N", "V")
			Binesh.AddToHTML("A<sub>2</sub>: "..Binesh.Convert_e(A2).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("F<sub>2</sub>: ?", "V")
		end
	end
	
	if A1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "A1") ~= -1)) then
		if F1 ~= nil and F2 ~= nil and A2 ~= nil then
			Binesh.CreateHTMLFile("<span>F<sub>1</sub>/A<sub>1</sub></span> = <span>F<sub>2</sub>/A<sub>1</sub></span>", "A<sub>1</sub> = <span>F<sub>1</sub>A<sub>2</sub>/F<sub>2</sub></span>")
			A1 = (F1*A2)/(F2)
			
			Binesh.AddToHTML("A<sub>1</sub> = <span>"..Binesh.Convert_e(F1).."*"..Binesh.Convert_e(A2).."/"..Binesh.Convert_e(F2).."</span> &#8658; A<sub>1</sub> = "..Binesh.Convert_e(A1).." m<sup>2</sup>")
			
			Binesh.AddToHTML("F<sub>1</sub>: "..Binesh.Convert_e(F1).." N", "V")
			Binesh.AddToHTML("F<sub>2</sub>: "..Binesh.Convert_e(F2).." N", "V")
			Binesh.AddToHTML("A<sub>2</sub>: "..Binesh.Convert_e(A2).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("A<sub>1</sub>: ?", "V")
		end
	end
	
	if A2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ”ÿÕ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "”ÿÕ œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "A2") ~= -1)) then
		if F1 ~= nil and F2 ~= nil and A2 ~= nil then
			Binesh.CreateHTMLFile("<span>F<sub>1</sub>/A<sub>1</sub></span> = <span>F<sub>2</sub>/A<sub>1</sub></span>", "A<sub>2</sub> = <span>F<sub>2</sub>A<sub>1</sub>/F<sub>1</sub></span>")
			A2 = (F2*A1)/(F1)
			
			Binesh.AddToHTML("A<sub>2</sub> = <span>"..Binesh.Convert_e(F2).."*"..Binesh.Convert_e(A1).."/"..Binesh.Convert_e(F1).."<span> &#8658; A<sub>2</sub> = "..Binesh.Convert_e(A2).." m<sup>2</sup>")
			
			Binesh.AddToHTML("F<sub>1</sub>: "..Binesh.Convert_e(F1).." N", "V")
			Binesh.AddToHTML("F<sub>2</sub>: "..Binesh.Convert_e(F2).." N", "V")
			Binesh.AddToHTML("A<sub>1</sub>: "..Binesh.Convert_e(A1).." m<sup>2</sup>", "V")
			Binesh.AddToHTML("A<sub>2</sub>: ?", "V")
		end
	end
end