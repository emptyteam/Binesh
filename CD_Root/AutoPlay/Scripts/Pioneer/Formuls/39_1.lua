function Binesh.F39_1()
	if _Deltax == nil then
		Binesh.AddUnknown(" €ÌÌ— Ã«»Ã«ÌÌ", "Deltax")
	end
	
	if a == nil then
		Binesh.AddUnknown("‘ «»", "a")
	end
		
	if t == nil then
		Binesh.AddUnknown("“„«‰", "t")
	end
	
	if V0_Speed == nil then
		Binesh.AddUnknown("«Ê·Ì‰ ”—⁄ ", "V0")
	end
	
	FindDeltax = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— Ã«»Ã«ÌÌ");
	if FindDeltax ~= -1 and ListBox.GetItemData("unknowns", FindDeltax) == "x" and ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— Ã«»Ã«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã«»Ã«ÌÌ  €ÌÌ—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "x") ~= -1 then
		if a ~= nil and t ~= nil and V0_Speed ~= nil then
			Binesh.CreateHTMLFile("Deltax = <span>1/2</span>at<sup>2</sup>+V<sub>0</sub>t")
			_Deltax = 0.5*a*t^2+V0_Speed*t
			
			Binesh.AddToHTML("Deltax = <span>1/2</span>"..a.."*"..t.."<sup>2</sup>+"..V0_Speed.."*"..t.." &#8658; Deltax = ".._Deltax.." m")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("V<sub>0</sub>: "..V0_Speed.." m/s", "V")
			Binesh.AddToHTML("Deltax: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— Ã«»Ã«ÌÌ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Deltax");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Finda = ListBox.FindItem("unknowns", -1, LBBYTEXT, "‘ «»");
	if Finda ~= -1 and ListBox.GetItemData("unknowns", Finda) == "a" and ListBox.FindItem("Words", -1, LB_BYTEXT, "‘ «»") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "a") ~= -1 then
		if _Deltax ~= nil and t ~= nil and V0_Speed ~= nil then
			Binesh.CreateHTMLFile("x = <span>1/2</span>at<sup>2</sup>+V<sub>0</sub>t", "a = <span>2(Deltax-V<sub>0</sub>t)/t<sup>2</sup></span>")
			a = 2*(Deltax-(V0_Speed*t))/(t^2)
			
			Binesh.AddToHTML("a = <span>2(".._Deltax.."-"..V0_Speed.."*"..t..")/"..t.."<sup>2</sup></span> &#8658; a = "..a.." m/s<sup>2</sup>")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("Deltax: ".._Deltax.." m", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("V<sub>0</sub>: "..V0_Speed.." m/s", "V")
			Binesh.AddToHTML("a: ?", "V")
	
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‘ «»");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "a");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	Findt = ListBox.FindItem("unknowns", -1, LBBYTEXT, "“„«‰");
	if Findt ~= -1 and ListBox.GetItemData("unknowns", Findt) == "t" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1 then
		if _Deltax ~= nil and a ~= nil and V0_Speed ~= nil then
			Binesh.CreateHTMLFile("x = <span>1/2</span>at<sup>2</sup>+V<sub>0</sub>t", "t = - <span>V<sub>0</sub>sqrt(V<sub>0</sub><sup>2</sup>+2aDeltax<sub>0</sub>)/a</span>")
			t = (-1*V0_Speed+(V0_Speed^2+2*a*_Deltax)^(1/2))/a
			
			Binesh.AddToHTML("t = - <span>"..V0_Speed.."*sqrt("..V0_Speed.."<sup>2</sup>+2*"..a.."*".._Deltax..")/"..a.."</span> &#8658; t = "..Math.Abs(t).." s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("Deltax: ".._Deltax.." m", "V")
			Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("V<sub>0</sub>: "..V0_Speed.." m/s", "V")
			Binesh.AddToHTML("t: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "t");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
	
	FindV0_Speed = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ");
	if FindV0_Speed ~= -1 and ListBox.GetItemData("unknowns", FindV0_Speed) == "V0" and ListBox.FindItem("Words", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V0") ~= -1 then
		if _Deltax ~= nil and t ~= nil and a ~= nil then
			Binesh.CreateHTMLFile("x = <span>1/2</span>at<sup>2</sup>+V<sub>0</sub>t", "V<sub>0</sub> = <span>Deltax-(0.5at<sup>2</sup>)/t</span>")
			V0_Speed = (_Deltax-(0.5*a*t^2))/t
			
			Binesh.AddToHTML("V<sub>0</sub> = <span>".._Deltax.."-(0.5*"..a.."*"..t..")<sup>2</sup>/"..t.."</span> &#8658; V<sub>0</sub> = "..V0_Speed.." m/s")
			Web.Refresh("Web1");
			
			Binesh.AddToHTML("Deltax: ".._Deltax.." m", "V")
			Binesh.AddToHTML("a: "..a.." m/s<sup>2</sup>", "V")
			Binesh.AddToHTML("t: "..t.." s", "V")
			Binesh.AddToHTML("V<sub>0</sub>: ?", "V")
			
			unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ”—⁄ ");
			unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V0");
			if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
				ListBox.DeleteItem("unknowns", unknownPersianindex);
			end
		end
	end
end