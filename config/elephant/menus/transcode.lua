local lang = os.getenv("LANG") or "en_US"
local is_pt = lang:match("^pt")

local function _(text)
    local translations = {
        ["Transcode video"] = "Transcodificar vídeo",
        ["Transcode image"] = "Transcodificar imagem",
    }
    return (is_pt and translations[text]) or text
end

Name = "transcode"
NamePretty = _("Transcode")
FixedOrder = true
HideFromProviderlist = true
Icon = ""
Parent = "tools"

function GetEntries()
    return {
        {
            Text = _("Transcode video"),
            Icon = "",
            Actions = {
                ["transcode-video"] = "ghostty --class=local.floating -e transcode-video",
            },
        },
        {
            Text = _("Transcode image"),
            Icon = "",
            Actions = {
                ["transcode-image"] = "ghostty --class=local.floating -e transcode-image",
            },
        },
    }
end
