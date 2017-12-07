function Binesh.ClearHTMLFile(Name)
	if Name ~= "V" then
		if Name == nil then
			Name = "F"
		end
		Color = "#fff"
		TextColor = "#000"
	elseif Name == "V" then
		Color = "#D51748"
		TextColor = "#fff"
	end
	TextFile.WriteFromString(Name..".html", '<!DOCTYPE html><html><head><link rel="stylesheet" href="style.css"><style>*{background: '..Color..'; color: '..TextColor..';}</style></head><body></body></html>', false);
end

function Binesh.ConvertToHTML(sFormule, WhatFile)
	
	-- Taghsim --> Kasr
	if WhatFile ~= "V" then
		sFormule = String.Replace(sFormule, "÷", "/", true);
		sFormule = String.Replace(sFormule, "<span>", "<span class='fraction'><span class='fup'>", true);
		sFormule = String.Replace(sFormule, "</span>", "</span></span>", true);
		sFormule = String.Replace(sFormule, "</", "<~", true);
		sFormule = String.Replace(sFormule, "/", "</span><span class='fdn'>", true);
		sFormule = String.Replace(sFormule, "<~", "</", true);
	else
		sFormule = String.Replace(sFormule, "/", " / ", true);
	end
	
	sFormule = String.Replace(sFormule, "Alpha", "&alpha;", true);
	sFormule = String.Replace(sFormule, "Beta", "&beta;", true);
	sFormule = String.Replace(sFormule, "Lambda", "&lambda;", true);
	sFormule = String.Replace(sFormule, "Delta", "&Delta;", true);
	sFormule = String.Replace(sFormule, "Epsilon", "&epsilon;", true);
	sFormule = String.Replace(sFormule, "Eta", "&eta;", true);
	sFormule = String.Replace(sFormule, "Teta", "&theta;", true);
	sFormule = String.Replace(sFormule, "Pi", "&pi;", true);
	sFormule = String.Replace(sFormule, "Ru", "&rho;", true);
	sFormule = String.Replace(sFormule, "LSigma", "&Sigma;", true);
	sFormule = String.Replace(sFormule, "SSigma", "&sigma;", true);
	sFormule = String.Replace(sFormule, "Fi", "&Phi;", true);
	sFormule = String.Replace(sFormule, "Ohm", "&Omega;", true);
	sFormule = String.Replace(sFormule, "SOmega", "&omega;", true);
	sFormule = String.Replace(sFormule, "Mu", "&mu;", true);
	
	sFormule = String.Replace(sFormule, "VBar", "&veebar;", false);
	
	sFormule = String.Replace(sFormule, "aBar", "&atilde;", false);
	
	sFormule = String.Replace(sFormule, "Sqrt", "&radic;", false);
	sFormule = String.Replace(sFormule, "*", "×", true);
	sFormule = String.Replace(sFormule, "÷", "/", true);
	sFormule = String.Replace(sFormule, "MOM", "&#177;", true); -- +-
	
	sFormule = String.Replace(sFormule, "< / ", "</", true);
	sFormule = String.Replace(sFormule, "  ", " ", true);
	
	return sFormule
end

function Binesh.CreateHTMLFile(SourceFormule, ConvertFormule, WhatFile)
	
	if ConvertFormule == "" or ConvertFormule == nil then
		ConvertFormule = SourceFormule
	end
	
	if WhatFile == nil then
		WhatFile = "F"
	end
	
	SourceFormule = Binesh.ConvertToHTML(SourceFormule, WhatFile);
	ConvertFormule = Binesh.ConvertToHTML(ConvertFormule, WhatFile);
	if ConvertFormule ~= SourceFormule then
		TextFile.WriteFromString(_SourceFolder.."\\"..WhatFile..".html", "<br>"..SourceFormule.." &#8658; "..ConvertFormule.." &#8658; ", true);
	else
		TextFile.WriteFromString(_SourceFolder.."\\"..WhatFile..".html", "<br>"..SourceFormule.." &#8658; ", true);
	end
end

function Binesh.AddToHTML(FormuleInput, WhatFile)
	FormuleInput = Binesh.ConvertToHTML(FormuleInput, WhatFile);
	
	if WhatFile == nil then
		WhatFile = "F"
	end
	
	TextFile.WriteFromString(_SourceFolder.."\\"..WhatFile..".html", FormuleInput, true);
	if WhatFile == "V" then
		TextFile.WriteFromString(_SourceFolder.."\\"..WhatFile..".html", "<br>", true);
	end
end