# 🐦‍⬛ Raven's SwayFX Theme
A SwayFX configuration theme, took me a while to make this.

# 🐦‍⬛ Showcase
todo

# ⚠️ Caveats
* Swayidle's default sleep script in `.config/sway/config` conflicts with waybar, it crashes the session and forces you to kill sway through another tty or terminal.
* Window title may increase height if it has unique unicodes or symbols like stars.

# 🐦‍⬛ Added/Changed Shortcuts
This is how I personally use the window manager, `$mod` is the Super key (or Win key) by default.
|Command|Shortcut|Description|
|-------|--------|-----------|
|Screenshot|$mod + Shift + S|Takes a screenshot, say cheese!|
|Restart Waybar|$mod + Shift + W|Kills and launches Waybar again.|
|Lock screen|$mod + Shift + P|Locks the screen.|
|Volume control|$mod + {f10,f11,f12}|In ascending order: mutes, lowers, and raises the volume.
|Fullscreen Popups|$mod + Shift + F|If popups don't show while on fullscreen, this may fix it.|

# 🐦‍⬛ Q&A
### Q1. How do I change the waybar colors?
A: I wrote the defined-colors in the waybar's `style.css` file at the very top, it uses RGB or RGBA.

### Q2.

### Q3. How do I enable swayidle script?
A: I don't know how to fix this issue, I assume it's related to IPC.\
Whenever I used my swaylock script through waybar, the swayidle script would conflict and cause my session to completely crash, due to swayidle not knowing that swaylock is already launched.

# 🐦‍⬛ Credits

[Gentoo Wiki - Sway](https://wiki.gentoo.org/wiki/Sway) - Made by lovely people, and thank you whoever wrote the screen sharing section.\
[Jeroen Knol on Medium](https://itnext.io/how-to-make-a-fancy-inverted-border-radius-in-css-5db048a53f95) - Gave me the idea for the inverted border radius hacky modules.

❤️🐦‍⬛ Thank you for using my config(s)!