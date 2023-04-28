local CloudUI = script.Parent.Parent
local Packages = CloudUI.Parent

local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)

local Badge = require(script.Parent.Badge)

local Story: React.FC<{}> = function()
	return React.createElement("Frame", {
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundColor3 = Color3.fromHex("FEF7FF"),
		Position = UDim2.fromScale(0.5, 0.5),
		Size = UDim2.fromOffset(64, 64),
	}, {
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(0, 8),
		}),

		UIStroke = React.createElement("UIStroke", {
			Color = Color3.fromHex("CAC4D0"),
		}),

		Badge = React.createElement(Badge),
	})
end

return function(t)
	local root = ReactRoblox.createRoot(t)
	root:render(React.createElement(Story))

	return function()
		root:unmount()
	end
end
