function Binesh.F109_2()
	if _q1 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ –—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â «Ê·Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "q1") ~= -1)) then
		if IBar ~= nil and _Deltat ~= nil and _q2 ~= nil then
			Binesh.CreateHTMLFile("IBar = <span>q<sub>2</sub>-q<sub>1</sub>/Deltat</span>", "q<sub>2</sub>-q<sub>1</sub> = IBarDeltat")
			Binesh.AddToHTML("q<sub>1</sub> = q<sub>2</sub>-IBarDeltat &#8658; ")
			_q1 = _q2-IBar*_Deltat
			
			Binesh.AddToHTML("q<sub>1</sub> = ".._q2.."-"..IBar.."*".._Deltat.." &#8658; q<sub>1</sub> = ".._q1.." C")
			
			Binesh.AddToHTML("q<sub>2</sub>: ".._q2.." C", "V")
			Binesh.AddToHTML("IBar: "..IBar.." A", "V")
			Binesh.AddToHTML("Deltat: ".._Deltat.." s", "V")
			Binesh.AddToHTML("q<sub>1</sub>: ?", "V")
		end
	end
	
	if _q2 == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "œÊ„Ì‰ –—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â œÊ„Ì‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "q2") ~= -1)) then
		if IBar ~= nil and _Deltat ~= nil and _q1 ~= nil then
			Binesh.CreateHTMLFile("IBar = <span>q<sub>2</sub>-q<sub>1</sub>/Deltat</span>", "q<sub>2</sub>-q<sub>1</sub> = IBarDeltat")
			Binesh.AddToHTML("q<sub>2</sub> = q<sub>1</sub>+IBarDeltat &#8658; ")
			_q2 = _q1+IBar*_Deltat
			
			Binesh.AddToHTML("q<sub>2</sub> = ".._q1.."+"..IBar.."*".._Deltat.." &#8658; q<sub>2</sub> = ".._q2.." C")
			
			Binesh.AddToHTML("q<sub>1</sub>: ".._q1.." C", "V")
			Binesh.AddToHTML("IBar: "..IBar.." A", "V")
			Binesh.AddToHTML("Deltat: ".._Deltat.." s", "V")
			Binesh.AddToHTML("q<sub>2</sub>: ?", "V")
		end
	end
end