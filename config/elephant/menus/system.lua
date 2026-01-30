local _ = require("menus.i18n")._

Name = "system"
NamePretty = _("System")
FixedOrder = true
HideFromProviderlist = true
Icon = ""
Parent = "menu"

function GetEntries()
	return {
		{
			Text = _("Lock"),
			Icon = "",
			Actions = {
				["lock"] = "pidof hyprlock || hyprlock &",
			},
		},
		{
			Text = _("Suspend"),
			Icon = "󰤄",
			Actions = {
				["suspend"] = "systemctl suspend",
			},
		},
		{
			Text = _("Relaunch"),
			Icon = "",
			Actions = {
				["relaunch"] = "uwsm stop",
			},
		},
		{
			Text = _("Restart"),
			Icon = "󰜉",
			Actions = {
				["restart"] = "systemctl reboot",
			},
		},
		{
			Text = _("Shutdown"),
			Icon = "󰐥",
			Actions = {
				["shutdown"] = "systemctl poweroff",
			},
		},
	}
end
