function Binesh.F33_2()
	if _Deltax == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— ›«’·Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "›«’·Â  €ÌÌ—") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "Deltax") ~= -1) then
		if V_Speed ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("Deltax = Vt")
			_Deltax = V_Speed*t
			
			Binesh.AddToHTML("Deltax = "..Binesh.Convert_e(V_Speed).."*"..Binesh.Convert_e(t).." &#8658; Deltax = "..Binesh.Convert_e(_Deltax).." m")
			
			Binesh.AddToHTML("V: "..Binesh.Convert_e(V_Speed).." m/s", "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("Deltax: ?" , "V")
		end
	end
	
	if V_Speed == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1) then
		if _Deltax ~= nil and t ~= nil then
			Binesh.CreateHTMLFile("Deltax = Vt", "V = <span>Deltax/t</span>")
			V_Speed = _Deltax/t
			
			Binesh.AddToHTML("V = <span>"..Binesh.Convert_e(_Deltax).."/"..Binesh.Convert_e(t).."</span> &#8658; V = "..Binesh.Convert_e(V_Speed).." m/s")
			
			Binesh.AddToHTML("Deltax: "..Binesh.Convert_e(_Deltax).." m" , "V")
			Binesh.AddToHTML("t: "..Binesh.Convert_e(t).." s", "V")
			Binesh.AddToHTML("V: ?", "V")
		end
	end
	
	if t == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1) then
		if _Deltax ~= nil and V_Speed ~= nil then
			Binesh.CreateHTMLFile("Deltax = Vt", "t = <span>Deltax/V</span>")
			t = _Deltax/V_Speed
			
			Binesh.AddToHTML("t = <span>"..Binesh.Convert_e(_Deltax).."/"..Binesh.Convert_e(V_Speed).."</span> &#8658; t = "..Binesh.Convert_e(t).." s")
			
			Binesh.AddToHTML("Deltax: "..Binesh.Convert_e(_Deltax).." m" , "V")
			Binesh.AddToHTML("V: "..Binesh.Convert_e(V_Speed).." m/s", "V")
			Binesh.AddToHTML("t: ?", "V")
		end
	end
end