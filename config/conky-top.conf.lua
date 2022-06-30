conky.config ={
  -- CONKY SETTINGS
  background = true,
  update_interval = 1,
  total_run_times = 0,
  
  cpu_avg_samples = 2,
  net_avg_samples = 2,
  
  override_utf8_locale = true,
  
  double_buffer = true,
  no_buffers = true,
  short_units = true,
  
  text_buffer_size = 512,

  own_window = true,
  own_window_class = 'conky',
  own_window_argb_visual = true,
  own_window_argb_value = 100,
  own_window_colour = '#000000',
  own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
  own_window_transparent = false,
  own_window_type = 'panel',

  border_inner_margin = 0,
  border_width = 0, 

  minimum_height = 20,
  maximum_height = 20,

  minimum_width = 1920,
  maximum_width = 1920,

  alignment = 'top_left',
  gap_x = 0,
  gap_y = 0,

  draw_shades = false,
  draw_outline = false,
  draw_borders = true,

  use_xft = true,
  font = 'Roboto Mono Nerd Font:size=10',
  xftalpha = 0.2,
  uppercase = false,
  pad_percents = 2,

  default_color = 'AAAAAA',
  default_shade_color = '161616',
  default_outline_color = '161616',
};


conky.text = [[
${font Roboto Mono Nerd Font:size=12}${color 2D90FF}${voffset -1} ${font}${voffset -1} CPU: ${goto 180}$cpu% ${goto 70}${voffset 1}${color 00374a}${cpugraph 16, 100 00ff00 ff0000 -t}${voffset -1}   ${color FF00BF}${font Roboto Mono Nerd Font:size=12}${voffset -3}${goto 270}${voffset 2}${font}${voffset -4} $mem ($memperc%)   ${voffset 4}${voffset 9}${goto 270}${color 63004a}${membar 4,110}${voffset -10}${color BFFF00}  ${font Roboto Mono Nerd Font:size=12}${voffset -1}${goto 370}${color F89B29} ${goto 440}${font}${voffset -1} DL: ${goto 595}${downspeed enp70s0} ${voffset 1}${color 40280a}${goto 490}${downspeedgraph enp70s0 16,100 00ff00 ff0000 2500000 -t}${voffset -1}  ${color F89B29}${goto 670}UL: ${goto 806}${upspeed enp70s0} ${voffset 1}${color 40280a}${goto 700}${upspeedgraph enp70s0 16,100 00ff00 ff0000 250000 -t}${voffset -1}${font Roboto Mono Nerd Font:size=11}${voffset -1}${color FFFFFF}${goto 927}${voffset 2}${time %H:%M:%S}${voffset 9}${goto 1080}${color 3b4f00}${voffset -1}${fs_bar 4,60 /root}${voffset 1}${voffset -11}${color BFFF00}${goto 1080}${voffset -2}${font}${voffset -1} ${fs_free /root}     ${font Roboto Mono Nerd Font:size=12}${voffset -1}${color 8bba00}${font}${color BFFF00}${voffset -1} ${fs_free /home}${voffset 10}${goto 1182}${color 3b4f00}${voffset 2}${fs_bar 4,60 /home}${voffset 1}${voffset -10}  ${color BFFF00}${goto 1300}R: ${goto 1427}${diskio_read}${goto 1320}${voffset 1}${color 304000}${diskiograph_read  16,100 00ff00 ff0000 750 -t}${voffset -1} ${goto 1500}${color BFFF00}W: ${goto 1627}${diskio_write}${goto 1520}${voffset 1}${color 304000}${diskiograph_write  16,100 00ff00 ff0000 1000 -t}${voffset -1}${alignr}${color ffffff}${time %a %B %d }    ${battery_percent BAT1}%
]];
