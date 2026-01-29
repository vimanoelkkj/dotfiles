Name = "backups"
NamePretty = "Backups"
FixedOrder = true
HideFromProviderlist = true
Icon = ""
Parent = "tools"

function GetEntries()
	return {
		{
			Text = "Arquivos de backup",
			Icon = "",
			Actions = {
				["backup-files"] = "ghostty --class=local.floating -e backup-files",
			},
		},
		{
			Text = "Restaurar backup",
			Icon = "",
			Actions = {
				["backup-restore"] = "ghostty --class=local.floating -e backup-restore",
			},
		},
	}
end
