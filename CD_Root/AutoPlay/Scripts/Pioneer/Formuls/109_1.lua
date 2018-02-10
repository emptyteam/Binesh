function Binesh.F109_1()
	--------------------------{DELTA}--------------------------
	if _Deltaq == nil then
		if _q1 ~= nil and _q2 ~= nil then
			Binesh.CreateHTMLFile("Deltaq = q<sub>2</sub>-q<sub>1</sub>")
			_Deltaq = _q2 - _q1
			Binesh.AddToHTML("Deltaq = "..Binesh.Convert_e(_q2).."-"..Binesh.Convert_e(_q1).." &#8658; Deltaq = "..Binesh.Convert_e(_Deltaq).." C")
		end
	end
	
	if _q1 == nil then
		if _Deltaq ~= nil and _q2 ~= nil then
			Binesh.CreateHTMLFile("Deltaq = q<sub>2</sub>-q<sub>1</sub>", "q<sub>1</sub> = q<sub>2</sub>-Deltaq")
			_q1 = _q2-_Deltaq
			Binesh.AddToHTML("q<sub>1</sub> = "..Binesh.Convert_e(_q2).."-"..Binesh.Convert_e(_Deltaq).." &#8658; q<sub>1</sub> = "..Binesh.Convert_e(_q1).." C")
		end
	end
	
	if _q2 == nil then
		if _Deltaq ~= nil and _q1 ~= nil then
			Binesh.CreateHTMLFile("Deltaq = q<sub>2</sub>-q<sub>1</sub>", "q<sub>2</sub> = Deltaq+q<sub>1</sub>")
			_q2 = _q1+_Deltaq
			Binesh.AddToHTML("q<sub>2</sub> = "..Binesh.Convert_e(_Deltaq).."+"..Binesh.Convert_e(_q1).." &#8658; q<sub>2</sub> = "..Binesh.Convert_e(_q2).." C")
		end
	end
	--------------------------END {DELTA}--------------------------
	if IBar == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰ „ Ê”ÿ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "IBar") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1)) then
		if _Deltaq ~= nil and _Deltat ~= nil then
			Binesh.CreateHTMLFile("IBar = <span>Deltaq/Deltat</span>")
			IBar = _Deltaq/_Deltat
			
			Binesh.AddToHTML("IBar = <span>"..Binesh.Convert_e(_Deltaq).."/"..Binesh.Convert_e(_Deltat).."</span> &#8658; IBar = "..Binesh.Convert_e(IBar).." A")
			
			Binesh.AddToHTML("Deltaq: "..Binesh.Convert_e(_Deltaq).." C", "V")
			Binesh.AddToHTML("Deltat: "..Binesh.Convert_e(_Deltat).." s", "V")
			Binesh.AddToHTML("IBar: ?", "V")
		end
	end
	
	if _Deltaq == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— –—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltaq") ~= -1)) then
		if IBar ~= nil and _Deltat ~= nil then
			Binesh.CreateHTMLFile("IBar = <span>Deltaq/Deltat</span>", "Deltaq = IBarDeltat")
			_Deltaq = IBar*_Deltat
			
			Binesh.AddToHTML("Deltaq = "..Binesh.Convert_e(IBar).."*"..Binesh.Convert_e(_Deltat).." &#8658; Deltaq = "..Binesh.Convert_e(_Deltaq).." C")
			
			Binesh.AddToHTML("IBar: "..Binesh.Convert_e(IBar).." A", "V")
			Binesh.AddToHTML("Deltat: "..Binesh.Convert_e(_Deltat).." s", "V")
			Binesh.AddToHTML("Deltaq: ?", "V")
		end
	end
	
	if _Deltat == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— “„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰  €ÌÌ—") ~= -1) or (ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltat") ~= -1)) then
		if IBar ~= nil and _Deltaq ~= nil then
			Binesh.CreateHTMLFile("IBar = <span>Deltaq/Deltat</span>", "Deltat = <span>Deltaq/IBar</span>")
			_Deltat = _Deltaq/IBar
			
			Binesh.AddToHTML("Deltat = <span>"..Binesh.Convert_e(_Deltaq).."/"..Binesh.Convert_e(IBar).."</span> &#8658; Deltat = "..Binesh.Convert_e(_Deltat).." s")
			
			Binesh.AddToHTML("Deltaq: "..Binesh.Convert_e(_Deltaq).." C", "V")
			Binesh.AddToHTML("IBar: "..Binesh.Convert_e(IBar).." A", "V")
			Binesh.AddToHTML("Deltat: ?", "V")
		end
	end
end