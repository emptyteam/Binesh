-- Q_79 = Binesh.Genesis("ê—„«", "Q", "", "", 1, "J", "éÊ·", false);
if Q == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'Q' then
		ListBox.AddItem("unknowns", "ê—„«", "Q");
	end
end

-- CV_79 = Binesh.Genesis("Ÿ—›Ì  ê—„«ÌÌ", "CV", "", "", 1, "J/mol*K", "éÊ· »— òÌ·Êê—„ ò·ÊÌ‰", false);
if CV == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«ÌÌ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'CV' then
		ListBox.AddItem("unknowns", "Ÿ—›Ì  ê—„«ÌÌ", "CV");
	end
end

if V == nil and VL == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÕÃ„")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'V' then
		ListBox.AddItem("unknowns", "ÕÃ„", "V");
	end
end

if _DeltaP == nil and _DeltaPa == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— ›‘«—")
	if UnknownNamePersian == -1 and ListBox.FindItem("unknowns", UnknownNamePersian, LB_BYDATA, "DeltaP") == -1 then
		ListBox.AddItem("unknowns", " €ÌÌ— ›‘«—", "DeltaP");
	end
end
if _P1 == nil and _Pa1 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ›‘«—")
	if UnknownNamePersian == -1 and ListBox.FindItem("unknowns", UnknownNamePersian, LB_BYDATA, "P1") == -1 then
		ListBox.AddItem("unknowns", "«Ê·Ì‰ ›‘«—", "P1");
	end
end
if _P2 == nil and _Pa2 == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ›‘«—")
	if UnknownNamePersian == -1 and ListBox.FindItem("unknowns", UnknownNamePersian, LB_BYDATA, "P2") == -1 then
		ListBox.AddItem("unknowns", "œÊ„Ì‰ ›‘«—", "P2");
	end
end

FindQ = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«")
FindCV = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«ÌÌ");
FindV = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÕÃ„")
FindDeltaP = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— ›‘«—")
FindP1 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ›‘«—")
FindP2 = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ›‘«—")

if _DeltaPa ~= nil or _Pa1 ~= nil or _Pa2 ~= nil then
	Binesh.CreateHTMLFile("P<sub>Pascal</sub> = P<sub>atm</sub>*10<sup>5</sup>")
end

if _DeltaPa ~= nil then
	_DeltaP = _DeltaPa*10^5
	Binesh.AddToHTML("DeltaP<sub>Pascal</sub> = ".._DeltaPa.."*10<sup>5</sup> &#8658; P<sub>Pascal</sub> = ".._DeltaP.."Pa")
	Binesh.AddToHTML("<br>") -- Create ENTER in HTML
end

if _Pa1 ~= nil then
	_P1 = _Pa1*10^5
	Binesh.AddToHTML("P<sub>Pascal</sub> = ".._Pa1.."*10<sup>5</sup> &#8658; P<sub>Pascal</sub> = ".._P1.."Pa")
	Binesh.AddToHTML("<br>") -- Create ENTER in HTML
end

if _Pa2 ~= nil then
	_P2 = _Pa2*10^5
	Binesh.AddToHTML("P<sub>Pascal</sub> = ".._Pa2.."*10<sup>5</sup> &#8658; P<sub>Pascal</sub> = ".._P2.."Pa")
	Binesh.AddToHTML("<br>") -- Create ENTER in HTML
end

