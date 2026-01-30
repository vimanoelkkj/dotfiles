local M = {}

local dict = {
  pt_BR = {
    
    -- Sistema
    ["System"] = "Sistema",
    ["Power"] = "Energia",
    ["Lock"] = "Bloquear",
    ["Suspend"] = "Suspender",
    ["Relaunch"] = "Reiniciar sessão",
    ["Restart"] = "Reiniciar",
    ["Shutdown"] = "Desligar",
    
    -- Backup
    ["Backups"] = "Backups",
    ["Archive files"] = "Arquivar arquivos",
    ["Unpack archive"] = "Extrair arquivo",
    
    -- Captura
    ["Capture"] = "Captura",
    ["Screenshot"] = "Captura de tela",
    ["Record"] = "Gravador de tela",
    ["Screenrecord"] = "Gravação de tela",
    ["Region"] = "Região",
    ["Region + Audio"] = "Região + Áudio",
    ["Display"] = "Tela inteira",
    ["Display + Audio"] = "Tela inteira + Áudio",
    ["Display + Webcam"] = "Tela inteira + Webcam",
    ["Screenshots"] = "Capturas de tela",
    ["Area → Clipboard"] = "Área → Área de transferência",
    ["Area → File"] = "Área → Arquivo",
    ["Window → Clipboard"] = "Janela → Área de transferência",
    ["Window → File"] = "Janela → Arquivo",
    ["Fullscreen → Clipboard"] = "Tela inteira → Área de transferência",
    ["Fullscreen → File"] = "Tela inteira → Arquivo",

    -- Notifications
    ["Copied Area"] = "Área copiada",
    ["Saved Screenshot"] = "Captura de tela salva",
    ["Copied Window"] = "Janela copiada",
    ["Saved Window"] = "Janela salva",
    ["Copied Fullscreen"] = "Tela inteira copiada",
    ["Saved Fullscreen"] = "Tela inteira salva",
    
    -- Menu
    ["Menu"] = "Menu",
    ["Update"] = "Atualizar",
    ["Install package"] = "Instalar pacote",
    ["Remove package"] = "Remover pacote",
    ["Change themes"] = "Trocar temas",
    ["Next background"] = "Próximo plano de fundo",
    ["Capture"] = "Captura",
    ["Setup"] = "Configuração",
    ["Tools"] = "Ferramentas",
    ["Keybindings"] = "Atalhos de teclado",
    
    -- Temas
    ["Themes"] = "Temas",
    ["System theme"] = "Tema do sistema",
    ["Waybar theme"] = "Tema do Waybar",
    ["Fastfetch theme"] = "Tema do Fastfetch",
    ["Starship theme"] = "Tema do Starship",
    ["Cursor theme"] = "Tema do cursor",

    -- Ferramentas
    ["tools"] = "Ferramentas",
    ["OCR"] = "OCR",
    ["Download video"] = "Baixar vídeo",
    ["Transcode"] = "Transcodificar",
    ["ISO to usb"] = "ISO para USB",
    ["Backups"] = "Backups",
    ["Add a webapp"] = "Adicionar webapp",
    
    -- Transcodificar
    ["Transcode"] = "Transcodificar",
    ["Transcode video"] = "Transcodificar vídeo",
    ["Transcode image"] = "Transcodificar imagem",

  }
}

local lang = os.getenv("LANG") or "en_US"
local locale = lang:match("^[^%.]+")

function M._(text)
  return dict[lang] and dict[lang][text] or text
end

return M
