function Binesh.F114_1()
	if U_Output == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "«‰—éÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "U") ~= -1 then
		if I ~= nil and t ~= nil and R ~= nil then
			Binesh.CreateHTMLFile("U = RI<sup>2</sup>t")
			U_Output = R * I^2 * t
			
			Binesh.AddToHTML("R: "..R.." Ohm", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("U: ?", "V")
			
			Binesh.AddToHTML("U = "..R.."*"..I.."<sup>2</sup>*"..t.." &#8658; U = "..U_Output.." J")
		end
	end
	
	if I == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "¬„Å—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
		if U_Output ~= nil and R ~= nil and t ~= nil then
			I = Math.Sqrt(U_Output/(R*t))
			
			Binesh.AddToHTML("U: "..U_Output.." J", "V")
			Binesh.AddToHTML("R: "..R.." Ohm", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("I: ?", "V")
			
			Binesh.CreateHTMLFile("U = RI<sup>2</sup>t", "I = Sqrt(<span>U/Rt</span>)")
			Binesh.AddToHTML("I = Sqrt(<span>"..U_Output.."/"..R.."*"..t.."</span>) &#8658; I = "..I.." A")
		end
	end
	
	if R == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1 then
		if I ~= nil and t ~= nil and U_Output ~= nil then
			R = U/(I^2*t)
			
			Binesh.AddToHTML("U: "..U_Output.." J", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("R: ?", "V")
			
			Binesh.CreateHTMLFile("U = RI<sup>2</sup>t", "R = <span>U/I<sup>2</sup>t</span>")
			Binesh.AddToHTML("R = <span>"..U.."/"..I.."<sup>2</sup>*"..t.."</span> &#8658; R = "..R.." Ohm")
		end
	end
	
	if t == nil and ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1 then
		if R ~= nil and I ~= nil and U_Output ~= nil then
			t = U_Output/(I^2*R)
			
			Binesh.AddToHTML("U: "..U_Output.." J", "V")
			Binesh.AddToHTML("I: "..I.." A", "V")
			Binesh.AddToHTML("R: "..R.." Ohm", "V")
			Binesh.AddToHTML("t: ?", "V")
			
			Binesh.CreateHTMLFile("U = RI<sup>2</sup>t", "t = <span>U/I<sup>2</sup>R</span>")
			Binesh.AddToHTML("t = <span>"..U_Output.."/"..I.."<sup>2</sup>*"..R.."</span> &#8658; t = "..t.." s")
		end
	end
end