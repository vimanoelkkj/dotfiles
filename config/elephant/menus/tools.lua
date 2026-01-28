Name = "tools"
NamePretty = "Ferramentas"
FixedOrder = true
HideFromProviderlist = true
Icon = ""
Parent = "menu"

function GetEntries()
	return {
		{
			Text = "OCR",
			Icon = "",
			Actions = {
				["OCR"] = [[grim -g "$(slurp)" - | tesseract stdin stdout -l eng | wl-copy]],
			},
		},
		{
			Text = "Baixador de videos",
			Icon = "",
			Actions = {
				["download-video"] = "ghostty --class=local.floating -e media-download",
			},
		},
		{
			Text = "Transcritor",
			Icon = "",
			Actions = {
				["transcode"] = "walker --theme menus -m menus:transcode -N",
			},
		},
		{
			Text = "ISO para usb",
			Icon = "",
			Actions = {
				["write-iso"] = "ghostty --class=local.floating -e write-iso",
			},
		},
		{
			Text = "Backups",
			Icon = "",
			Actions = {
				["backups"] = "walker --theme menus -m menus:backups -N",
			},
		},
		{
			Text = "Adicionar um webapp",
			Icon = "",
			Actions = {
				["webapp-install"] = "ghostty --class=local.floating -e webapp-install",
			},
		},
	}
end
