Name = "capture"
NamePretty = "Capturar"
FixedOrder = true
HideFromProviderlist = true
Icon = ""
Parent = "menu"

function GetEntries()
	return {
		{
			Text = "Capturar a tela",
			Icon = "",
			Actions = {
				["screenshot"] = "walker -t menus -m menus:screenshots -N",
			},
		},
		{
			Text = "Gravar a tela",
			Icon = "",
			Actions = {
				["record"] = "walker -t menus -m menus:screenrecord -N",
			},
		},
	}
end
