if R == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‘⁄«⁄")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'R' then
		ListBox.AddItem("unknowns", "‘⁄«⁄", "R");
	end
end

if B == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'B' then
		ListBox.AddItem("unknowns", "„Ìœ«‰", "B");
	end
end

if I == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'I' then
		ListBox.AddItem("unknowns", "Ã—Ì«‰", "I");
	end
end

if N_Ring == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Õ·ﬁÂ")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'N' then
		ListBox.AddItem("unknowns", "Õ·ﬁÂ", "N");
	end
end
FindB = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰");
if FindB ~= -1 and ListBox.GetItemData("unknowns", FindB) == "B" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„Ìœ«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "B") ~= -1 then
	if N_Ring ~= nil and R ~= nil and I ~= nil then
		Binesh.CreateHTMLFile("B = <span>NMu<sub>0</sub>I/2R</span>")
		B = N_Ring * 4*3.14*10^(-7) * I /(2*R)
		
		Binesh.AddToHTML("B = <span>"..N_Ring.."*4*3.14*10<sup>-7</sup>*"..I.."/2*"..R.."</span> &#8658; B = "..B.." T")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "„Ìœ«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "B");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindR = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‘⁄«⁄");
if FindR ~= -1 and ListBox.GetItemData("unknowns", FindR) == "R" and ListBox.FindItem("Words", -1, LB_BYTEXT, "„ﬁ«Ê„ ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "R") ~= -1 then
	if N_Ring ~= nil and B ~= nil and I ~= nil then
		Binesh.CreateHTMLFile("B = <span>NMu<sub>0</sub>I/2R</span>", "R = <span>NMu<sub>0</sub>I/2B</span>")
		R = N_Ring * 4*Zarib.Pi*10^(-7) * I /(2*B)
		
		Binesh.AddToHTML("R = <span>"..N_Ring.."*4*"..Zarib.Pi.."*10<sup>-7</sup>*"..I.."/2*"..B.."</span> &#8658; R = "..R.." m")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "‘⁄«⁄");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "R");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindN_Ring = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Õ·ﬁÂ");
if FindN_Ring ~= -1 and ListBox.GetItemData("unknowns", FindN_Ring) == "N" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Õ·ﬁÂ") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "N") ~= -1 then
	if R ~= nil and B ~= nil and I ~= nil then
		Binesh.CreateHTMLFile("B = <span>NMu<sub>0</sub>I/2R</span>", "N = <span>2BR/Mu<sub>0</sub>I</span>")
		N_Ring = 2*B*R/(4*Zarib.Pi*10^(-7)*I)
		
		Binesh.AddToHTML("N = <span>2*"..B.."*"..R.."/4*"..Zarib.Pi.."*10<sup>-7</sup>*"..I.."</span> &#8658; N = "..N_Ring)
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Õ·ﬁÂ");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "N");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end

FindI = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
if FindI ~= -1 and ListBox.GetItemData("unknowns", FindI) == "I" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
	if N_Ring ~= nil and B ~= nil and R ~= nil then
		Binesh.CreateHTMLFile("B = <span>NMu<sub>0</sub>I/2R</span>", "I = <span>2BR/Mu<sub>0</sub>N</span>")
		I = 2*B*R/(4*Zarib.Pi*10^(-7)*N_Ring)
		
		Binesh.AddToHTML("I = <span>2*"..B.."*"..R.."/4*"..Zarib.Pi.."*10<sup>-7</sup>*"..N_Ring.."</span> &#8658; I = "..I.." A")
		Web.Refresh("Web1");
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "I");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end	