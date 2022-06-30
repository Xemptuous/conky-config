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

  own_window = true,
  own_window_argb_value = 0,
  own_window_argb_visual = true,
  own_window_class = 'conky-semi',
  own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
  own_window_type = 'desktop',
  xinerama_head = 0,
  border_inner_margin = 0,
  border_width = 0, 
  minimum_height = 165,
  maximum_height = 165,

  minimum_width = 150,
  maximum_width = 150,

  alignment = 'top_middle',
  gap_x = 0,
  gap_y = 200,

  draw_shades = false,
  draw_outline = false,
  draw_borders = false,
  draw_graph_borders = true,

  use_xft = true,
  font = 'Montserrat Regular:size=10',
  xftalpha = 1,
  use_spacer = right,
  uppercase = false,

  pad_percents = 2,

  default_color = 'AAAAAA',
  default_shade_color = '161616',
  default_outline_color = '161616',
};


conky.text = [[
${voffset 20}${alignc}${color ffffff}${font Roboto Mono Nerd:size=20}${time %H:%M:%S}${font}${color}
${alignc}${voffset 5}${color ffffff}${font Montserrat Light:size=10}${time %A %d %B %Y}${font}
${voffset 5}${alignc}${font Roboto Mono Nerd Font:size=60}
]];
