--[=[
	@class Badges
	Badges are used to display dynamic content. They can show labels, numbers, or other custom components.

	## Usage
	When using a Badge, you don't put it inside of an element, rather you put the element inside of the Badge.

	:::caution
	Badges should only have one child, it cannot render multiple!
	:::

	```lua
	local React = require("React")

	local Badge = require("mui.Badge")
	local Button = require("mui.Button")

	local ButtonWithBadge: React.FC<{}> = function()
		return React.createElement(Badge, {
			...badgeProps
		}, {
			React.createElement(Button, {
				...buttonProps
			})
		})
	end
	```

	## Badge Components
	A neat feature about badges, is that you can add whatever kind of content you want inside of them.
	In the example below, we create a Badge component that will have the number 5, as well as an
	icon right below it.

	```lua
	local React = require("React")

	local Badge = require("mui.Badge")
	local Icon = require("mui.Icon")

	type Props = {
		icon: string,
	}

	local IconTextBadge: React.FC<Props> = function(props)
		return React.createElement(Badge, {
			content = {
				5,
				React.createElement(Icon, {
					icon = props.icon,
					key = "Icon",
				}),
			}
		})
	end
	```
]=]
return {}
