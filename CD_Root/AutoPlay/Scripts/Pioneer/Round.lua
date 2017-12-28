function Math.Sign(v)
	return (v >= 0 and 1) or -1
end
function Math.Round(v, bracket)
	bracket = bracket or 1
	return Math.Floor(v/bracket + Math.Sign(v) * 0.5) * bracket
end