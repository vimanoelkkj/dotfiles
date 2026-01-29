Name = "menu"
NamePretty = "Menu"
FixedOrder = true
HideFromProviderlist = true
Description = "Menu"

function GetEntries()
	return {
		{
			Text = "Atualizar SO",
			Icon = "",
			Actions = {
				["update"] = "ghostty --class=local.floating -e update-perform",
			},
		},
		{
			Text = "Instalar um software",
			Icon = "󰣇",
			Actions = {
				["manage-pkg"] = "ghostty --class=local.floating -e pkg-install",
			},
		},
		{
			Text = "Remover um software",
			Icon = "󰭌",
			Actions = {
				["manage-pkg"] = "ghostty --class=local.floating -e pkg-remove",
			},
		},
		{
			Text = "Mudar tema",
			Icon = "󰸌",
			Actions = {
				["change-themes"] = "walker -t menus -m menus:themes -N",
			},
		},
		{
			Text = "Capturar...",
			Icon = "",
			Actions = {
				["capture"] = "walker -t menus -m menus:capture -N",
			},
		},
		{
			Text = "Ferramentas",
			Icon = "",
			Actions = {
				["tools"] = "walker -t menus -m menus:tools -N",
			},
		},
		{
			Text = "Teclas de atalho",
			Icon = "",
			Actions = {
				["keybindings"] = "walker -t menus -m menus:keybindings -N",
			},
		},
		{
			Text = "Sistema",
			Icon = "󰐥",
			Actions = {
				["system"] = "walker -t menus -m menus:system -N",
			},
		},
	}
end
