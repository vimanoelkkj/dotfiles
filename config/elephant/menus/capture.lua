local lang = os.getenv("LANG") or "en_US"
local is_pt = lang:match("^pt")

local function _(text)
    local translations = {
        ["Screenshot"] = "Captura de tela",
        ["Record"] = "Gravar",
    }
    return (is_pt and translations[text]) or text
end

Name = "capture"
NamePretty = _("Capture")
FixedOrder = true
HideFromProviderlist = true
Icon = ""
Parent = "menu"

function GetEntries()
    return {
        {
            Text = _("Screenshot"),
            Icon = "",
            Actions = {
                ["screenshot"] = "walker -t menus -m menus:screenshots -N",
            },
        },
        {
            Text = _("Record"),
            Icon = "",
            Actions = {
                ["record"] = "walker -t menus -m menus:screenrecord -N",
            },
        },
    }
end
