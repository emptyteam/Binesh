function Binesh.F147()
	if V1_Electric == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V1") ~= -1)) then
		if V2_Electric ~= nil and N1 ~= nil and N2 ~= nil then
			Binesh.CreateHTMLFile("<span>V<sub>2</sub>/V<sub>1</sub></span> = <span>N<sub>2</sub>/N<sub>1</sub></span>", "V<sub>1</sub> = <span>V<sub>2</sub>N<sub>1</sub>/N<sub>2</sub></span>")
			V1_Electric = (V2_Electric*N1)/(N2)
			
			Binesh.AddToHTML("V<sub>1</sub> = <span>"..V2_Electric.."*"..N1.."/"..N2.."</span> &#8658; V<sub>1</sub> = "..V1_Electric.." V")
			
			Binesh.AddToHTML("V<sub>2</sub>: "..V2_Electric.." V", "V")
			Binesh.AddToHTML("N<sub>1</sub>: "..N1, "V")
			Binesh.AddToHTML("N<sub>2</sub>: "..N2, "V")
			Binesh.AddToHTML("V<sub>1</sub>: ?", "V")
		end
	end
	
	if V2_Electric == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "V2") ~= -1)) then
		if V1_Electric ~= nil and N1 ~= nil and N2 ~= nil then
			Binesh.CreateHTMLFile("<span>V<sub>2</sub>/V<sub>1</sub></span> = <span>N<sub>2</sub>/N<sub>1</sub></span>", "V<sub>2</sub> = <span>N<sub>2</sub>V<sub>1</sub>/N<sub>1</sub></span>")
			V2_Electric = (N2*V1_Electric)/(N1)
			
			Binesh.AddToHTML("V<sub>2</sub> = <span>"..N2.."*"..V1_Electric.."/"..N1.."</span> &#8658; V<sub>2</sub> = "..V2_Electric.." V")
			
			Binesh.AddToHTML("V<sub>1</sub>: "..V1_Electric.." V", "V")
			Binesh.AddToHTML("N<sub>1</sub>: "..N1, "V")
			Binesh.AddToHTML("N<sub>2</sub>: "..N2, "V")
			Binesh.AddToHTML("V<sub>2</sub>: ?", "V")
		end
	end
	
	if N1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ œÊ—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ— «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "N1") ~= -1)) then
		if V1_Electric ~= nil and V2_Electric ~= nil and N2 ~= nil then
			Binesh.CreateHTMLFile("<span>V<sub>2</sub>/V<sub>1</sub></span> = <span>N<sub>2</sub>/N<sub>1</sub></span>", "N<sub>1</sub> = <span>N<sub>2</sub>V<sub>1</sub>/V<sub>2</sub></span>")
			N1 = (N2*V1_Electric)/(V2_Electric)
			
			Binesh.AddToHTML("N<sub>1</sub> = <span>"..N2.."*"..V1_Electric.."/"..V2_Electric.."</span> &#8658; N<sub>1</sub> = "..N1)
			
			Binesh.AddToHTML("V<sub>1</sub>: "..V1_Electric.." V", "V")
			Binesh.AddToHTML("V<sub>2</sub>: "..V2_Electric.." V", "V")
			Binesh.AddToHTML("N<sub>2</sub>: "..N2, "V")
			Binesh.AddToHTML("N<sub>1</sub>: ?", "V")
		end
	end
	
	if N2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ œÊ—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ— œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "N2") ~= -1)) then
		if V1_Electric ~= nil and V2_Electric ~= nil and N2 ~= nil then
			Binesh.CreateHTMLFile("<span>V<sub>2</sub>/V<sub>1</sub></span> = <span>N<sub>2</sub>/N<sub>1</sub></span>", "N<sub>2</sub> = <span>V<sub>2</sub>N<sub>1</sub>/V<sub>1</sub></span>")
			N2 = (V2_Electric*N1)/(V1_Electric)
			
			Binesh.AddToHTML("N<sub>2</sub> = <span>"..V2_Electric.."*"..N1.."/"..V1_Electric.."</span> &#8658; N<sub>2</sub> = "..N2)
			
			Binesh.AddToHTML("V<sub>1</sub>: "..V1_Electric.." V", "V")
			Binesh.AddToHTML("V<sub>2</sub>: "..V2_Electric.." V", "V")
			Binesh.AddToHTML("N<sub>1</sub>: "..N1, "V")
			Binesh.AddToHTML("N<sub>2</sub>: ?", "V")
		end
	end
end