--------------------------{DELTA}--------------------------
if FindDeltaP ~= -1 and ListBox.GetItemData("unknowns", FindDeltaP) == "DeltaP" then
	if _P1 ~= nil and _P2 ~= nil then
		Binesh.CreateHTMLFile("DeltaP = P<sub>2</sub>-P<sub>1</sub>")
		_DeltaP = _P2 - _P1
		Binesh.AddToHTML("DeltaP = ".._P2.."-".._P1.." &#8658; DeltaP = ".._DeltaP.."Pa")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— ›‘«—");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaP");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindP1 ~= -1 and ListBox.GetItemData("unknowns", FindP1) == "P1" then
	if _DeltaP ~= nil and _P2 ~= nil then
		Binesh.CreateHTMLFile("DeltaP = P<sub>2</sub>-P<sub>1</sub>", "P<sub>1</sub> = P<sub>2</sub>-DeltaP")
		_P1 = _P2-_DeltaP
		Binesh.AddToHTML("P<sub>1</sub> = ".._P2.."-".._DeltaP.." &#8658; P<sub>1</sub> = ".._P1.."Pa")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "«Ê·Ì‰ ›‘«—");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "P1");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindP2 ~= -1 and ListBox.GetItemData("unknowns", FindP2) == "P2" then
	if _DeltaP ~= nil and _P1 ~= nil then
		Binesh.CreateHTMLFile("DeltaP = P<sub>2</sub>-P<sub>1</sub>", "P<sub>2</sub> = DeltaP+P<sub>1</sub>")
		_P2 = _P1+_DeltaP
		Binesh.AddToHTML("P<sub>2</sub> = ".._DeltaP.."+".._P1.." &#8658; P<sub>2</sub> = ".._P2.."Pa")
		Binesh.AddToHTML("<br>") -- Create ENTER in HTML
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "œÊ„Ì‰ ›‘«—");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "P2");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end
--------------------------END {DELTA}--------------------------

if FindQ ~= -1 and ListBox.GetItemData("unknowns", FindQ) == "Q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ê—„«") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "Q") ~= -1 then
	if CV ~= nil and V ~= nil and _DeltaP ~= nil then
		Binesh.CreateHTMLFile("Q = <span>C<sub>V</sub>/R</span>*V*DeltaP")
		Q = (CV/Zarib.R)*V*_DeltaP
		Binesh.AddToHTML("Q = <span>"..CV.."/"..Zarib.R.."</span>*"..V.."*".._DeltaP.." &#8658; Q = "..Q.."J")
		
		Web.Refresh("Web1");

		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ê—„«");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "Q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindCV ~= -1 and ListBox.GetItemData("unknowns", FindCV) == "CV" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«ÌÌ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "CV") ~= -1 then
	if Q ~= nil and V ~= nil and _DeltaP ~= nil then
		Binesh.CreateHTMLFile("Q = <span>C<sub>V</sub>/R</span>*V*DeltaP", "C<sub>V</sub> = <span>Q*R/V*DeltaP</span>")
		CV = Q*Zarib.R/V*_DeltaP
		Binesh.AddToHTML("C<sub>V</sub> = <span>"..Q.."*"..Zarib.R.."/"..V.."*".._DeltaP.."</span> &#8658; C<sub>V</sub> = "..CV.."J/mol*K")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ÿ—›Ì  ê—„«ÌÌ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "CV");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindV ~= -1 and ListBox.GetItemData("unknowns", FindV) == "V" and ListBox.FindItem("Words", -1, LB_BYTEXT, "ÕÃ„") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "V") ~= -1 then  
	if Q ~= nil and CV ~= nil and _DeltaP ~= nil then
		Binesh.CreateHTMLFile("Q = <span>C<sub>V</sub>/R</span>*V*DeltaP", "V = <span>Q*R/C<sub>V</sub>*DeltaP</span>")
		V = Q*Zarib.R/CV*_DeltaP
		Binesh.AddToHTML("V = <span>"..Q.."*"..Zarib.R.."/"..CV.."*".._DeltaP.."</span> &#8658; V = "..V.."m<sup>3</sup>")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "ÕÃ„");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "V");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif FindDeltaP ~= -1 and ListBox.GetItemData("unknowns", FindDeltaP) == "DeltaP" and ListBox.FindItem("Words", -1, LB_BYTEXT, " €ÌÌ— ›‘«—") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "DeltaP") ~= -1  or ListBox.FindItem("Words", -1, LB_BYTEXT, "P1") ~= -1  or ListBox.FindItem("Words", -1, LB_BYTEXT, "P2") ~= -1 then 
	if Q ~= nil and V ~= nil and CV ~= nil then
		Binesh.CreateHTMLFile("Q = <span>C<sub>V</sub>/R</span>*V*DeltaP", "DeltaP = <span>Q*R/C<sub>V</sub>*V</span>")
		_DeltaP = Q*Zarib.R/CV*V
		Binesh.AddToHTML("DeltaP = <span>"..Q.."*"..Zarib.R.."/"..CV.."*"..V.."</span> &#8658; DeltaP = ".._DeltaP.."Pa")
		
		Web.Refresh("Web1");
			
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, " €ÌÌ— ›‘«—");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "DeltaP");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end