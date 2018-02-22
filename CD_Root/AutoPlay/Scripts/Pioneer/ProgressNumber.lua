function Binesh.ProgressNumber(sNumber)
	--[[  Define Functions  ]]--
	function RoundNumbers(sNumber)
		_result = nil
		sNumber = tostring(sNumber)
		if sNumber ~= nil then
			if Settings.Round == true then
				_result = Math.Round(sNumber, 0);
				if _result == 0 then
					_result = sNumber
				end
			end
		end
		if _result == nil then
			_result = sNumber
		end
		
		return _result
	end
	
	function CheckNegative(sNumber)
		_result = nil
		sNumber = tonumber(sNumber)
		if sNumber ~= nil then
			if sNumber < 0 then
				_result = "("..sNumber..")"
			end
		end
		if _result == nil then
			_result = sNumber
		end
		return _result
	end -- function: CheckNegative
	
	function Convert_e(sNumber)
		_result = nil
		sNumber = tostring(sNumber)
		if sNumber ~= nil then
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
		end
		if _result == nil then
			_result = sNumber
		end
		
		return _result
	end -- function: Convert_e
	
	--[[  Action  ]]--
	sNumber = RoundNumbers(sNumber)
	sNumber = CheckNegative(sNumber)
	sNumber = Convert_e(sNumber)
	
	return sNumber
end -- function: ProgressNumber