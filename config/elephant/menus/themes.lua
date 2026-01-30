local _ = require("menus.i18n")._

Name = "themes"
NamePretty = _("Themes")
FixedOrder = true
HideFromProviderlist = true
Icon = "󰸌"
Parent = "menu"

function GetEntries()
	return {
		{
			Text = _("System theme"),
			Icon = "󰸌",
			Actions = {
				["change-theme"] = "walker --theme menus -m menus:system-themes -N",
			},
		},
		{
			Text = _("Waybar theme"),
			Icon = "󰸌",
			Actions = {
				["change-waybar"] = "walker --theme menus -m menus:waybar-themes -N",
			},
		},
		{
			Text = _("Fastfetch theme"),
			Icon = "󰸌",
			Actions = {
				["change-fastfetch"] = "walker --theme menus -m menus:fastfetch-themes -N",
			},
		},
		{
			Text = _("Starship theme"),
			Icon = "󰸌",
			Actions = {
				["change-starship"] = "walker --theme menus -m menus:starship-themes -N",
			},
		},
		{
			Text = _("Cursor theme"),
			Icon = "󰸌",
			Actions = {
				["change-cursor"] = "walker --theme menus -m menus:cursor-themes -N",
			},
		},
	}
end
