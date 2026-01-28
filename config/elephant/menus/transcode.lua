Name = "transcode"
NamePretty = "Transcritor"
FixedOrder = true
HideFromProviderlist = true
Icon = ""
Parent = "tools"

function GetEntries()
	return {
		{
			Text = "Transcrever video",
			Icon = "",
			Actions = {
				["transcode-video"] = "ghostty --class=local.floating -e transcode-video",
			},
		},
		{
			Text = "Transcrever imagem",
			Icon = "",
			Actions = {
				["transcode-image"] = "ghostty --class=local.floating -e transcode-image",
			},
		},
	}
end
