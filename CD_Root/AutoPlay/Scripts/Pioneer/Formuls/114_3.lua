function Binesh.F114_3()
	if U_Output == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ „’—›Ì") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1) then
		if R ~= nil and t ~= nil and V_Electric ~= nil then
			U_Output =  V_Electric^2 * t / R
			
			Binesh.CreateHTMLFile("U = <span>V<sup>2</sup>t/R</span>")
			Binesh.AddToHTML("U = <span>"..V_Electric.."<sup>2</sup>*"..t.."/"..R.."</span> &#8658; U = "..U_Output.." J")
			
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("R: "..R.." Ohm", "V")
			Binesh.AddToHTML("U: ?", "V")
		end
	end
	
	if R == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1) then
		if U_Output ~= nil and V_Electric ~= nil and t ~= nil then
			R = V_Electric^2*t/U_Output
			
			Binesh.CreateHTMLFile("U = <span>V<sup>2</sup>t/R</span>", "R = <span>V<sup>2</sup>t/U</span>")
			Binesh.AddToHTML("R = <span>"..V_Electric.."<sup>2</sup>*"..t.."/"..U_Output.."</span> &#8658; R = "..R.." Ohm")
			
			Binesh.AddToHTML("U: "..U_Output.." J", "V")
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("R: ?", "V")
		end
	end
	
	if V_Electric == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "Ê· «é") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then
		if R ~= nil and t ~= nil and U_Output ~= nil then
			V_Electric = Math.Sqrt(R*U_Output/t)
			
			Binesh.CreateHTMLFile("U = <span>V<sup>2</sup>t/R</span>", "V = Sqrt(<span>RU/t</span>)")
			Binesh.AddToHTML("V = Sqrt(<span>"..R.."*"..U_Output.."/"..t.."</span>) &#8658; V = "..V_Electric.." V")
			
			Binesh.AddToHTML("U: "..U_Output.." J", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("R: "..R.." Ohm", "V")
			Binesh.AddToHTML("V: ?", "V")
		end
	end
	
	if t == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1) then
		if R ~= nil and V_Electric ~= nil and U_Output ~= nil then
			t = U_Output*R/V_Electric^2
			
			Binesh.CreateHTMLFile("U = <span>V<sup>2</sup>t/R</span>", "t = <span>UR/V<sup>2</sup></span>")
			Binesh.AddToHTML("t = <span>"..U_Output.."*"..R.."/"..V_Electric.."<sup>2</sup></span> &#8658; t = "..t.." s")
			
			Binesh.AddToHTML("U: "..U_Output.." J", "V")
			Binesh.AddToHTML("V: "..V_Electric.." V", "V")
			Binesh.AddToHTML("R: "..R.." Ohm", "V")
			Binesh.AddToHTML("t: ?", "V")
		end
	end
end