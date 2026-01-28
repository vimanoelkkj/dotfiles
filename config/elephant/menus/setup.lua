Name = "setup"
NamePretty = "Configurar"
FixedOrder = true
HideFromProviderlist = true
Icon = "󰉉"
Parent = "menu"

function GetEntries()
	return {
		{
			Text = "Impressão digital",
  			Icon = "",
			Actions = {
				["fingerprint"] = "ghostty --class=local.floating -e fingerprint-setup",
			},
		},
	}
end
