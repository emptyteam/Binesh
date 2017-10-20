--[[

--------------------------------------------------------------
--++++++++++++++++++ Factorial V: 1.0.0.5 ++++++++++++++++++--
--------------------------------------------------------------

]]

function Math.Factorial(sNumber)
	if sNumber ~= nil then
		sNumber = tonumber(sNumber)
		if sNumber < 2 then
			result =  1
		else
			result = sNumber * Math.Factorial(sNumber-1)
		end
		return result
	end
end