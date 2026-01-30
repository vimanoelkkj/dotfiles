local lang = os.getenv("LANG") or "en_US"
local is_pt = lang:match("^pt")

local function _(text)
    local translations = {
        ["Archive files"] = "Arquivar arquivos",
        ["Unpack archive"] = "Extrair arquivo",
    }
    return (is_pt and translations[text]) or text
end

Name = "backups"
NamePretty = _("Backups")
FixedOrder = true
HideFromProviderlist = true
Icon = ""
Parent = "tools"

function GetEntries()
	return {
		{
			Text = _("Archive files"),
			Icon = "",
			Actions = {
				["backup-files"] = "ghostty --class=local.floating -e backup-files",
			},
		},
		{
			Text = _("Unpack archive"),
			Icon = "",
			Actions = {
				["backup-restore"] = "ghostty --class=local.floating -e backup-restore",
			},
		},
	}
end
