function Binesh.F123()
	if I1 == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ‘œ  Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "‘œ  Ã—Ì«‰ «Ê·Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I1") ~= -1 then
		if I2 ~= nil and R1 ~= nil and R2 ~= nil then
			Binesh.CreateHTMLFile("<span>I<sub>2</sub>/I<sub>1</sub></span> = <span>R<sub>1</sub>/R<sub>2</sub></span>","I<sub>1</sub> = <span>I<sub>2</sub>R<sub>2</sub>/R<sub>1</sub></span>")
			I1 = (I2*R2)/R1
			
			Binesh.AddToHTML("I<sub>1</sub> = <span>"..I2.."*"..R2.."/"..R1.."</span> &#8658; I<sub>1</sub> = "..I1.." A")
			
			Binesh.AddToHTML("R<sub>1</sub>: "..R1.." ohm", "V")
			Binesh.AddToHTML("R<sub>2</sub>: "..R2.." ohm", "V")
			Binesh.AddToHTML("I<sub>2</sub>: "..I2.." A", "V")
			Binesh.AddToHTML("I<sub>1</sub>: ?", "V")
		end
	end
	
	if I2 == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ ‘œ  Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "‘œ  Ã—Ì«‰ œÊ„Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I2") ~= -1 then
		if I1 ~= nil and R1 ~= nil and R2 ~= nil then
			Binesh.CreateHTMLFile("<span>I<sub>2</sub>/I<sub>1</sub></span> = <span>R<sub>1</sub>/R<sub>2</sub></span>", "I<sub>2</sub> = <span>I<sub>1</sub>R<sub>1</sub>/R<sub>2</sub></span>")
			I2 = (I1*R1)/R2
			
			Binesh.AddToHTML("I<sub>2</sub> = <span>"..I1.."*"..R1.."/"..R2.."</span> &#8658; I<sub>2</sub> = "..I2.." A")
			
			Binesh.AddToHTML("R<sub>1</sub>: "..R1.." ohm", "V")
			Binesh.AddToHTML("R<sub>2</sub>: "..R2.." ohm", "V")
			Binesh.AddToHTML("I<sub>1</sub>: "..I1.." A", "V")
			Binesh.AddToHTML("I<sub>2</sub>: ?", "V")
		end
	end
	
	if R1 == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ „ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„  «Ê·Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R1") ~= -1 then
		if R2 ~= nil and I2 ~= nil and I1 ~= nil then
			Binesh.CreateHTMLFile("<span>I<sub>2</sub>/I<sub>1</sub></span> = <span>R<sub>1</sub>/R<sub>2</sub></span>", "R<sub>1</sub> = <span>I<sub>2</sub>R<sub>2</sub>/I<sub>1</sub></span>")
			R1 = (I2*R2)/I1
			
			Binesh.AddToHTML("R<sub>1</sub> = <span>"..I2.."*"..R2.."/"..I1.."</span> &#8658; R<sub>1</sub> = "..R1.." Ohm")
			
			Binesh.AddToHTML("I<sub>2</sub>: "..I2.." A", "V")
			Binesh.AddToHTML("R<sub>2</sub>: "..R2.." ohm", "V")
			Binesh.AddToHTML("I<sub>1</sub>: "..I1.." A", "V")
			Binesh.AddToHTML("R<sub>1</sub>: ?", "V")
		end
	end
	
	if R2 == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ „ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„  œÊ„Ì‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R2") ~= -1 then
		if I2 ~= nil and R1 ~= nil and I1 ~= nil then
			Binesh.CreateHTMLFile("<span>I<sub>2</sub>/I<sub>1</sub></span> = <span>R<sub>1</sub>/R<sub>2</sub></span>", "R<sub>2</sub> = <span>I<sub>1</sub>R<sub>1</sub>/I<sub>2</sub></span>")
			R2 = (I1*R1)/I2
			
			Binesh.AddToHTML("R<sub>2</sub> = <span>"..I1.."*"..R1.."/"..I2.."</span> &#8658; R<sub>2</sub> = "..R2.." Ohm")
			
			Binesh.AddToHTML("I<sub>2</sub>: "..I2.." A", "V")
			Binesh.AddToHTML("R<sub>1</sub>: "..R1.." ohm", "V")
			Binesh.AddToHTML("I<sub>1</sub>: "..I1.." A", "V")
			Binesh.AddToHTML("R<sub>2</sub>: ?", "V")
		end
	end
end