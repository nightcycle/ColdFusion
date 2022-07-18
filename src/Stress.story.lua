--!nonstrict
return function (coreGui)
	local package = script.Parent
	local ColdFusion = require(package)

	local enabled = true
	task.spawn(function()
		local reps = 10^7
		for i=1, reps do
			if not enabled then break end
			if i%100 == 0 then task.wait() print(math.round(100000*i/reps)/1000) end
	
			local Fuse = ColdFusion.fuse()
	
			local Active = Fuse.Value(false)
			Fuse.new "TextButton" {
				[Fuse.Event "Activated"] = function()
					Active:Set(not Active:Get())
				end,
				Parent = coreGui,
				Position = UDim2.fromScale(0.5,0.5),
				AnchorPoint = Vector2.new(0.5,0.5),
				Size = UDim2.fromOffset(200,50),
				BackgroundColor3 = Fuse.Computed(Active, function(act)
					if act then
						return Color3.new(1,0,0)
					else
						return Color3.new(0,1,0)
					end
				end):Tween()
			}
			task.delay(1, function()
				Active:Set(true)
				task.wait(1)
				Fuse:Destroy()
			end)
		end
	end)
	return function ()
		enabled = false
	end
end