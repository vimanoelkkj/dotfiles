Name = "system"
NamePretty = "Sistema"
FixedOrder = true
HideFromProviderlist = true
Icon = ""
Parent = "menu"

function GetEntries()
	return {
		{
			Text = "Bloquear",
			Icon = "",
			Actions = {
				["lock"] = "pidof hyprlock || hyprlock &",
			},
		},
		{
			Text = "Suspender",
			Icon = "󰤄",
			Actions = {
				["suspend"] = "systemctl suspend",
			},
		},
		{
			Text = "Reiniciar o gerenciador de janelas",
			Icon = "",
			Actions = {
				["relaunch"] = "uwsm stop",
			},
		},
		{
			Text = "Reiniciar o PC",
			Icon = "󰜉",
			Actions = {
				["restart"] = "systemctl reboot",
			},
		},
		{
			Text = "Desligar o PC",
			Icon = "󰐥",
			Actions = {
				["shutdown"] = "systemctl poweroff",
			},
		},
	}
end
