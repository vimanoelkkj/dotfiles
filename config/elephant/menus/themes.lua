local lang = os.getenv("LANG") or "en_US"
local is_pt = lang:match("^pt")

local function _(text)
    local translations = {
        ["System theme"] = "Tema do sistema",
        ["Waybar theme"] = "Tema do Waybar",
        ["Fastfetch theme"] = "Tema do Fastfetch",
        ["Starship theme"] = "Tema do Starship",
        ["Cursor theme"] = "Tema do cursor",
        ["Changing system theme"] = "Mudando tema do sistema",
        ["Changing Waybar theme"] = "Mudando tema do Waybar",
        ["Changing Fastfetch theme"] = "Mudando tema do Fastfetch",
        ["Changing Starship theme"] = "Mudando tema do Starship",
        ["Changing cursor theme"] = "Mudando tema do cursor",
    }
    return (is_pt and translations[text]) or text
end

Name = "themes"
NamePretty = _("Themes")
FixedOrder = true
HideFromProviderlist = true
Icon = "󰸌"
Parent = "menu"

function GetEntries()
    return {
        {
            Text = _("System theme"),
            Icon = "󰸌",
            Actions = {
                ["change-theme"] = "walker --theme menus -m menus:system-themes -N && notify-send '".. _("Changing system theme") .."'",
            },
        },
        {
            Text = _("Waybar theme"),
            Icon = "󰸌",
            Actions = {
                ["change-waybar"] = "walker --theme menus -m menus:waybar-themes -N && notify-send '".. _("Changing Waybar theme") .."'",
            },
        },
        {
            Text = _("Fastfetch theme"),
            Icon = "󰸌",
            Actions = {
                ["change-fastfetch"] = "walker --theme menus -m menus:fastfetch-themes -N && notify-send '".. _("Changing Fastfetch theme") .."'",
            },
        },
        {
            Text = _("Starship theme"),
            Icon = "󰸌",
            Actions = {
                ["change-starship"] = "walker --theme menus -m menus:starship-themes -N && notify-send '".. _("Changing Starship theme") .."'",
            },
        },
        {
            Text = _("Cursor theme"),
            Icon = "󰸌",
            Actions = {
                ["change-cursor"] = "walker --theme menus -m menus:cursor-themes -N && notify-send '".. _("Changing cursor theme") .."'",
            },
        },
    }
end
