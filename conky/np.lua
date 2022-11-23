conky.config = {
	-- Run settings
	total_run_times = 0,
	update_interval = 0.5,

	-- Positioning
	alignment = "bottom_left",
	gap_x = 50,
	gap_y = 85,
	minimum_width = 1200,
	maximum_width = 1200,
	minimum_height = 200,
	xinerama_head = 1,

	-- Draw settings
	double_buffer = true,
	draw_shades = false,
	draw_blended = false,

	-- Compositor settings
	own_window = true,
	own_window_argb_visual = true,
	own_window_argb_value = 0,
	own_window_transparent = true,
	own_window_hints = "undecorated,below,sticky,skip_taskbar,skip_pager",
	own_window_type = "dock",

	-- Text settings
	uppercase = true,
	use_xft = true,
	override_utf8_locale = true,
}

conky.text = [[
${if_match "Playing" == "${exec cat ./data/status}"}
${color #fff}${font Gotham Book:pixelsize=18}NOW PLAYING:
${color #fff}${font Gotham Book:pixelsize=15}
${color #fff}${font Gotham:style=bold:pixelsize=44}           ${font Gotham:style=bold:pixelsize=46}${exec cat ./data/artist}
${color #fff}${font Gotham Book:pixelsize=44}           ${font Gotham Book:pixelsize=23}${exec cat ./data/title}
${endif}
\
${if_match "Playing" != "${exec cat ./data/status}"}
${color #fff}${font Gotham Book:pixelsize=80}${time %H:%M:%S}
${color #fff}${font Montserrat Light:pixelsize=35}${exec ./scripts/date.sh}
${endif}
]]
