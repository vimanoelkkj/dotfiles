local _ = require("menus.i18n")._

Name = "menu"
NamePretty = _("Menu")
FixedOrder = true
HideFromProviderlist = true
Description = _("Menu")

function GetEntries()
	return {
		{
			Text = _("Update"),
			Icon = "",
			Actions = {
				["update"] = "ghostty --class=local.floating -e update-perform",
			},
		},
		{
			Text = _("Install package"),
			Icon = "󰣇",
			Actions = {
				["manage-pkg"] = "ghostty --class=local.floating -e pkg-install",
			},
		},
		{
			Text = _("Remove package"),
			Icon = "󰭌",
			Actions = {
				["manage-pkg"] = "ghostty --class=local.floating -e pkg-remove",
			},
		},
		{
			Text = _("Change themes"),
			Icon = "󰸌",
			Actions = {
				["change-themes"] = "walker -t menus -m menus:themes -N",
			},
		},
		{
			Text = _("Capture"),
			Icon = "",
			Actions = {
				["capture"] = "walker -t menus -m menus:capture -N",
			},
		},
		{
			Text = _("Tools"),
			Icon = "",
			Actions = {
				["tools"] = "walker -t menus -m menus:tools -N",
			},
		},
		{
			Text = _("Keybindings"),
			Icon = "",
			Actions = {
				["keybindings"] = "walker -t menus -m menus:keybindings -N",
			},
		},
		{
			Text = _("System"),
			Icon = "󰐥",
			Actions = {
				["system"] = "walker -t menus -m menus:system -N",
			},
		},
	}
end
