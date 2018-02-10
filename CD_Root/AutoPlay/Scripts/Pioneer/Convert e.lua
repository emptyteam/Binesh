function Binesh.Convert_e(sNumber)
	_result = nil
	sNumber = tostring(sNumber)
	if String.Find(sNumber, "e+", 1, false) ~= -1 then
		Number = AMS.DelimitedStringToTable(sNumber, "e+");
		if tonumber(Number[1]) == 1 then
			Number[1] = ""
			Number[2] = tonumber(Number[2])-1
			_result = "10<sup>("..Number[2]..")</sup>"
		else
			_result = Number[1].."*10<sup>("..tonumber(Number[2])..")</sup>"
		end
	elseif String.Find(sNumber, "e-", 1, false) ~= -1 then
		Number = AMS.DelimitedStringToTable(sNumber, "e-");
		if tonumber(Number[1]) == 1 then
			Number[1] = ""
			Number[2] = tonumber(Number[2])-1
			_result = "10<sup>(-"..Number[2]..")</sup>"
		else
			_result = Number[1].."*10<sup>(-"..tonumber(Number[2])..")</sup>"
		end
	end
	if _result == nil then
		_result = sNumber
	end
	return _result
end