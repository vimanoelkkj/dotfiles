Name = "screenrecord"
NamePretty = "Gravador de tela"
FixedOrder = true
HideFromProviderlist = true
Icon = ""
Parent = "capture"

function GetEntries()
	return {
		{
			Text = "Área da tela",
			Actions = {
				["region"] = "screenrecord",
			},
		},
		{
			Text = "Área da tela + Som",
			Actions = {
				["region_audio"] = "screenrecord region --with-audio",
			},
		},
		{
			Text = "Tela inteira",
			Actions = {
				["display"] = "screenrecord output",
			},
		},
		{
			Text = "Tela inteira + Som",
			Actions = {
				["display_audio"] = "screenrecord output --with-audio",
			},
		},
		{
			Text = "Tela inteira + Webcam",
			Actions = {
				["display_webcam"] = "screenrecord output --with-audio --with-webcam",
			},
		},
	}
end
