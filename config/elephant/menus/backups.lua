local _ = require("menus.i18n")._

Name = "backups"
NamePretty = _("Backups")
FixedOrder = true
HideFromProviderlist = true
Icon = ""
Parent = "tools"

function GetEntries()
	return {
		{
			Text = _("Archive files"),
			Icon = "",
			Actions = {
				["backup-files"] = "ghostty --class=local.floating -e backup-files",
			},
		},
		{
			Text = _("Unpack archive"),
			Icon = "",
			Actions = {
				["backup-restore"] = "ghostty --class=local.floating -e backup-restore",
			},
		},
	}
end
