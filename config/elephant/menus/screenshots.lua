local _ = require("menus.i18n")._

Name = "screenshots"
NamePretty = _("Screenshots")
FixedOrder = true
HideFromProviderlist = true
Icon = ""
Parent = "capture"

function GetEntries()
	return {
		{
			Text = _("Area → Clipboard"),
			Actions = {
				["area_clipboard"] = "grim -g \"$(slurp)\" - | wl-copy && notify-send \"" .. _("Copied Area") .. "\"",
			},
		},
		{
			Text = _("Area → File"),
			Actions = {
				["area_file"] = "grim -g \"$(slurp)\" ~/Pictures/$(date +%Y-%m-%d_%H-%M-%S).png && notify-send \"" .. _("Saved Screenshot") .. "\"",
			},
		},
		{
			Text = _("Window → Clipboard"),
			Actions = {
				["window_clipboard"] = "grim -g \"$(hyprctl -j clients | jq -r '.[] | \"\\(.at[0]),\\(.at[1]) \\(.size[0])x\\(.size[1])\"' | slurp -r)\" - | wl-copy && notify-send \"" .. _("Copied Window") .. "\"",
			},
		},
		{
			Text = _("Window → File"),
			Actions = {
				["window_file"] = "grim -g \"$(hyprctl -j clients | jq -r '.[] | \"\\(.at[0]),\\(.at[1]) \\(.size[0])x\\(.size[1])\"' | slurp -r)\" ~/Pictures/$(date +%Y-%m-%d_%H-%M-%S).png && notify-send \"" .. _("Saved Window") .. "\"",
			},
		},
		{
			Text = _("Fullscreen → Clipboard"),
			Actions = {
				["fullscreen_clipboard"] = "grim - | wl-copy && notify-send \"" .. _("Copied Fullscreen") .. "\"",
			},
		},
		{
			Text = _("Fullscreen → File"),
			Actions = {
				["fullscreen_file"] = "grim ~/Pictures/$(date +%Y-%m-%d_%H-%M-%S).png && notify-send \"" .. _("Saved Fullscreen") .. "\"",
			},
		},
	}
end
