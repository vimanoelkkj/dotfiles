local lang = os.getenv("LANG") or "en_US"
local is_pt = lang:match("^pt")

local function _(text)
    local translations = {
        ["Region"] = "Região",
        ["Region + Audio"] = "Região + Áudio",
        ["Display"] = "Tela",
        ["Display + Audio"] = "Tela + Áudio",
        ["Display + Webcam"] = "Tela + Webcam",
    }
    return (is_pt and translations[text]) or text
end

Name = "screenrecord"
NamePretty = _("Screenrecord")
FixedOrder = true
HideFromProviderlist = true
Icon = ""
Parent = "capture"

function GetEntries()
    return {
        {
            Text = _("Region"),
            Actions = {
                ["region"] = "screenrecord",
            },
        },
        {
            Text = _("Region + Audio"),
            Actions = {
                ["region_audio"] = "screenrecord region --with-audio",
            },
        },
        {
            Text = _("Display"),
            Actions = {
                ["display"] = "screenrecord output",
            },
        },
        {
            Text = _("Display + Audio"),
            Actions = {
                ["display_audio"] = "screenrecord output --with-audio",
            },
        },
        {
            Text = _("Display + Webcam"),
            Actions = {
                ["display_webcam"] = "screenrecord output --with-audio --with-webcam",
            },
        },
    }
end
