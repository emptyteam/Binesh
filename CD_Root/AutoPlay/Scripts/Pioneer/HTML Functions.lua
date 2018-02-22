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
		
		sFormule = String.Replace(sFormule, "m</span><span class='fdn'>s", "m/s", true);
		sFormule = String.Replace(sFormule, "m</span><span class='fdn'>h", "m/h", true);
		sFormule = String.Replace(sFormule, "mile</span><span class='fdn'>s", "mile/s", true);
		sFormule = String.Replace(sFormule, "mile</span><span class='fdn'>h", "mile/h", true);
		sFormule = String.Replace(sFormule, "J</span><span class='fdn'>KgC", "J/KgC", true);
		sFormule = String.Replace(sFormule, "N</span><span class='fdn'>m", "N/m", true);
		sFormule = String.Replace(sFormule, "Kg</span><span class='fdn'>m", "Kg/m", true);
		sFormule = String.Replace(sFormule, "g</span><span class='fdn'>m", "g/m", true);
		sFormule = String.Replace(sFormule, "Kg</span><span class='fdn'>L", "Kg/L", true);
		sFormule = String.Replace(sFormule, "J</span><span class='fdn'>Kg", "J/Kg", true);
		sFormule = String.Replace(sFormule, "1</span><span class='fdn'>C", "1/C", true);
		sFormule = String.Replace(sFormule, "1</span><span class='fdn'>K", "1/K", true);
		sFormule = String.Replace(sFormule, "J</span><span class='fdn'>msC", "J/msC", true);
		sFormule = String.Replace(sFormule, "g</span><span class='fdn'>mol", "g/mol", true);
		sFormule = String.Replace(sFormule, "J</span><span class='fdn'>molK", "J/molK", true);
		sFormule = String.Replace(sFormule, "N</span><span class='fdn'>C", "N/C", true);
		sFormule = String.Replace(sFormule, "C</span><span class='fdn'>m", "C/m", true);
		sFormule = String.Replace(sFormule, "rad</span><span class='fdn'>s", "rad/s", true);
	else
		sFormule = String.Replace(sFormule, "/", " / ", true);
	end
	
	sFormule = String.Replace(sFormule, "Alpha", "&alpha;", true);
	sFormule = String.Replace(sFormule, "Beta", "&beta;", true);
	sFormule = String.Replace(sFormule, "Delta", "&Delta;", true);
	sFormule = String.Replace(sFormule, "Epsilon", "&epsilon;", true);
	sFormule = String.Replace(sFormule, "Eta", "&eta;", true);
	sFormule = String.Replace(sFormule, "Teta", "&theta;", true);
	sFormule = String.Replace(sFormule, "Pi", "&pi;", true);
	sFormule = String.Replace(sFormule, "Ru", "&rho;", true);
	sFormule = String.Replace(sFormule, "Sigma", "&sigma;", true);
	sFormule = String.Replace(sFormule, "Fi", "&Phi;", true);
	sFormule = String.Replace(sFormule, "Omega", "&omega;", true);
	sFormule = String.Replace(sFormule, "&&omega;;", "&Omega;", true);
	sFormule = String.Replace(sFormule, "Ohm", "&Omega;", true);
	sFormule = String.Replace(sFormule, "Mu", "&mu;", true);
	sFormule = String.Replace(sFormule, "Kapa", "&kappa;", true);
	
	if WhatFile == "V" then
		sFormule = String.Replace(sFormule, "VBar", "<span style='Bar-White'>V</span>", false);
		sFormule = String.Replace(sFormule, "aBar", "<span class='Bar-White'>a</span>", false);
		sFormule = String.Replace(sFormule, "IBar", "<span class='Bar-White'>I</span>", false);
	else
		sFormule = String.Replace(sFormule, "VBar", "<span class='Bar-Black'>V</span>", false);
		sFormule = String.Replace(sFormule, "aBar", "<span class='Bar-Black'>a</span>", false);
		sFormule = String.Replace(sFormule, "IBar", "<span class='Bar-Black'>I</span>", false);
	end
	
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

function Binesh.AddCommentToHTML(Comment, WhatFile)
	FormuleInput = Binesh.ConvertToHTML(Comment, WhatFile);
	
	if WhatFile == nil then
		WhatFile = "F"
	end
	
	TextFile.WriteFromString(_SourceFolder.."\\"..WhatFile..".html", "<p style='direction: rtl; font-family: IRANSans; color: red; font-size: 15px;'>"..Comment.."</p>", true);
end