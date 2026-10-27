---@module 'hl'

hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
})

hl.env("XCURSOR_SIZE", 24)
hl.env("QT_STYLE_OVERRIDE", "breeze")
hl.env("GTK_IM_MODULE", "kime")
hl.env("QT_IM_MODULE", "kime")
hl.env("XMODIFIERS", "@im=kime")
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("GBM_BACKEND", "nvidia-drm")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("WLR_NO_HARDWARE_CURSORS", 1)

hl.config({
    input = {
        kb_layout = "us",
        kb_variant = "colemak",
        follow_mouse = 1,
        touchpad = {
            natural_scroll = true,
        },
        sensitivity = 0,
    },
    general = {
        gaps_in = 5,
        gaps_out = 5,
        border_size = 2,
        layout = "dwindle",
        allow_tearing = false,
        col = {
            active_border = { colors = { "rgba(33ccffee)", "rgba(00ff99ee)" }, angle = 45 },
            inactive_border = "rgba(595959aa)",
        },
    },
    decoration = {
        rounding = 10,
        blur = {
            enabled = true,
            size = 3,
            passes = 1,
            vibrancy = 0.1696,
        },
        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)",
        },
    },
    group = {
        groupbar = {
            font_family = "Noto Sans CJK KR",
            font_size = 18,
            text_color = "rgb(333333)",
        },
    },
    animations = {
        enabled = true,
    },
    dwindle = {
        preserve_split = true,
    },
    master = {
        new_status = "master",
    },
    xwayland = {
        force_zero_scaling = true,
    },
    misc = {
        force_default_wallpaper = 0,
    },
})

hl.window_rule({
    name  = "idleinhibit-fullscreen",
    match = {
        fullscreen = true,
    },
    idle_inhibit = "always",
})

hl.window_rule({
    name  = "idleinhibit-youtube",
    match = {
        title = ".*- YouTube — Mozilla Firefox$",
    },
    idle_inhibit = "focus",
})

hl.window_rule({
    name  = "kakaotalk",
    match = {
        title = "^KakaoTalk.*Wnd$",
    },
    opacity = 0,
    min_size = { 0, 0 },
    max_size = { 0, 0 },
})

hl.window_rule({
    name  = "warp",
    match = {
        class = "^dev\\.warp\\.Warp$",
    },
    tile = true,
})

hl.layer_rule({
    match = { namespace = "vicinae" },
    name = "vicinae-blur",
    blur = true,
    ignore_alpha = 0,
})

local mainMod = "SUPER"
hl.bind(mainMod .. " + " .. "return", hl.dsp.exec_cmd("alacritty"))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "Q", hl.dsp.window.close())
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "E", hl.dsp.exit())
hl.bind(mainMod .. " + " .. "E", hl.dsp.exec_cmd("emote"))
hl.bind(mainMod .. " + " .. "D", hl.dsp.exec_cmd("vicinae toggle"))
hl.bind(mainMod .. " + " .. "P", hl.dsp.window.float())
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "space", hl.dsp.window.pin())
hl.bind(mainMod .. " + " .. "R", hl.dsp.exec_cmd("wofi --show drun"))
hl.bind(mainMod .. " + " .. "J", hl.dsp.layout("togglesplit"))
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("~/.config/hypr/scripts/brightness --inc"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("~/.config/hypr/scripts/brightness --dec"))
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("~/.config/hypr/scripts/volume --inc"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("~/.config/hypr/scripts/volume --dec"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("~/.config/hypr/scripts/volume --toggle"))
hl.bind(mainMod .. " + " .. "left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + " .. "right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + " .. "up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + " .. "down", hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "left", hl.dsp.group.next({ forward = false }))
hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "right", hl.dsp.group.next())
hl.bind(mainMod .. " + " .. 1, hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + " .. 2, hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + " .. 3, hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + " .. 4, hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + " .. 5, hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. " + " .. 6, hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. " + " .. 7, hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. " + " .. 8, hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. " + " .. 9, hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. " + " .. 0, hl.dsp.focus({ workspace = 10 }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 1, hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 2, hl.dsp.window.move({ workspace = 2 }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 3, hl.dsp.window.move({ workspace = 3 }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 4, hl.dsp.window.move({ workspace = 4 }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 5, hl.dsp.window.move({ workspace = 5 }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 6, hl.dsp.window.move({ workspace = 6 }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 7, hl.dsp.window.move({ workspace = 7 }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 8, hl.dsp.window.move({ workspace = 8 }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 9, hl.dsp.window.move({ workspace = 9 }))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 0, hl.dsp.window.move({ workspace = 10 }))
hl.bind(mainMod .. " + " .. "S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "S", hl.dsp.window.move({ workspace = "special:magic" }))
hl.bind(mainMod .. " + " .. "mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + " .. "mouse_up", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("ALT + SHIFT" .. " + " .. 3, hl.dsp.exec_cmd("grimshot --notify copy active"))
hl.bind("ALT + SHIFT" .. " + " .. 4, hl.dsp.exec_cmd("grimshot --notify copy area"))
hl.bind("ALT + SHIFT" .. " + " .. 5, hl.dsp.exec_cmd("grimshot --notify copy window"))
hl.bind("CTRL + SHIFT" .. " + " .. 3, hl.dsp.exec_cmd("grimshot --notify save active"))
hl.bind("CTRL + SHIFT" .. " + " .. 4, hl.dsp.exec_cmd("grimshot --notify save area"))
hl.bind("CTRL + SHIFT" .. " + " .. 5, hl.dsp.exec_cmd("grimshot --notify save window"))
hl.bind(mainMod .. " + " .. "mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + " .. "mouse:273", hl.dsp.window.resize(), { mouse = true })
hl.bind(mainMod .. " + " .. "W", hl.dsp.group.toggle())

-- Autostart
hl.on("hyprland.start", function()
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("~/.config/hypr/scripts/sleep")
    hl.exec_cmd("eww daemon")
    hl.exec_cmd("~/.config/eww/launch_bar")
    hl.exec_cmd("stalonetray")
    hl.exec_cmd("vicinae server")
    hl.exec_cmd("/usr/lib/mate-polkit/polkit-mate-authentication-agent-1")
    hl.exec_cmd("kime-wayland")
    hl.exec_cmd("dunst")
    hl.exec_cmd("XDG_MENU_PREFIX=plasma- kbuildsycoca6")
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
end)

-- Exec (run every reload)
hl.on("config.reloaded", function()
    hl.exec_cmd("notify-send Hyprland Config Loaded")
end)
