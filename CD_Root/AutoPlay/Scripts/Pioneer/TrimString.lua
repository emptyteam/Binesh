function Binesh.TrimString(sInput)
	if sInput ~= "" then
		result = tostring(sInput);
		
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
		
		result = String.Replace(result, "ÊÚÏÇÏãæá", "ÊÚÏÇÏ ãæá", false);
		
		result = String.Replace(result, "ÑæÊæäí", "ÑæÊæä", false);
		result = String.Replace(result, "Çá˜ÊÑæäí", "Çá˜ÊÑæä", false);
		result = String.Replace(result, "äæÊÑæäí", "äæÊÑæä", false);
		
		result = String.Replace(result, "ãÊÑã˜ÚÈ", "ãÊÑ ã˜ÚÈ", false);
		result = String.Replace(result, "Èå ãÊÑ ã˜ÚÈ", "ÈÑ ãÊÑ ã˜ÚÈ", false);
		result = String.Replace(result, "ÎæÏ ÇáŞÇíí", "ÎæÏÇáŞÇíí", false)
		
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
		
		result = String.Replace(result, "Çííäå", "Âíäå", false);
		result = String.Replace(result, "Çíäå", "Âíäå", false);
		result = String.Replace(result, "Âííäå", "Âíäå", false);
		result = String.Replace(result, "ÂÆíäå", "Âíäå", false);
		
		result = String.Replace(result, "ÊÕæíÑÔ", "ÊÕæíÑ", false);
		result = String.Replace(result, "ÊÕæíÑí", "ÊÕæíÑ", false);
		result = String.Replace(result, "ÊÕæíÑ", "ãÌÇÒí", false);
		result = String.Replace(result, "ãÌÇÒí ãÌÇÒí", "ÓÇíå", false);
		result = String.Replace(result, "ãÌÇÒí ÓÇíå", "ÓÇíå", false);
		result = String.Replace(result, "ãÌÇÒí ÍŞíŞí", "ÌÓã", false);
		result = String.Replace(result, "ãÌÇÒí ÌÓã", "ÌÓã", false);
		result = String.Replace(result, "äæÑí ", "äæÑ ", false);
		result = String.Replace(result, "äæÑ", "ãÍíØ ÔİÇİ", false);
		result = String.Replace(result, "ãÍÏÈí", "ãÍÏÈ", false);
		result = String.Replace(result, "ãŞÚÑí", "ãŞÚÑ", false);
		result = String.Replace(result, "ÊÎÊí", "ÊÎÊ", false);
		
		result = String.Replace(result, "ÙÑİíÊ ÑãÇíí", "ÙÑİíÊ ÑãÇ", false);
		result = String.Replace(result, "ÊÛíÑ", "ÊÛííÑ", false);
		result = String.Replace(result, "ãÓÇÍÊí", "ãÓÇÍÊ", false);
		result = String.Replace(result, "ãÓÇÍÊ", "ÓØÍ", false);
		result = String.Replace(result, "ÌÓãí", "ÌÓã", false);
		result = String.Replace(result, "äíÑæí", "äíÑæ", false);
		result = String.Replace(result, "ÑãÇí", "ÑãÇ", false);
		result = String.Replace(result, "İÇÕáÔ", "İÇÕáå", false);
		result = String.Replace(result, "İÇÕáåÔ", "İÇÕáå", false);
		result = String.Replace(result, "İÇÕáå ÇÔ ", "İÇÕáå ", false);
		result = String.Replace(result, "İÇÕáåÇÔ", "İÇÕáå", false);
		result = String.Replace(result, "İÇÕáåí", "İÇÕáå", false);
		result = String.Replace(result, "İÇÕáå Çí ", "İÇÕáå ", false);
		result = String.Replace(result, "İÇÕáåÇí", "İÇÕáå", false);
		result = String.Replace(result, "İÇÕáå í ", "İÇÕáå ", false);
		result = String.Replace(result, "íÔ ÇÒ ÍÑ˜Ê", "ÔÑæÚ", false);
		result = String.Replace(result, "ÈÌÑã", "ÌÑã", false);
		result = String.Replace(result, "ÈÍÌã", "ÍÌã", false);
		result = String.Replace(result, "ÈÏãÇ", "ÏãÇ", false);
		result = String.Replace(result, "ÈİÇÕáå", "İÇÕáå", false);
		result = String.Replace(result, "ÇÕØÍ˜Ç˜", "ÇÕØ˜Ç˜", false);
		result = String.Replace(result, "ÇÕØå˜Ç˜", "ÇÕØ˜Ç˜", false);
		result = String.Replace(result, "äíÑæí", "äíÑæ", false);
		result = String.Replace(result, "İäÑí", "İäÑ", false);
		result = String.Replace(result, "ÑãÇí", "ÑãÇ", false);
		result = String.Replace(result, "ÏãÇí", "ÏãÇ", false);
		result = String.Replace(result, "ÍÌãí", "ÍÌã", false);
		result = String.Replace(result, "ÈÑÂíäÏ", "ÈÑÇíäÏ", false);
		result = String.Replace(result, "ÈÑÂíäÏÔ", "ÈÑÇíäÏ", false);
		result = String.Replace(result, "ÈÑÇíäÏÔ", "ÈÑÇíäÏ", false);
		result = String.Replace(result, "ÑÇäí", "ÑÇäÔ", false);
		result = String.Replace(result, "ÚãŞ", "ÇÑÊİÇÚ", false);
		result = String.Replace(result, "ÚãŞí", "ÇÑÊİÇÚ", false);
		result = String.Replace(result, "ÇÑÊİÇÚí", "ÇÑÊİÇÚ", false);
		result = String.Replace(result, "ãÌĞæÑ ÓØÍ", "ãÊÑ ã˜ÚÈ", false);
		result = String.Replace(result, "ÈÒÑäãÇíí", "ÈÒÑ äãÇíí", false);
		result = String.Replace(result, "ÓÇäÊíÑÇÏ", "ÓáÓíæÓ", false);
		result = String.Replace(result, "ÓÇäÊí ÑÇÏ", "ÓáÓíæÓ", false);
		result = String.Replace(result, "ÏÑÌå ÓáÓíæÓ", "ÓáÓíæÓ", false);
		result = String.Replace(result, "ÏÑÌå ˜áæíä", "˜áæíä", false);
		result = String.Replace(result, "Øæáí", "Øæá", false);
		result = String.Replace(result, "ÑãÇ ÇÊáÇİí", "ãäÈÚ ÓÑÏ", false);
		result = String.Replace(result, "ÑãÇ Êáİ ÔÏå", "ãäÈÚ ÓÑÏ", false);
		result = String.Replace(result, "Ïí ÈÎÇÑ", "ãäÈÚ Ñã", false);
		result = String.Replace(result, "˜ÇÑ ÎÑæÌí", "˜ÇÑ ÎÇÑÌí", false);
		result = String.Replace(result, "ÇÎÊáÇİ ÊÇäÓíá", "æáÊÇ", false);
		result = String.Replace(result, "ÌÑã ãæá˜æáí", "ÌÑã ãæáí", false);
		result = String.Replace(result, "ÓÑÚÊí", "ÓÑÚÊ", false);
		result = String.Replace(result, "ÏãÇí", "ÏãÇ", false);
		result = String.Replace(result, "ãÓÇİÊ", "İÇÕáå", false);
		result = String.Replace(result, "˜ÇÑí", "˜ÇÑ", false);
		result = String.Replace(result, "ÈÇÒÏå ÍÏÇ˜ËÑ", "ÈÇÒÏå ˜ÇÑäæ", false);
		result = String.Replace(result, "ÇÈÚÇÏ", "ÍÌã", false);
		result = String.Replace(result, "ÈÇÑ ", " ĞÑå ", false);
		result = String.Replace(result, "äíæÊä", "äíæÊæä", false);
		result = String.Replace(result, "ÌÑíÇäí", "ÌÑíÇä", false);
		result = String.Replace(result, "ãÏÊ", "ÒãÇä", false);
		result = String.Replace(result, "ÇäÑí Çá˜ÊÑí˜í ãÕÑİí", "ÇäÑí Çá˜ÊÑí˜í", false);
		result = String.Replace(result, "äíÑæíí", "äíÑæ", false);
		result = String.Replace(result, "ÈÇÒÏå ãÇÔíä ˜ÇÑäæ", "ÈÇÒÏå ˜ÇÑäæ", false);
		result = String.Replace(result, "ÓÑÚÊÔ", "ÓÑÚÊ", false);
		result = String.Replace(result, "Ñãí", "Ñã", false);
		result = String.Replace(result, "æáÊí", "æáÊ", false);
		result = String.Replace(result, "ãí ÇíÓÊÏ", "ÇíÓÊÇÏä", false);
		result = String.Replace(result, "˜íáæíí", "˜íáæ Ñã", false);
		result = String.Replace(result, "ãÊÑí", "ãÊÑ", false);
		result = String.Replace(result, "ËÇÈÊ İäÑ", "ÖÑíÈ İäÑ", false);
		result = String.Replace(result, "Çåã ÏÑ ãÊÑ", "Çåã ãÊÑ", false);
		result = String.Replace(result, "Çáí ÓØÍí", "Çáí ÓØÍ", false);
		result = String.Replace(result, "ÈÓÇãÏ", "İÑ˜ÇäÓ", false);
		result = String.Replace(result, "ÈÓÇãÏ ÒÇæíå", "ÓÑÚÊ ÒÇæíå", false);
		result = String.Replace(result, "ÎáÇ", "ÎáÇÁ", false);
		result = String.Replace(result, "ÎáÇÁÁ", "ÎáÇÁ", false);
		result = String.Replace(result, "ã˜Çä", "İÇÕáå", false);
		result = String.Replace(result, "ËÇÈÊ", "ÖÑíÈ", false);
		result = String.Replace(result, "Ôí", "ÌÓã", false);
		result = String.Replace(result, "ÌäÈÌÓã", "ÌäÈÔí", false);
		result = String.Replace(result, "Liter", "L", false);
		result = String.Replace(result, "Lit", "L", false);
		result = String.Replace(result, "æáí", "æá", false);
		result = String.Replace(result, "ÖÎÇãÊ", "Øæá", false);
		result = String.Replace(result, "ÌÑíÇä Çá˜ÊÑí˜í ãÊæÓØ", "ÌÑíÇä ãÊæÓØ", false);
		result = String.Replace(result, "ÇäÑí ãİíÏ", "ÇäÑí ÊæáíÏí", false);
		result = String.Replace(result, "ÇäÑí ãİíÏ", "ÇäÑí ÊæáíÏí", false);
		result = String.Replace(result, "Çåã ÏÑ ãÊÑ", "Çåã ãÊÑ", false);
		result = String.Replace(result, "ÊÑãÒ", "ÊæŞİ", false);
		result = String.Replace(result, "ÇäÈÓÇØ Øæá", "ÊÛííÑ Øæá", false);
		result = String.Replace(result, "ÖÑíÈ ÊÛííÑ Øæá", "ÖÑíÈ ÇäÈÓÇØ Øæá", false);
		result = String.Replace(result, "ÌÇÈÌÇíí", "İÇÕáå", false);
		result = String.Replace(result, "ÇáŞÇííÏí", "ÖÑíÈ ÎæÏÇáŞÇíí", false);
		result = String.Replace(result, "ÎæÏ ÇáŞÇíí", "ÎæÏÇáŞÇíí", false);
		result = String.Replace(result, "ÈÏæä åÓÊå", "åÓÊå 1", false);
		result = String.Replace(result, "ÒæÇíå", "ÒÇæíå", false);
		result = String.Replace(result, "ãíÏÇäí", "ãíÏÇä", false);
		result = String.Replace(result, "ÒÇæíå ŞÇÆã", "ÒÇæíå 90 ÏÑÌå", false);
		result = String.Replace(result, "ÒÇæíå ÚãæÏ", "ÒÇæíå 90 ÏÑÌå", false);
		result = String.Replace(result, "ÇİÒÇíÔ ÏãÇ ÊÇ", "ÊÛííÑ ÏãÇ", false);
		result = String.Replace(result, "ãÊÑãÑÈÚ", "ãÊÑ ãÑÈÚ", false);
		result = String.Replace(result, "ÍáŞå", "ÏæÑ", false);
		result = String.Replace(result, "ÑÊä", "ÑæÊæä", false);
		result = String.Replace(result, "ÑæÊä", "ÑæÊæä", false);
		result = String.Replace(result, "ÊÛííÑÇÊ", "ÊÛííÑ", false);
		result = String.Replace(result, "ÑãÇ äåÇä", "", false);
		result = String.Replace(result, "ÑãÇ ÊÈÎíÑ", "ÊÈÎíÑ", false);
		result = String.Replace(result, "ÑãÇ ãíÚÇä", "ãíÚÇä", false);
		result = String.Replace(result, "ÑãÇ ĞæÈ", "ĞæÈ", false);
		result = String.Replace(result, "ÑãÇ ÇäÌãÇÏ", "ÇäÌãÇÏ", false);
		result = String.Replace(result, "ãíÇäå ÑÇå", "æÓØÑÇå", false);
		result = String.Replace(result, "ãíÇä ÑÇå", "æÓØÑÇå", false);
		result = String.Replace(result, "æÓØ ÑÇå", "æÓØÑÇå", false);
		
		result = String.Replace(result, "ÏÑ åÑ ËÇäíå", "ÒãÇä 1 ËÇäíå", false);
		result = String.Replace(result, "ÏÑ åÑ ÏŞíŞå", "ÒãÇä 60 ËÇäíå", false);
		result = String.Replace(result, "ÏÑ åÑ ÓÇÚÊ", "ÒãÇä 3600 ËÇäíå", false);
		result = String.Replace(result, "ÏÑ åÑ ÑæÒ", "ÒãÇä 86400 ËÇäíå", false);
		
		-- For Delta:
		for indexDelta = 1, Table.Count(tbl.Delta.Words) do
			result = String.Replace(result, tbl.Delta.Words[indexDelta], " ÊÛííÑ ", false);
		end
		for indexFirst = 1, Table.Count(tbl.Delta.First) do
			result = String.Replace(result, tbl.Delta.First[indexFirst], " Çæáíä ", false);
		end
		for indexSecond = 1, Table.Count(tbl.Delta.Second) do
			result = String.Replace(result, tbl.Delta.Second[indexSecond], " Ïæãíä ", false);
		end
		result = String.Replace(result, "Çæáíäíä", "Çæáíä", false);
		result = String.Replace(result, "Ïæãíäíä", "Ïæãíä", false);
		
		result = String.Replace(result, "bar", "Bar", false);
		result = String.Replace(result, "bar", "Bar", false);
		result = String.Replace(result, "atmosfer", "atm", false);
		result = String.Replace(result, "atmosphere", "atm", false);
		result = String.Replace(result, "minute", "min", false);
		result = String.Replace(result, "minutes", "min", false);
		result = String.Replace(result, "j", "J", true);
		result = String.Replace(result, "eta", "Eta", false);
		result = String.Replace(result, "teta", "Teta", false);
		result = String.Replace(result, "deg", "ÏÑÌå", false);
		result = String.Replace(result, "lv", "LV", false);
		result = String.Replace(result, "ohm", "Ohm", false);
		result = String.Replace(result, "fsmax", "fs,max", false);
		result = String.Replace(result, "fs max", "fs,max", false);
		result = String.Replace(result, "f smax", "fs,max", false);
		result = String.Replace(result, "f s max", "fs,max", false);
		result = String.Replace(result, "fsmaks", "fs,max", false);
		result = String.Replace(result, "qc", "QC", false);
		result = String.Replace(result, "muk", "Muk", false);
		result = String.Replace(result, "mus", "Mus", false);
		result = String.Replace(result, "omega", "Omega", false);
		result = String.Replace(result, "V0", "V1", true);
		result = String.Replace(result, "rt", "RT", false);
		result = String.Replace(result, "vt", "VT", false);
		
		result = String.Replace(result, "=", " = ", false);
		result = String.Replace(result, "=", "", false);
		
		-- Convert '/' to '.'
		for number1 = 0, 9 do
			for number2 = 0, 9 do
				result = String.Replace(result, number1.."/"..number2, number1.."."..number2, false);
			end
		end
		
		result = String.Replace(result, " |", "|", false);
		result = String.Replace(result, "| ", "|", false);
		
		result = String.Replace(result, "Delta ", "Delta", false);
		result = String.Replace(result, "sin", "sin ", false);
		result = String.Replace(result, "cos", "cos ", false);
		result = String.Replace(result, "tan", "tan ", false);
		result = String.Replace(result, "Sqrt", "Sqrt ", false);
		
		result = String.Replace(result, "	", " ", false); -- it Tab
		result = String.Replace(result, "  ", " ", false);
		return result;
	end
end