local _ = require("menus.i18n")._

Name = "transcode"
NamePretty = _("Transcode")
FixedOrder = true
HideFromProviderlist = true
Icon = ""
Parent = "tools"

function GetEntries()
	return {
		{
			Text = _("Transcode video"),
			Icon = "",
			Actions = {
				["transcode-video"] = "ghostty --class=local.floating -e transcode-video",
			},
		},
		{
			Text = _("Transcode image"),
			Icon = "",
			Actions = {
				["transcode-image"] = "ghostty --class=local.floating -e transcode-image",
			},
		},
	}
end
