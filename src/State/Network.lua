--!nonstrict

--[[
	Constructs and returns objects which can be used to model independent
	reactive state.
]]
local runService = game:GetService("RunService")

return function (clientState, serverState)
	if runService:IsServer() then
		if clientState.Destroy then
			clientState:Destroy()
		end
		return serverState
	else
		if serverState.Destroy then
			clientState:Destroy()
		end
		return clientState
	end
end