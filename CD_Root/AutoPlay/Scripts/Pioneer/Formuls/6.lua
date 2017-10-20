if I == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'I' then
		ListBox.AddItem("unknowns", "Ã—Ì«‰", "I");
	end
end

if q == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 'q' then
		ListBox.AddItem("unknowns", "–—Â", "q");
	end
end

if t == nil and t_Min == nil and t_Hour == nil then
	UnknownNamePersian = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰")
	if UnknownNamePersian == -1 and ListBox.GetItemData("unknowns", UnknownNamePersian) ~= 't' then
		ListBox.AddItem("unknowns", "“„«‰", "t");
	end
end

FindI = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰")
Findq = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â");
Findt = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰")

PerMin = ListBox.FindItem('Words', -1, LB_BYTEXT, "œ— Â— œﬁÌﬁÂ");
if PerMin ~= -1 then
	t = 60
end

PerHour = ListBox.FindItem('Words', -1, LB_BYTEXT, "œ— Â— ”«⁄ ");
if PerHour ~= -1 then
	t = 3600
end

if t_Min ~= nil then
	t = t_Min * 60
	Binesh.CreateHTMLFile('t<sub>s</sub> = t<sub>min</sub>*60', 't<sub>s</sub> = '..t_Min..'*60')
	Binesh.AddToHTML('t<sub>s</sub> = '..t..'s');
	Binesh.AddToHTML('<br>');
end

if t_Hour ~= nil then
	t = t_Hour * 3600
	Binesh.CreateHTMLFile('t<sub>s</sub> = t<sub>hour</sub>*3600', 't<sub>s</sub> = '..t_Hour..'*3600')
	Binesh.AddToHTML('t<sub>s</sub> = '..t..'s');
	Binesh.AddToHTML('<br>');
end

if FindI ~= -1 and ListBox.GetItemData("unknowns", FindI) == "I" and ListBox.FindItem("Words", -1, LB_BYTEXT, "Ã—Ì«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "I") ~= -1 then
	if q ~= nil and t ~= nil then
		Binesh.CreateHTMLFile("I = <span>q/t</span>")
		I = q/t
		
		Binesh.AddToHTML("I = <span>"..q.."/"..t.."</span> &#8658; I = "..I.." A")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("I = "..I.." A" ,"V")
		Binesh.AddToHTML("q = "..q.." c" ,"V")
		Binesh.AddToHTML("t = "..t.." s" ,"V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "Ã—Ì«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "I");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findq ~= -1 and ListBox.GetItemData("unknowns", Findq) == "q" and ListBox.FindItem("Words", -1, LB_BYTEXT, "–—Â") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "q") ~= -1 then
	if I ~= nil and t ~= nil then
		Binesh.CreateHTMLFile("I = <span>q/t</span>", "q = It")
		q = I*t
		
		Binesh.AddToHTML("q = "..I.."*"..t.." &#8658; q = "..q.." c")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("I = "..I.." A" ,"V")
		Binesh.AddToHTML("t = "..t.." s" ,"V")
		Binesh.AddToHTML("q = "..q.." c" ,"V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "–—Â");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "q");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
elseif Findt ~= -1 and ListBox.GetItemData("unknowns", Findt) == "t" and ListBox.FindItem("Words", -1, LB_BYTEXT, "“„«‰") ~= -1 or ListBox.FindItem("Words", -1, LB_BYTEXT, "t") ~= -1 then
	if q ~= nil and I ~= nil then
		Binesh.CreateHTMLFile("I = <span>q/t</span>", "t = <span>q/I</span>")
		t = q/I
		
		Binesh.AddToHTML("t = <span>"..q.."/"..I.."</span> &#8658; t = "..t.." s")
		Web.Refresh("Web1");
		
		Binesh.AddToHTML("I = "..I.." A" ,"V")
		Binesh.AddToHTML("q = "..q.." c" ,"V")
		Binesh.AddToHTML("t = "..t.." s" ,"V")
		
		unknownPersianindex = ListBox.FindItem("unknowns", -1, LB_BYTEXT, "“„«‰");
		unknownSymbolindex = ListBox.FindItem("unknowns", -1, LB_BYDATA, "t");
		if unknownPersianindex == unknownSymbolindex and unknownPersianindex ~= -1 then
			ListBox.DeleteItem("unknowns", unknownPersianindex);
		end
	end
end