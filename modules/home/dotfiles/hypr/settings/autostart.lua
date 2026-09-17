-- Apps to start automatically

-- WAYBAR 
hl.on("hyprland.start", function ()
  hl.exec_cmd("waybar")
end)

-- GUI AUTHENTICATION FOR PROGRAMS
hl.on("hyprland.start", function ()
    hl.exec_cmd("systemctl --user start hyprpolkitagent")
end)

-- WALLPAPER
hl.on("hyprland.start", function ()
    hl.exec_cmd("hyprpaper")
end)

-- Steam
hl.on("hyprland.start", function ()
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("env CEF_SINGLE_PROCESS=1 steam -silent -no-browser -skip-update-check -cef-disable-gpu -cef-disable-gpu-compositing")
end)

-- automount
hl.on("hyprland.start", function ()
    hl.exec_cmd("udiskie --automount --notify")
end)

hl.on("hyprland.start", function ()
    hl.exec_cmd("xrandr --output DP-2 --primary")
end)