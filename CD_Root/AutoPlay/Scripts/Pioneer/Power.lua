--[[

----------------------------------------------------------
--++++++++++++++++++ Power V: 1.5.0.0 ++++++++++++++++++--
----------------------------------------------------------

]]

function Math.Power(sNumber, Power)
	if sNumber ~= nil then
		sNumber = tonumber(sNumber)
	end
	
	if Power ~= nil then
		Power = tonumber(Power)
	end
	
	if sNumber ~= nil and Power ~= nil then
		if Power == 0 then
			result = 1
		else
			result = sNumber^Power
		end
	end
	return result
end