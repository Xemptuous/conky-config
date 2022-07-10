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
  
  text_buffer_size = 32768,
  
  -- CONKY: WINDOW SPECIFICATIONS
  own_window = true,
  own_window_argb_value = 150,
  own_window_argb_visual = true,
  own_window_class = 'conky',
  own_window_colour = '#000000',
  own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
  -- own_window_transparent = false,
  own_window_type = 'panel',
  -- own_window_type = 'desktop',
  xinerama_head = 3,
  border_inner_margin = 6,
  border_width = 5, 
  top_name_width = 11,

  minimum_height = 1020,
  minimum_width = 280,
  maximum_width = 280,

  alignment = 'top_right',
  gap_x = 10,
  gap_y = 10,

  -- GRAPHICS SETTINGS
  draw_shades = false,
  draw_outline = false,
  draw_borders = false,
  draw_graph_borders = true,
  -- draw_graph_borders = false,

  -- TEXT SETTINGS
  use_xft = true,
  font = 'Montserrat Regular:size=10',
  xftalpha = 0.2,

  uppercase = false,

  -- Pad percentages to this many decimals (0 = no padding)
  pad_percents = 2,

  -- COLOUR SETTINGS
  default_color = 'AAAAAA',
  default_shade_color = '161616',
  -- default_outline_color = '161616',
  default_outline_color = '161616',
  color1 = '999999'
};


