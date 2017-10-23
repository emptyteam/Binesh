function Binesh.TrimString(sInput)
	if sInput ~= "" then
		result = tostring(sInput);
		
		result = String.Replace(result, "ÊÚÏÇÏãæá", "ÊÚÏÇÏ ãæá", false);
		
		result = String.Replace(result, "ÑæÊæäí", "ÑæÊæä", false);
		result = String.Replace(result, "Çá˜ÊÑæäí", "Çá˜ÊÑæä", false);
		result = String.Replace(result, "äæÊÑæäí", "äæÊÑæä", false);
		
		result = String.Replace(result, "ãÊÑã˜ÚÈ", "ãÊÑ ã˜ÚÈ", false);
		result = String.Replace(result, "Èå ãÊÑ ã˜ÚÈ", "ÈÑ ãÊÑ ã˜ÚÈ", false);
		result = String.Replace(result, "ÎæÏ ÇáŞÇíí", "ÎæÏÇáŞÇíí", false)
		result = String.Replace(result, "í", "í", false)
		
		result = String.Replace(result, "í˜æ", " í˜æ ", false);
		result = String.Replace(result, "äÇäæ", " äÇäæ ", false);
		result = String.Replace(result, "ãí˜Ñæ", " ãí˜Ñæ ", false);
		result = String.Replace(result, "ãíáí", " ãíáí ", false);
		result = String.Replace(result, "ÓÇäÊí", " ÓÇäÊí ", false);
		result = String.Replace(result, "ÏÓí", " ÏÓí ", false);
		result = String.Replace(result, "Ï˜Ç", " Ï˜Ç ", false);
		result = String.Replace(result, "å˜Êæ", " å˜Êæ ", false);
		result = String.Replace(result, "˜íáæ", " ˜íáæ ", false);
		result = String.Replace(result, "ãÇ", " ãÇ ", false);
		result = String.Replace(result, "íÇ", " íÇ ", false);
		result = String.Replace(result, "ÊÑÇ", " ÊÑÇ ", false);
		
		result = String.Replace(result, " _ ", "_", false);
		result = String.Replace(result, "_ ", "_", false);
		result = String.Replace(result, " _", "_", false);
		result = String.Replace(result, "ÊÛíÑ", "ÊÛííÑ", false);
		result = String.Replace(result, "ÊÕæíÑÔ", "ÊÕæíÑ", false);
		result = String.Replace(result, "ãÓÇÍÊí", "ãÓÇÍÊ", false);
		result = String.Replace(result, "ÌÓãí", "ÌÓã", false);
		result = String.Replace(result, "äíÑæí", "äíÑæ", false);
		result = String.Replace(result, "ÑãÇí", "ÑãÇ", false);
		result = String.Replace(result, "İÇÕáÔ", "İÇÕáå", false);
		result = String.Replace(result, "íÔ ÇÒ ÍÑ˜Ê", "ÔÑæÚ", false);
		result = String.Replace(result, "ÈÌÑã", "ÌÑã", false);
		result = String.Replace(result, "ÈÍÌã", "ÍÌã", false);
		result = String.Replace(result, "ÈÏãÇ", "ÏãÇ", false);
		result = String.Replace(result, "ÈİÇÕáå", "İÇÕáå", false);
		result = String.Replace(result, "ÇÕØÍ˜Ç˜", "ÇÕØ˜Ç˜", false);
		result = String.Replace(result, "ÇÕØå˜Ç˜", "ÇÕØ˜Ç˜", false);
		result = String.Replace(result, "İÇÕáå ÇÔ", "İÇÕáå", false);
		result = String.Replace(result, "Âííäå", "Âíäå", false);
		result = String.Replace(result, "ÂÆíäå", "Âíäå", false);
		result = String.Replace(result, "äíÑæí", "äíÑæ", false);
		result = String.Replace(result, "İäÑí", "İäÑ", false);
		result = String.Replace(result, "ÑãÇí", "ÑãÇ", false);
		result = String.Replace(result, "ÏãÇí", "ÏãÇ", false);
		result = String.Replace(result, "ÈÑÂíäÏ", "ÈÑÇíäÏ", false);
		result = String.Replace(result, "ÈÑÂíäÏÔ", "ÈÑÇíäÏ", false);
		result = String.Replace(result, "ÈÑÇíäÏÔ", "ÈÑÇíäÏ", false);
		result = String.Replace(result, "ÑÇäí", "ÑÇäÔ", false);
		result = String.Replace(result, "ÚãŞ", "ÇÑÊİÇÚ", false);
		result = String.Replace(result, "ãÌĞæÑ ãÓÇÍÊ", "ãÊÑ ã˜ÚÈ", false);
		result = String.Replace(result, "ÈÒÑäãÇíí", "ÈÒÑ äãÇíí", false);
		result = String.Replace(result, "ÓÇäÊí ÑÇÏ", "ÓáÓíæÓ", false);
		result = String.Replace(result, "ÓÇäÊíÑÇÏ", "ÓáÓíæÓ", false);
		result = String.Replace(result, "ÏÑÌå ÓáÓíæÓ", "ÓáÓíæÓ", false);
		result = String.Replace(result, "ÏÑÌå ˜áæíä", "˜áæíä", false);
		result = String.Replace(result, "ÑãÇ ÇÊáÇİí", "ãäÈÚ ÓÑÏ", false);
		result = String.Replace(result, "ÑãÇ Êáİ ÔÏå", "ãäÈÚ ÓÑÏ", false);
		result = String.Replace(result, "Ïí ÈÎÇÑ", "ãäÈÚ Ñã", false);
		result = String.Replace(result, "˜ÇÑ ÎÑæÌí", "˜ÇÑ ÎÇÑÌí", false);
		result = String.Replace(result, "ÇÎÊáÇİ ÊÇäÓíá", "æáÊÇ", false);
		result = String.Replace(result, "ÌÑã ãæá˜æáí", "ÌÑã ãæáí", false);
		result = String.Replace(result, "ÓÑÚÊí", "ÓÑÚÊ", false);
		result = String.Replace(result, "ÏãÇí", "ÏãÇ", false);
		result = String.Replace(result, "ãÓÇİÊ", "ÌÇÈÌÇíí", false);
		result = String.Replace(result, "˜ÇÑí", "˜ÇÑ", false);
		result = String.Replace(result, "ÈÇÒÏå ÍÏÇ˜ËÑ", "ÈÇÒÏå ˜ÇÑäæ", false);
		result = String.Replace(result, "ÇÈÚÇÏ", "ÍÌã", false);
		result = String.Replace(result, "ÈÇÑ", "ĞÑå", false);
		result = String.Replace(result, "äíæÊä", "äíæÊæä", false);
		result = String.Replace(result, "ÌÑíÇäí", "ÌÑíÇä", false);
		result = String.Replace(result, "ãÏÊ", "ÒãÇä", false);
		result = String.Replace(result, "ÇäÑí Çá˜ÊÑí˜í ãÕÑİí", "ÇäÑí ãÕÑİí", false);
		result = String.Replace(result, "äíÑæíí", "äíÑæ", false);
		result = String.Replace(result, "ÈÇÒÏå ãÇÔíä ˜ÇÑäæ", "ÈÇÒÏå ˜ÇÑäæ", false);
		result = String.Replace(result, "ÓÑÚÊÔ", "ÓÑÚÊ", false);
		
		-- For Delta:
		for indexDelta = 1, Table.Count(tbl.Delta.Words) do
			result = String.Replace(result, tbl.Delta.Words[indexDelta], "ÊÛííÑ", false);
		end
		for indexFirst = 1, Table.Count(tbl.Delta.First) do
			result = String.Replace(result, tbl.Delta.First[indexFirst], "Çæáíä", false);
		end
		for indexSecond = 1, Table.Count(tbl.Delta.Second) do
			result = String.Replace(result, tbl.Delta.Second[indexSecond], "Ïæãíä", false);
		end
		result = String.Replace(result, "Çæáíäíä", "Çæáíä", false);
		result = String.Replace(result, "Ïæãíäíä", "Ïæãíä", false);
		
		result = String.Replace(result, "bar", "Bar", false);
		result = String.Replace(result, "bar", "Bar", false);
		result = String.Replace(result, "atmosfer", "atm", false);
		result = String.Replace(result, "atmosphere", "atm", false);
		result = String.Replace(result, "minute", "min", false);
		result = String.Replace(result, "minutes", "min", false);
		
		result = String.Replace(result, "?", "", false);
		result = String.Replace(result, "¿", "", false);
		result = String.Replace(result, "¡", "", false);
		result = String.Replace(result, ",", "", false);
		result = String.Replace(result, ":", "", false);
		result = String.Replace(result, "&", "", false);
		result = String.Replace(result, "$", "", false);
		result = String.Replace(result, "#", "", false);
		result = String.Replace(result, "@", "", false);
		result = String.Replace(result, "~", "", false);
		
		result = String.Replace(result, "m", " m", false);
		result = String.Replace(result, "m/s", " m/s", false);
		result = String.Replace(result, "m/s^2", " m/s^2", false);
		result = String.Replace(result, "J", " J", false);
		result = String.Replace(result, "j", " J", true);
		result = String.Replace(result, "m^3", " m^3", true);
		result = String.Replace(result, "mol", " mol", false);
		result = String.Replace(result, "K", " K", true);
		result = String.Replace(result, "C", " C", true);
		result = String.Replace(result, "g", " g", true);
		result = String.Replace(result, "g/mol", " g/mol", true);
		
		result = String.Replace(result, "=", " = ", false);
		
		result = String.Replace(result, "!", " ! ", false);
		result = String.Replace(result, "%", " % ", false);
		
		result = String.Replace(result, " |", "|", false);
		result = String.Replace(result, "| ", "|", false);
		
		result = String.Replace(result, "Delta ", "Delta", false);
		result = String.Replace(result, "sin", "sin ", false);
		result = String.Replace(result, "cos", "cos ", false);
		result = String.Replace(result, "tan", "tan ", false);
		result = String.Replace(result, "Sqrt", "Sqrt ", false);
		
		result = String.Replace(result, "  ", " ", false);
		return result;
	end
end