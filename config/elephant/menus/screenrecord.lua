Name = "screenrecord"
NamePretty = "Gravador de tela"
FixedOrder = true
HideFromProviderlist = true
Icon = ""
Parent = "capture"

function GetEntries()
	return {
		{
			Text = "Região",
			Actions = {
				["region"] = "screenrecord",
			},
		},
		{
			Text = "Região + Áudio",
			Actions = {
				["region_audio"] = "screenrecord region --with-audio",
			},
		},
		{
			Text = "Tela",
			Actions = {
				["display"] = "screenrecord output",
			},
		},
		{
			Text = "Tela + Áudio",
			Actions = {
				["display_audio"] = "screenrecord output --with-audio",
			},
		},
		{
			Text = "Tela + Webcam",
			Actions = {
				["display_webcam"] = "screenrecord output --with-audio --with-webcam",
			},
		},
	}
end