conky.text = [[
${alignc}${color ffffff}${font Montserrat Bold:size=20}${time %H:%M:%S}${font}${color}${alignc}
${voffset -10}
${alignc}${color ffffff}${font Montserrat Light:size=10}${time %A %d %B %Y}${font}${alignc}
${color ffffff}${hr 2}${color} 
${voffset -6} 
${font Montserrat Light:size=8}${color ffffff}Uptime:${font} ${alignr}$uptime_short
${font Montserrat Light:size=8}${color ffffff}Distro:${font} ${alignr}${execi 999999 lsb_release -ds}
${font Montserrat Light:size=8}${color ffffff}Kernel:${font} ${alignr}$kernel ${voffset 10}
${font :size=11}${color DeepSkyBlue1}CPU ${alignr}${font Montserrat Light:size=9}$cpu%
${voffset -35}${alignc}${font Montserrat Light:size=18}__________________
${voffset 2}${color 003242}${cpugraph 100,0 003242 00bfff -l}
${voffset -20}${color}${font}${color DeepSkyBlue1}${alignc}Intel i7-8750 12-Core @ 2.6 Ghz${color}${font}
${voffset -15}
${voffset -25}${color DeepSkyBlue1}_____${alignr}_____${voffset 15}
${font Montserrat Light:size=9}${color DeepSkyBlue1}01 - 04:${color DeepSkyBlue1}${font} ${goto 110}${cpu cpu1}% ${goto 160}${cpu cpu2 }% ${goto 210}${cpu cpu3 }% ${goto 260}${cpu cpu4 }%
${font Montserrat Light:size=9}${color DeepSkyBlue1}05 - 08:${color DeepSkyBlue1}${font} ${goto 110}${cpu cpu5}% ${goto 160}${cpu cpu6 }% ${goto 210}${cpu cpu7 }% ${goto 260}${cpu cpu8 }%
${font Montserrat Light:size=9}${color DeepSkyBlue1}09 - 12:${color DeepSkyBlue1}${font} ${goto 110}${cpu cpu9}% ${goto 160}${cpu cpu10}% ${goto 210}${cpu cpu11}% ${goto 260}${cpu cpu12}%
${voffset 5}
${font :size=11}${color FF00BF}RAM ${hr 2}${color}${voffset 2}
$font${color FF00BF}$mem / $memmax $alignr ${color FF00BF}$memperc%
${color FF00BF}${membar}
${color 4d0039}${memgraph 50,0 4d0039 FF00BF}
${voffset 15}${font :size=11}${color BFFF00}SSD ${hr 2}${color}
${color1}${font Montserrat Regular:size=10}Free: ${color BFFF00}${font Montserrat Regular:size=9}${fs_free /} ${color1}(${fs_free_perc /}%)${color1}${goto 170}${color}${font Montserrat Regular:size=10}Used: ${color BFFF00}${font Montserrat Regular:size=9}${goto 210}${fs_used /} ${color1}${font Montserrat Regular:size=9}(${fs_used_perc /}%)
${color BFFF00}${fs_bar /}
${voffset 2}${font Montserrat Light:size=8}${color1}READ: ${color}${font Montserrat Light:size=9}${alignr}${color BFFF00}${diskio_read}${voffset 5}
${voffset -10}${color 394d00}${diskiograph_read  30,280 243D00 BFFF00 750}${color}
${voffset -5}${font Montserrat Light:size=8}${color1}WRITE:${color}${font Montserrat Light:size=9}${alignr}${color BFFF00}${diskio_write}${voffset 5}
${voffset -10}${color 394d00}${diskiograph_write 30,280 243D00 BFFF00 750}${color}
${voffset 15}${font :size=11}${color F89B29}Network ${hr 2}${color}
${font :size=9}${color1}D/L:${font :size=9}${color F89B29}${alignc -10}${downspeed enp70s0}${color1}${goto 155}U/L:${alignr}${font :size=9}${color F89B29}${upspeed enp70s0}
${color 4a2a02}${downspeedgraph enp70s0 50,135 381F00 F89B29}${alignr}${upspeedgraph enp70s0 50,135 241400 F89B29}
${voffset 10}${font :size=11}${color}Processes ${color}${hr 2}${color}
${voffset -15}
${font Montserrat Light:size=9}${color1}APP NAME: ${goto 120}PID:${goto 186}RAM: ${goto 254}CPU: ${color}${font}
${voffset -15}
${font Montserrat Light:size=9}${color1}${top_mem name 1} ${goto 110}${font Montserrat Light:size=8}${top_mem pid 1}${color} ${goto 180}${top_mem mem 1} % ${goto 245}${top_mem cpu 1} %${voffset 5}
${font Montserrat Light:size=9}${color1}${top_mem name 2} ${goto 110}${font Montserrat Light:size=8}${top_mem pid 2}${color} ${goto 180}${top_mem mem 2} % ${goto 245}${top_mem cpu 2} %${voffset 5}
${font Montserrat Light:size=9}${color1}${top_mem name 3} ${goto 110}${font Montserrat Light:size=8}${top_mem pid 3}${color} ${goto 180}${top_mem mem 3} % ${goto 245}${top_mem cpu 3} %${voffset 5}
${font Montserrat Light:size=9}${color1}${top_mem name 4} ${goto 110}${font Montserrat Light:size=8}${top_mem pid 4}${color} ${goto 180}${top_mem mem 4} % ${goto 245}${top_mem cpu 4} %${voffset 5}
${font Montserrat Light:size=9}${color1}${top_mem name 5} ${goto 110}${font Montserrat Light:size=8}${top_mem pid 5}${color} ${goto 180}${top_mem mem 5} % ${goto 245}${top_mem cpu 5} %${voffset 5}
${font Montserrat Light:size=9}${color1}${top_mem name 6} ${goto 110}${font Montserrat Light:size=8}${top_mem pid 6}${color} ${goto 180}${top_mem mem 6} % ${goto 245}${top_mem cpu 6} %${voffset 5}
${font Montserrat Light:size=9}${color1}${top_mem name 7} ${goto 110}${font Montserrat Light:size=8}${top_mem pid 7}${color} ${goto 180}${top_mem mem 7} % ${goto 245}${top_mem cpu 7} %${voffset 5}
${font Montserrat Light:size=9}${color1}${top_mem name 8} ${goto 110}${font Montserrat Light:size=8}${top_mem pid 8}${color} ${goto 180}${top_mem mem 8} % ${goto 245}${top_mem cpu 8} %${voffset 5}
${font Montserrat Light:size=9}${color1}${top_mem name 9} ${goto 110}${font Montserrat Light:size=8}${top_mem pid 9}${color} ${goto 180}${top_mem mem 9} % ${goto 245}${top_mem cpu 9} %${voffset 5}
${font Montserrat Light:size=9}${color1}${top_mem name 10} ${goto 110}${font Montserrat Light:size=8}${top_mem pid 10}${color} ${goto 180}${top_mem mem 10} % ${goto 245}${top_mem cpu 10} %
${voffset -5}
]];
