local lang = os.getenv("LANG") or "en_US"
local is_pt = lang:match("^pt")

local function _(text)
    local translations = {
        ["OCR"] = "OCR",
        ["Ollama"] = "Ollama",
        ["Download video"] = "Baixar vídeo",
        ["Transcode"] = "Transcodificar",
        ["ISO to usb"] = "ISO para USB",
        ["Backups"] = "Backups",
        ["Add a webapp"] = "Adicionar uma webapp",
    }
    return (is_pt and translations[text]) or text
end

Name = "tools"
NamePretty = _("Tools")
FixedOrder = true
HideFromProviderlist = true
Icon = ""
Parent = "menu"

function GetEntries()
    return {
        {
            Text = _("OCR"),
            Icon = "",
            Actions = {
                ["OCR"] = [[grim -g "$(slurp)" - | tesseract stdin stdout -l eng | wl-copy]],
            },
        },
        {
            Text = _("Download video"),
            Icon = "",
            Actions = {
                ["download-video"] = "ghostty --class=local.floating -e media-download",
            },
        },
        {
            Text = _("Transcode"),
            Icon = "",
            Actions = {
                ["transcode"] = "walker --theme menus -m menus:transcode -N",
            },
        },
        {
            Text = _("ISO to usb"),
            Icon = "",
            Actions = {
                ["write-iso"] = "ghostty --class=local.floating -e write-iso",
            },
        },
        {
            Text = _("Backups"),
            Icon = "",
            Actions = {
                ["backups"] = "walker --theme menus -m menus:backups -N",
            },
        },
        {
            Text = _("Add a webapp"),
            Icon = "",
            Actions = {
                ["webapp-install"] = "ghostty --class=local.floating -e webapp-install",
            },
        },
    }
end

