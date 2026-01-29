Name = "system"
NamePretty = "Sistema"
FixedOrder = true
HideFromProviderlist = true
Icon = ""
Parent = "menu"

function GetEntries()
	return {
		{
			Text = "Bloquear o SO",
			Icon = "",
			Actions = {
				["lock"] = "pidof hyprlock || hyprlock &",
			},
		},
		{
			Text = "Suspender o SO",
			Icon = "󰤄",
			Actions = {
				["suspend"] = "systemctl suspend",
			},
		},
		{
			Text = "Reiniciar o shell",
			Icon = "",
			Actions = {
				["relaunch"] = "uwsm stop",
			},
		},
		{
			Text = "Reiniciar o SO",
			Icon = "󰜉",
			Actions = {
				["restart"] = "systemctl reboot",
			},
		},
		{
			Text = "Desligar o SO",
			Icon = "󰐥",
			Actions = {
				["shutdown"] = "systemctl poweroff",
			},
		},
	}
end
