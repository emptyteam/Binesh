function Binesh.F16()
	if i_Radian ~= nil and i == nil then
		i = Math.RadToDeg(i_Radian)
		Binesh.AddToHTML("D<sub>i</sub> = <span>180*"..Binesh.ProgressNumber(i_Radian).."/"..Binesh.ProgressNumber(Settings.Zarib.Pi).."</span> &#8658; D<sub>i</sub> = "..Binesh.ProgressNumber(i).."<sup>o</sup>")
	end
	
	if r_Glass_Radian ~= nil and r_Glass == nil then
		r_Glass = Math.RadToDeg(r_Glass_Radian)
		Binesh.AddToHTML("D<sub>r</sub> = <span>180*"..Binesh.ProgressNumber(r_Glass).."/"..Binesh.ProgressNumber(Settings.Zarib.Pi).."</span> &#8658; D<sub>r</sub> = "..Binesh.ProgressNumber(r_Glass).."<sup>o</sup>")
	end
	
	if n2_Glass == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���� Ԙ�� ����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "���� Ԙ�� ���� �����") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "n2") ~= -1) then
		if n1_Glass ~= nil and i ~= nil and r_Glass ~= nil then
			Binesh.CreateHTMLFile("<span>n<sub>2</sub>/n<sub>1</sub> = <span>Sini/Sinr</span>", "n<sub>2</sub> = <span>n<sub>1</sub>Sini/Sinr</span>")
			
			n2_Glass = Math.Sin(Math.Rad(i))*n1_Glass/Math.Sin(Math.Rad(r_Glass))
		
			Binesh.AddToHTML("n<sub>2</sub> = <span>Sin"..Binesh.ProgressNumber(i).."*"..Binesh.ProgressNumber(n1_Glass).."/Sin"..Binesh.ProgressNumber(r_Glass).."</span> &#8658; n<sub>2</sub> = "..Binesh.ProgressNumber(n2_Glass).." m")
			
			Binesh.AddToHTML("n1 = "..Binesh.ProgressNumber(n1_Glass), "V")
			Binesh.AddToHTML("i = "..Binesh.ProgressNumber(i).."<sup>o</sup>", "V")
			Binesh.AddToHTML("r = "..Binesh.ProgressNumber(r_Glass).."<sup>o</sup>", "V")
			Binesh.AddToHTML("n2 = ?", "V")
		end
	end
	
	if n1_Glass == nil and ((ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ���� Ԙ�� ����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "���� Ԙ�� ���� �����") ~= -1) or ListBox.FindItem("Words", -1, LB_BYTEXT, "n1") ~= -1) then
		if n2_Glass ~= nil and i ~= nil and r_Glass ~= nil then
			Binesh.CreateHTMLFile("<span>n<sub>2</sub>/n<sub>1</sub> = <span>Sini/Sinr</span>", "n<sub>1</sub> = <span>n<sub>2</sub>Sinr/Sini</span>")
			n1_Glass = Math.Sin(Math.Rad(i))*n2_Glass/Math.Sin(Math.Rad(r_Glass))
			
			Binesh.AddToHTML("n<sub>1</sub> = <span>Sin"..Binesh.ProgressNumber(i).."*"..Binesh.ProgressNumber(n2_Glass).."/Sin"..Binesh.ProgressNumber(r_Glass).."</span> &#8658; n<sub>1</sub> = "..Binesh.ProgressNumber(n1_Glass).." m")
			
			Binesh.AddToHTML("n2 = "..Binesh.ProgressNumber(n2_Glass), "V")
			Binesh.AddToHTML("i = "..Binesh.ProgressNumber(i).."<sup>o</sup>", "V")
			Binesh.AddToHTML("r = "..Binesh.ProgressNumber(r_Glass).."<sup>o</sup>", "V")
			Binesh.AddToHTML("n1 = ?", "V")
		end
	end
	
	if i == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����� ����") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "i") ~= -1) then
		if n2_Glass ~= nil and n1_Glass ~= nil and r_Glass ~= nil then
			Binesh.CreateHTMLFile("<span>n<sub>2</sub>/n<sub>1</sub> = <span>Sini/Sinr</span>", "Sini = <span>n<sub>2</sub>Sinr/n<sub>1</sub></span>")
			
			Sini = Math.Sin(Math.Rad(r_Glass))*n2_Glass/n1_Glass
			i_Radian = Math.Asin(Math.Asin(Math.Sin(Sini)))
			i = Math.RadToDeg(i_Radian)
			
			Binesh.AddToHTML("Sini = <span>Sin"..Binesh.ProgressNumber(r_Glass).."*"..Binesh.ProgressNumber(n2_Glass).."/"..Binesh.ProgressNumber(n1_Glass).."</span> &#8658; Sini = "..Binesh.ProgressNumber(Sini).." &#8658; i<sub>Radian</sub> = "..Binesh.ProgressNumber(i_Radian).." &#8658; i = "..Binesh.ProgressNumber(i).."<sup>o</sup>")
			
			Binesh.AddToHTML("n1 = "..Binesh.ProgressNumber(n1_Glass), "V")
			Binesh.AddToHTML("n2 = "..Binesh.ProgressNumber(n2_Glass), "V")
			Binesh.AddToHTML("r = "..Binesh.ProgressNumber(r_Glass).."<sup>o</sup>", "V")
			Binesh.AddToHTML("i = ?", "V")
		end
	end
	
	if r_Glass == nil and (ListBox.FindItem("Words", -1, LB_BYTEXT, "����� Ԙ��") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "r") ~= -1) then
		if n2_Glass ~= nil and n1_Glass ~= nil and i ~= nil then
			Binesh.CreateHTMLFile("<span>n<sub>2</sub>/n<sub>1</sub> = <span>Sini/Sinr</span>", "Sinr = <span>n<sub>1</sub>Sini/n<sub>2</sub></span>")
			
			Sinr_Glass = Math.Sin(Math.Rad(i))*n1_Glass/n2_Glass
			r_Glass_Radian = Math.Asin(Math.Asin(Math.Sin(Sinr_Glass)))
			r_Glass = Math.RadToDeg(r_Glass_Radian)
			
			Binesh.AddToHTML("Sinr = <span>Sin"..Binesh.ProgressNumber(i).."*"..Binesh.ProgressNumber(n1_Glass).."/"..Binesh.ProgressNumber(n2_Glass).."</span> &#8658; Sinr = "..Binesh.ProgressNumber(Sinr_Glass).." &#8658; r<sub>Radian</sub> = "..Binesh.ProgressNumber(r_Glass_Radian).." &#8658; r = "..Binesh.ProgressNumber(r_Glass).."<sup>o</sup>")
			
			Binesh.AddToHTML("n1 = "..Binesh.ProgressNumber(n1_Glass), "V")
			Binesh.AddToHTML("n2 = "..Binesh.ProgressNumber(n2_Glass), "V")
			Binesh.AddToHTML("i = "..Binesh.ProgressNumber(i).."<sup>o</sup>", "V")
			Binesh.AddToHTML("r = ?", "V")
		end
	end
end