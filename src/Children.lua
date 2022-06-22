local Children = {}
Children.__index = Children
Children.__type = "Children"

function Children.new()
	local self = setmetatable({}, Children)
	return self
end

return Children.new()