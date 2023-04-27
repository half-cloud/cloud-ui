"use strict";(self.webpackChunkdocs=self.webpackChunkdocs||[]).push([[348],{98643:e=>{e.exports=JSON.parse('{"functions":[],"properties":[],"types":[],"name":"Badges","desc":"Badges are used to display dynamic content. They can show labels, numbers, or other custom components.\\n\\n## Usage\\nWhen using a Badge, you don\'t put it inside of an element, rather you put the element inside of the Badge.\\n\\n:::caution\\nBadges should only have one child, it cannot render multiple!\\n:::\\n\\n```lua\\nlocal React = require(\\"React\\")\\n\\nlocal Badge = require(\\"mui.Badge\\")\\nlocal Button = require(\\"mui.Button\\")\\n\\nlocal ButtonWithBadge: React.FC<{}> = function()\\n\\treturn React.createElement(Badge, {\\n\\t\\t...badgeProps\\n\\t}, {\\n\\t\\tReact.createElement(Button, {\\n\\t\\t\\t...buttonProps\\n\\t\\t})\\n\\t})\\nend\\n```\\n\\n## Badge Components\\nA neat feature about badges, is that you can add whatever kind of content you want inside of them.\\nIn the example below, we create a Badge component that will have the number 5, as well as an\\nicon right below it.\\n\\n```lua\\nlocal React = require(\\"React\\")\\n\\nlocal Badge = require(\\"mui.Badge\\")\\nlocal Icon = require(\\"mui.Icon\\")\\n\\ntype Props = {\\n\\ticon: string,\\n}\\n\\nlocal IconTextBadge: React.FC<Props> = function(props)\\n\\treturn React.createElement(Badge, {\\n\\t\\tcontent = {\\n\\t\\t\\t5,\\n\\t\\t\\tReact.createElement(Icon, {\\n\\t\\t\\t\\ticon = props.icon,\\n\\t\\t\\t\\tkey = \\"Icon\\",\\n\\t\\t\\t}),\\n\\t\\t}\\n\\t})\\nend\\n```","source":{"line":57,"path":"src/Badges/init.luau"}}')}}]);