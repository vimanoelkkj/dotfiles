Name = "themes"
NamePretty = "Temas"
FixedOrder = true
HideFromProviderlist = true
Icon = "󰸌"
Parent = "menu"

function GetEntries()
	return {
		{
			Text = "Tema do sistema",
			Icon = "󰸌",
			Actions = {
				["change-theme"] = "walker --theme menus -m menus:system-themes -N",
			},
		},
		{
			Text = "Tema da waybar",
			Icon = "󰸌",
			Actions = {
				["change-waybar"] = "walker --theme menus -m menus:waybar-themes -N",
			},
		},
		{
			Text = "Tema do fastfetch",
			Icon = "󰸌",
			Actions = {
				["change-fastfetch"] = "walker --theme menus -m menus:fastfetch-themes -N",
			},
		},
		{
			Text = "Tema do starship",
			Icon = "󰸌",
			Actions = {
				["change-starship"] = "walker --theme menus -m menus:starship-themes -N",
			},
		},
		{
			Text = "Tema do cursor",
			Icon = "󰸌",
			Actions = {
				["change-cursor"] = "walker --theme menus -m menus:cursor-themes -N",
			},
		},
	}
end
