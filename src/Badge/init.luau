--[=[
	@class Badge
	Badges are used to display dynamic content. They can show labels, numbers, or other custom components.

	### Usage
	Badges can be used inside of any component you want to display info on.
	```lua
	local Badge = require("Badge")
	local Button = require("Button")

	local ButtonWithBadge: React.FC<{}> = function()
		return React.createElement(Button, {
			...buttonProps
		}, {
			Badge = React.createElement(Badge, {
				...badgeProps
			})
		})
	end
	```
]=]

--[=[
	@interface BadgeProps
	@within Badge
	.content { ReactNode | number | string }?
	.max number?
]=]

local Badge = require(script.Badge)
return Badge
