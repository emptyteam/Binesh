function Binesh.F18()
	if n_Glass == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "÷—Ì» ‘ò” ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "n") ~= -1) then
		if V_Speed_Glass ~= nil and C_Speed_Glass ~= nil then
			Binesh.CreateHTMLFile("n = <span>C/V</span>")
			n_Glass =  C_Speed_Glass/ V_Speed_Glass
			
			Binesh.AddToHTML("n = <span>".. C_Speed_Glass.."/"..V_Speed_Glass.."</span> &#8658; n = "..n_Glass)
			
			Binesh.AddToHTML("C: "..C_Speed_Glass.." m/s", "V")
			Binesh.AddToHTML("V: "..V_Speed_Glass.." m/s", "V")
			Binesh.AddToHTML("n: ?", "V")
		end
	end
	
	if C_Speed_Glass == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Œ·«¡ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "C") ~= -1) then
		if  V_Speed_Glass ~= nil and n_Glass ~= nil then
			Binesh.CreateHTMLFile("n = <span>C/V</span>", "C = n*V")
			C_Speed_Glass = n_Glass*V_Speed_Glass
			
			Binesh.AddToHTML("C = "..n_Glass.."*"..V_Speed_Glass.." &#8658; C = "..C_Speed_Glass.."m/s")
			
			Binesh.AddToHTML("n: "..n_Glass, "V")
			Binesh.AddToHTML("V: "..V_Speed_Glass.." m/s", "V")
			Binesh.AddToHTML("C: ?", "V")
		end
	end
	
	if V_Speed_Glass == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„ÕÌÿ ‘›«› ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then
		if C_Speed_Glass ~= nil and n_Glass ~= nil then
			Binesh.CreateHTMLFile("n = <span>C/V</span>", "V = <span>C/n</span>")
			V_Speed_Glass = C_Speed_Glass/n_Glass
			
			Binesh.AddToHTML("V = "..C_Speed_Glass.."/"..n_Glass.." &#8658; V = "..V_Speed_Glass.."m/s")
			
			Binesh.AddToHTML("n: "..n_Glass, "V")
			Binesh.AddToHTML("C: "..C_Speed_Glass.." m/s", "V")
			Binesh.AddToHTML("V: ?", "V")
		end
	end
end