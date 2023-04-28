---
sidebar_position: 1
---
# Badges
Badges are used to display dynamic content. They can show labels, numbers, or other custom components.

## Usage with React
Make sure you are using the proper [CloudUI](https://github.com/half-cloud/cloud-ui) React package.
```lua
local React = require("React")

local Badge = require("Badge")
local Button = require("Button")

local BadgedButton: React.FC<{}> = function()
	return React.createElement(Button, {
		...buttonProps
	}, {
		Badge = React.createElement(Badge, {
			...badgeProps
		})
	})
end
```

## Usage with Fusion
Make sure you are using the proper [CloudUI](https://github.com/half-cloud/cloud-ui) Fusion package.
```lua
local Fusion = require("Fusion")

local Badge = require("Badge")
local Button = require("Button")

type Props = {
	parent: GuiObject
}

local function BadgedButton(props: Props)
	return Button {
		...buttonProps,
		parent = props.parent,

		[Fusion.Children] = {
			Badge {
				...badgeProps
			}
		}
	}
end
```