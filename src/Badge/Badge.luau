local CloudUI = script.Parent.Parent
local Packages = CloudUI.Parent

local React = require(Packages.React)

local Badge: React.FC<{}> = function()
	return React.createElement("TextLabel", {
		AnchorPoint = Vector2.new(0.5, 0.5),
		AutomaticSize = Enum.AutomaticSize.X,
		BackgroundColor3 = Color3.fromHex("B91C1C"),
		FontFace = Font.fromName("FredokaOne", Enum.FontWeight.Medium),
		Position = UDim2.fromScale(1, 0),
		Size = UDim2.fromOffset(0, 16),
		Text = "999+",
		TextColor3 = Color3.fromHex("FFFFFF"),
		TextSize = 12,
	}, {
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(0.5, 0),
		}),

		UIPadding = React.createElement("UIPadding", {
			PaddingBottom = UDim.new(0, 0),
			PaddingLeft = UDim.new(0, 8),
			PaddingRight = UDim.new(0, 8),
			PaddingTop = UDim.new(0, 0),
		}),
	})
end

return Badge
