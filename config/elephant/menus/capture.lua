local _ = require("menus.i18n")._

Name = "capture"
NamePretty = _("Capture")
FixedOrder = true
HideFromProviderlist = true
Icon = ""
Parent = "menu"

function GetEntries()
	return {
		{
			Text = _("Screenshot"),
			Icon = "",
			Actions = {
				["screenshot"] = "walker -t menus -m menus:screenshots -N",
			},
		},
		{
			Text = _("Record"),
			Icon = "",
			Actions = {
				["record"] = "walker -t menus -m menus:screenrecord -N",
			},
		},
	}
end
